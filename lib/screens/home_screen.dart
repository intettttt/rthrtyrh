import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    title: const Text("Workout list"),
    ),
    body: Center(child: ElevatedButton(onPressed: () => Navigator.pushNamed(context, "/add_workout"), 
    child: const Text("Add Workout"))),
    );
  }

}

