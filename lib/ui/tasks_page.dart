import 'package:flutter/material.dart';

import '../models/global.dart';

import '../models/classes/task_class.dart';

import '../models/widgets/task_widget.dart';

class TasksPage extends StatefulWidget {
  @override
  _TasksPageState createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  List<Task> taskList = [
    Task(id: 1.toString(), title: 'Task 1', color: Colors.green),
    Task(id: 2.toString(), title: 'Task 2', color: Colors.red),
    Task(id: 3.toString(), title: 'Task 3', color: Colors.orange),
    Task(id: 4.toString(), title: 'Task 4', color: Colors.brown),
  ];

  /* For ReorderableListView :
    - https://fluttercentral.com/Articles/Post/1161
    - https://stackoverflow.com/questions/57805166/all-children-of-this-widget-must-have-a-key-in-reorderable-listview
  */

  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkGreyColor,
      child: Theme(
        data: ThemeData(canvasColor: darkGreyColor),
        child: ReorderableListView(
          padding: EdgeInsets.only(top: 150),
          children: getList(),
          onReorder: (int oldIndex, int newIndex) {
            setState(() {
              _updateItems(oldIndex, newIndex);
            });
          },
        ),
      ),
    );
  }

  void _updateItems(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }

    final Task item = taskList.removeAt(oldIndex);
    taskList.insert(newIndex, item);
  }

  List<TaskWidget> getList() {
    return List.generate(taskList.length, (index) {
      return TaskWidget(
          title: taskList[index].title,
          taskColor: taskList[index].color,
          key: Key(taskList[index].id));
    });

    /*
    return [
      TaskWidget(taskColor: Colors.blue, title: 'Title 1',),
      TaskWidget(taskColor: Colors.brown, title: 'Title 2',),
      TaskWidget(taskColor:Colors.grey, title: 'Title 3',),
      TaskWidget(taskColor:Colors.pink, title: 'Title 4',),
      TaskWidget(taskColor:Colors.orange, title: 'Title 5',)
    ];
    */
  }
}
