

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddWorkoutScreen extends ConsumerStatefulWidget {
  const AddWorkoutScreen({super.key});

  @override
  ConsumerState<AddWorkoutScreen> createState() => _AddWorkoutScreenState();
}

class _AddWorkoutScreenState extends ConsumerState<AddWorkoutScreen>{
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void dispose(){
    _titleController.dispose();
    _descriptionController.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(
    title: const Text("Exercises"),
    ),
    body: Center(child:Form(key: _formKey, child: Column(children: [
      TextFormField(controller: _titleController, decoration: const InputDecoration(labelText: "Workout Name"),
      ),
      const SizedBox(height: 16,),
      TextFormField(controller: _descriptionController, decoration: const InputDecoration(labelText: "Workout Description"),
      ),
      const SizedBox(height: 16,),

      ElevatedButton(onPressed: (){
        //to do
      },  child: const Text("Add Task"))
    ],)
    )
    )
    );
  }

}