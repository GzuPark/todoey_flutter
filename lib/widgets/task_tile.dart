import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTile;
  final bool isChecked;
  final Function(bool?) checkboxCallback;

  TaskTile({
    required this.taskTile,
    required this.isChecked,
    required this.checkboxCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTile,
        style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
