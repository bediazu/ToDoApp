import 'package:flutter/material.dart';
import 'package:simple_app_example/models/global.dart';

class TaskWidget extends StatelessWidget {
  final Color taskColor;
  final String title;
  final Key key;

  TaskWidget({this.taskColor, this.title, this.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: this.key, /* Used to ReorderableListView */
      height: 150,
      margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
      decoration: BoxDecoration(
          color: this.taskColor,
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20.0),
            child: Radio(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[Text(this.title, style: titleTaskStyle)],
          )
        ],
      ),
    );
  }
}
