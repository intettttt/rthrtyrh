import 'package:tla4/models/workout.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutNotifier extends StateNotifier<List<Workout>> {
  WorkoutNotifier() : super([]);

  void addWorkout(Workout workout) {
    state = [...state, workout];
  }

  void updateWorkout(Workout updatedWorkout) {
    state = [
      for (final workout in state)
        if (workout.id == updatedWorkout.id) updatedWorkout else workout
    ];
  }

  void deleteWorkout(String workoutId) {
    state = state.where((workout) => workout.id != workoutId).toList();
  }

  void toggleWorkoutCompletion(String workoutId) {
    state = [
      for (final workout in state)
        if (workout.id == workoutId)
          workout.copyWith(isCompleted: !workout.isCompleted)
        else
          workout
    ];
  }
}

final workoutProvider = StateNotifierProvider<WorkoutNotifier, List<Workout>>((ref) {
  return WorkoutNotifier();
});
