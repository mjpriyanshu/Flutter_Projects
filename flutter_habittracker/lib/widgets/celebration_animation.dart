import 'package:flutter/material.dart';

class CelebrationAnimation extends StatefulWidget {
  final bool trigger;
  final Widget child;

  const CelebrationAnimation({
    super.key,
    required this.trigger,
    required this.child,
  });

  @override
  State<CelebrationAnimation> createState() => _CelebrationAnimationState();
}

class _CelebrationAnimationState extends State<CelebrationAnimation>
    with TickerProviderStateMixin {
  late AnimationController _confettiController;
  late AnimationController _bounceController;
  late Animation<double> _bounceAnimation;

  List<Particle> _particles = [];

  @override
  void initState() {
    super.initState();

    _confettiController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    _bounceController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    _bounceAnimation = Tween<double>(begin: 1.0, end: 1.3).animate(
      CurvedAnimation(parent: _bounceController, curve: Curves.elasticOut),
    );

    _confettiController.addListener(() {
      setState(() {
        _updateParticles();
      });
    });
  }

  @override
  void didUpdateWidget(CelebrationAnimation oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.trigger && !oldWidget.trigger) {
      _startCelebration();
    }
  }

  void _startCelebration() {
    _generateParticles();
    _confettiController.forward().then((_) {
      _confettiController.reset();
      _particles.clear();
    });

    _bounceController.forward().then((_) {
      _bounceController.reverse();
    });
  }

  void _generateParticles() {
    _particles.clear();
    final colors = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.yellow,
      Colors.purple,
      Colors.orange,
    ];

    for (int i = 0; i < 50; i++) {
      _particles.add(
        Particle(
          color: colors[i % colors.length],
          startX: 0.5,
          startY: 0.5,
          velocityX: (i % 2 == 0 ? 1 : -1) * (0.5 + (i % 3) * 0.3),
          velocityY: -1.0 - (i % 4) * 0.5,
          size: 4.0 + (i % 3) * 2.0,
        ),
      );
    }
  }

  void _updateParticles() {
    for (var particle in _particles) {
      particle.update();
    }
  }

  @override
  void dispose() {
    _confettiController.dispose();
    _bounceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedBuilder(
          animation: _bounceAnimation,
          builder: (context, child) {
            return Transform.scale(
              scale: _bounceAnimation.value,
              child: widget.child,
            );
          },
        ),
        if (_particles.isNotEmpty)
          Positioned.fill(
            child: CustomPaint(painter: ConfettiPainter(_particles)),
          ),
      ],
    );
  }
}

class Particle {
  final Color color;
  double x;
  double y;
  final double velocityX;
  double velocityY;
  final double size;
  double opacity = 1.0;

  Particle({
    required this.color,
    required double startX,
    required double startY,
    required this.velocityX,
    required this.velocityY,
    required this.size,
  }) : x = startX,
       y = startY;

  void update() {
    x += velocityX * 0.02;
    y += velocityY * 0.02;
    velocityY += 0.05; // gravity
    opacity -= 0.01;
    if (opacity < 0) opacity = 0;
  }
}

class ConfettiPainter extends CustomPainter {
  final List<Particle> particles;

  ConfettiPainter(this.particles);

  @override
  void paint(Canvas canvas, Size size) {
    for (var particle in particles) {
      if (particle.opacity > 0) {
        final paint = Paint()
          ..color = particle.color.withOpacity(particle.opacity)
          ..style = PaintingStyle.fill;

        canvas.drawCircle(
          Offset(particle.x * size.width, particle.y * size.height),
          particle.size,
          paint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(ConfettiPainter oldDelegate) => true;
}
