import 'package:flutter/material.dart';
import 'package:tla4/screens/home_screen.dart';
import 'package:tla4/screens/add_workout_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      routes: {
        "/add_workout": (context) => const AddWorkoutScreen()
      },
    );
  }
}