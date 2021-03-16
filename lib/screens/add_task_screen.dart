import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {

  final Function addTask;

  AddTaskScreen({@required this.addTask});

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {

  String taskText = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                taskText = value;
              },
            ),
            SizedBox(height: 10.0),
            FlatButton(
              onPressed: () {
                widget.addTask(taskText);
                Navigator.pop(context);
              },
              color: Colors.lightBlueAccent,
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
