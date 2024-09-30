import 'package:flutter/foundation.dart';

@immutable
class Workout{
  final String id; 
  final String title;
  final String description;
  final bool isCompleted;

  const Workout({
    required this.id,
    required this.title,
    required this.description,
    this.isCompleted = false,
  });

  Workout copyWith({
    String? id,
    String? title,
    String? description,
    bool? isCompleted,
  }) {
    return Workout(
    id: id ?? this.id,
    title: title ?? this.title,
    description: description ?? this.description,
    isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  @override
  bool operator == (Object other) =>
    identical (this, other) ||
    other is Workout &&
    runtimeType == other.runtimeType &&
    id == other.id &&
    title == other.title &&
    description == other.description &&
    isCompleted == other.isCompleted;

  @override 
  int get hashCode => id. hashCode ^ title.hashCode ^ description.hashCode ^ isCompleted.hashCode;



}