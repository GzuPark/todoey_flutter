import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList({
    required this.tasks,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          taskTile: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone!,
          checkboxCallback: (bool? checkboxState) {
            setState(() => widget.tasks[index].toggleDone());
          },
        );
      },
    );
  }
}
