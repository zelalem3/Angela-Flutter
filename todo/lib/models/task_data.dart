import 'package:flutter/material.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "Task 1"),
    Task(name: "Task 2"),
  ];
}
