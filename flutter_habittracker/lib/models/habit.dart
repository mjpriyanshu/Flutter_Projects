import 'package:flutter/material.dart';

class Habit {
  final String id;
  final String name;
  final String description;
  final IconData icon;
  final Color color;
  final List<bool> completions; // 7 days of the week
  final int targetDays;

  Habit({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
    required this.color,
    required this.targetDays,
    List<bool>? completions,
  }) : completions = completions ?? List.filled(7, false);

  int get completedDays => completions.where((completed) => completed).length;

  double get progress => targetDays > 0 ? completedDays / targetDays : 0.0;

  bool get isCompleted => completedDays >= targetDays;

  Habit copyWith({
    String? id,
    String? name,
    String? description,
    IconData? icon,
    Color? color,
    List<bool>? completions,
    int? targetDays,
  }) {
    return Habit(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      icon: icon ?? this.icon,
      color: color ?? this.color,
      completions: completions ?? List.from(this.completions),
      targetDays: targetDays ?? this.targetDays,
    );
  }
}
