import 'package:flutter/material.dart';

import '../core/mutations/add_task.dart';

class AddTaskWidget extends StatelessWidget {
  const AddTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final taskController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: taskController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Add new task',
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          FloatingActionButton(
            onPressed: () {
              AddTaskMutation(taskController.text);
              taskController.clear();
            },
            child: const Icon(Icons.done),
          )
        ],
      ),
    );
  }
}
