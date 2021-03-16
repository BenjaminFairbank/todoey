import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {

  final List<Task> tasks;
  final Function checkFunction;

  TasksList({@required this.tasks, @required this.checkFunction});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (bool checkBoxState) {
            checkFunction(index);
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
