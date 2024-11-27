import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/task_list.dart';
import 'add_task_screen.dart';
import '../widgets/task_tile.dart';
import '../models/task.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.blueAccent,
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => AddTaskScreen((newTasktitle) {
                      // setState(() {
                      //   Provider.of<TaskData>(context)
                      //       .tasks
                      //       .add(Task(name: newTasktitle));
                      //   Navigator.pop(context);
                      // });
                    }));
          }),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: const Icon(
                    color: Colors.lightBlueAccent,
                    Icons.list,
                    size: 30.0,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(height: 10.0),
                Text(
                  "Todoey",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "${Provider.of<TaskData>(context).tasks.length} Tasks",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                //child: TaskList(Provider.of<TaskData>(context).tasks),
                height: 300.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ))),
          )
        ],
      ),
    );
  }
}
