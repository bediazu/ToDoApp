import 'package:flutter/material.dart';

import '../models/global.dart';

import '../models/widgets/task_widget.dart';

class TasksPage extends StatefulWidget {
  @override
  _TasksPageState createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkGreyColor,
      child: ListView(
        padding: EdgeInsets.only(top: 150),
        children: getList(),

      ),
    );
  }

  List<TaskWidget> getList() {
    return [
      TaskWidget(taskColor: Colors.blue, title: 'Title 1',),
      TaskWidget(taskColor: Colors.brown, title: 'Title 2',),
      TaskWidget(taskColor:Colors.grey, title: 'Title 3',),
      TaskWidget(taskColor:Colors.pink, title: 'Title 4',),
      TaskWidget(taskColor:Colors.orange, title: 'Title 5',)
    ];
  }
}