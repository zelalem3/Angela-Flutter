import 'package:flutter/material.dart';
import 'package:todo/screens/task_screen.dart';
import 'task_tile.dart';
import 'package:todo/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<TaskData>(context)
          .tasks
          .length, // Use the length of the task list
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
            isChecked: Provider.of<TaskData>(context)
                .tasks[index]
                .isDone, // Accessing the task correctly
            tasktitle: Provider.of<TaskData>(context).tasks[index].name,
            checkboxCallback: (checkboxstate) {
              setState(() {
                Provider.of<TaskData>(context).tasks[index].toggleDone();
              });
            });
      },
    );
  }
}
