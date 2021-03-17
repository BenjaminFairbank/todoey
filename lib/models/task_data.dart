import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {

  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask (String taskText) {
    _tasks.add(Task(name:taskText));
    notifyListeners();
  }

  void updateTask (Task task) {
    task.toggleDone();
    notifyListeners();
  }

}