import 'package:flutter/material.dart';

import '../models/global.dart';

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

  List<Widget> getList() {
    return [
      Container(
        height: 150,
        color: Colors.cyan,
        padding: EdgeInsets.only(left: 50, right: 50),
      ),
      Container(
        height: 150,
        color: Colors.orange,
        padding: EdgeInsets.only(left: 50, right: 50),
      ),
      Container(
        height: 150,
        color: Colors.yellow,
        padding: EdgeInsets.only(left: 50, right: 50),
      ),
      Container(
        height: 150,
        color: Colors.red,
        padding: EdgeInsets.only(left: 50, right: 50),
      ),
      Container(
        height: 150,
        color: Colors.indigo,
        padding: EdgeInsets.only(left: 50, right: 50),
      ),
      Container(
        height: 150,
        color: Colors.pink,
        padding: EdgeInsets.only(left: 50, right: 50),
      ),
    ];
  }
}