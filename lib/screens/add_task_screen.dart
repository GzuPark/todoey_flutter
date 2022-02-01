import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  TextEditingController taskTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF757575),
        border: Border.all(color: Color(0xFF757575), width: 0.0),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              controller: taskTextController,
            ),
            TextButton(
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent)),
              onPressed: () {
                context.read<TaskData>().addTask(taskTextController.text);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
