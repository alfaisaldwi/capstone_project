
import 'package:capstone_project/model/task_model.dart';
import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final TaskModel task;
  const TaskCard({
    Key? key,
    required this.task,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.amberAccent[100],
          borderRadius: BorderRadius.circular(20)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(task.taskName),
        // Text(task.age),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.delete_forever_rounded))
      ]),
    );
  }
}
