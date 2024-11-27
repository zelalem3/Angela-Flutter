import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {required this.isChecked,
      required this.tasktitle,
      required this.checkboxCallback});
  final String tasktitle;
  final bool isChecked;
  final Function checkboxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          tasktitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: (newValue) {
            checkboxCallback(newValue); // Call the callback with new value
          },
        ));
  }
}
