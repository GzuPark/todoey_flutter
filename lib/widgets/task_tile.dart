import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTile;
  final bool isChecked;
  final Function(bool?) checkboxCallback;
  final Function() longPressCallback;

  const TaskTile({
    Key? key,
    required this.taskTile,
    required this.isChecked,
    required this.checkboxCallback,
    required this.longPressCallback,
  }) : super(key: key);

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
