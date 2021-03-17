import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallback;
  final Function onLongPressCallback;

  TaskTile({this.onLongPressCallback, this.isChecked, this.taskTitle, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () => onLongPressCallback(),
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
