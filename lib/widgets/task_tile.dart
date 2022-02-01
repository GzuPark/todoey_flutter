import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/add_task_screen.dart';

class TaskTile extends StatelessWidget {
  final String taskTile;
  final bool isChecked;
  final Function(bool?) checkboxCallback;
  final Function() longPressCallback;

  TaskTile({
    required this.taskTile,
    required this.isChecked,
    required this.checkboxCallback,
    required this.longPressCallback,
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
      onLongPress: longPressCallback,
    );
  }
}
