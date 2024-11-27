import 'package:flutter/material.dart';
import 'task_screen.dart';

class AddTaskScreen extends StatelessWidget {
  late String newtasktitle;
  final Function addTaskcallback;
  AddTaskScreen(this.addTaskcallback);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                newtasktitle = value;
              },
            ),
            SizedBox(height: 30.0),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
              ),
              onPressed: () {
                addTaskcallback(newtasktitle);
              },
              child: Text(
                "Add",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )),
      ),
    );
  }
}
