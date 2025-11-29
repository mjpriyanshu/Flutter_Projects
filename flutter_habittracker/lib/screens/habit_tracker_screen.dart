import 'package:flutter/material.dart';
import '../models/habit.dart';
import '../widgets/habit_card.dart';
import 'habit_detail_screen.dart';

class HabitTrackerScreen extends StatefulWidget {
  const HabitTrackerScreen({super.key});

  @override
  State<HabitTrackerScreen> createState() => _HabitTrackerScreenState();
}

class _HabitTrackerScreenState extends State<HabitTrackerScreen>
    with TickerProviderStateMixin {
  late AnimationController _headerController;
  late Animation<double> _headerAnimation;

  List<Habit> habits = [];

  @override
  void initState() {
    super.initState();
    _initializeHabits();

    _headerController = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );

    _headerAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _headerController, curve: Curves.easeOutCubic),
    );

    _headerController.forward();
  }

  @override
  void dispose() {
    _headerController.dispose();
    super.dispose();
  }

  void _initializeHabits() {
    habits = [
      Habit(
        id: '1',
        name: 'Drink Water',
        description: 'Drink 8 glasses of water daily',
        icon: Icons.local_drink,
        color: Colors.blue,
        targetDays: 7,
        completions: [true, true, false, true, false, false, false],
      ),
      Habit(
        id: '2',
        name: 'Exercise',
        description: '30 minutes of physical activity',
        icon: Icons.fitness_center,
        color: Colors.orange,
        targetDays: 5,
        completions: [true, false, true, false, true, false, false],
      ),
      Habit(
        id: '3',
        name: 'Read Books',
        description: 'Read for at least 20 minutes',
        icon: Icons.book,
        color: Colors.green,
        targetDays: 6,
        completions: [true, true, true, false, false, false, false],
      ),
      Habit(
        id: '4',
        name: 'Meditate',
        description: '10 minutes of mindfulness',
        icon: Icons.self_improvement,
        color: Colors.purple,
        targetDays: 7,
        completions: [false, true, true, false, true, false, false],
      ),
      Habit(
        id: '5',
        name: 'Sleep Early',
        description: 'Get to bed before 10 PM',
        icon: Icons.bedtime,
        color: Colors.indigo,
        targetDays: 6,
        completions: [true, false, false, true, false, false, false],
      ),
    ];
  }

  void _toggleHabitCompletion(String habitId, int dayIndex) {
    setState(() {
      final habitIndex = habits.indexWhere((h) => h.id == habitId);
      if (habitIndex != -1) {
        habits[habitIndex].completions[dayIndex] =
            !habits[habitIndex].completions[dayIndex];
      }
    });
  }

  void _navigateToHabitDetail(Habit habit) {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            HabitDetailScreen(
              habit: habit,
              onToggleCompletion: _toggleHabitCompletion,
            ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
        transitionDuration: const Duration(milliseconds: 300),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: CustomScrollView(
        slivers: [
          _buildSliverAppBar(),
          _buildOverviewCards(),
          _buildHabitsList(),
          // Add spacing at the bottom for the floating action button
          SliverToBoxAdapter(child: const SizedBox(height: 80)),
        ],
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 16, right: 16),
        child: _buildFloatingActionButton(),
      ),
    );
  }

  Widget _buildSliverAppBar() {
    return SliverAppBar(
      expandedHeight: 200,
      floating: false,
      pinned: true,
      backgroundColor: Colors.white,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.only(left: 16, bottom: 20),
        title: FadeTransition(
          opacity: _headerAnimation,
          child: const Text(
            'Habit Tracker',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        background: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF667eea), Color(0xFF764ba2)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  FadeTransition(
                    opacity: _headerAnimation,
                    child: const Text(
                      'Build Better Habits',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  FadeTransition(
                    opacity: _headerAnimation,
                    child: const Text(
                      'Track your daily progress',
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOverviewCards() {
    final totalHabits = habits.length;
    final completedToday = habits.where((h) => h.completions[0]).length;
    final overallProgress = totalHabits > 0
        ? completedToday / totalHabits
        : 0.0;

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: FadeTransition(
          opacity: _headerAnimation,
          child: Row(
            children: [
              Expanded(
                child: _buildOverviewCard(
                  'Today\'s Progress',
                  '$completedToday/$totalHabits',
                  Icons.today,
                  Colors.blue,
                  overallProgress,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildOverviewCard(
                  'This Week',
                  '${_getWeeklyCompletedCount()}/${habits.length * 7}',
                  Icons.calendar_view_week,
                  Colors.green,
                  _getWeeklyProgress(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOverviewCard(
    String title,
    String value,
    IconData icon,
    Color color,
    double progress,
  ) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(color: color.withOpacity(0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: color, size: 24),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(height: 8),
          LinearProgressIndicator(
            value: progress,
            backgroundColor: color.withOpacity(0.2),
            valueColor: AlwaysStoppedAnimation<Color>(color),
          ),
        ],
      ),
    );
  }

  Widget _buildHabitsList() {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        final habit = habits[index];
        return HabitCard(
          habit: habit,
          onToggleCompletion: _toggleHabitCompletion,
          onTap: () => _navigateToHabitDetail(habit),
        );
      }, childCount: habits.length),
    );
  }

  Widget _buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        // Add new habit functionality
        _showAddHabitDialog();
      },
      backgroundColor: const Color(0xFF667eea),
      elevation: 4,
      child: const Icon(Icons.add, size: 28),
    );
  }

  void _showAddHabitDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add New Habit'),
        content: const Text('Habit creation feature coming soon!'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  int _getWeeklyCompletedCount() {
    int count = 0;
    for (final habit in habits) {
      count += habit.completions.where((completed) => completed).length;
    }
    return count;
  }

  double _getWeeklyProgress() {
    final totalPossible = habits.length * 7;
    if (totalPossible == 0) return 0.0;
    return _getWeeklyCompletedCount() / totalPossible;
  }
}
