import 'package:flutter/material.dart';
import 'package:simple_app_example/models/global.dart';

class TaskWidget extends StatelessWidget {
  final Color taskColor;
  final String title;

  TaskWidget({this.taskColor, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      decoration: BoxDecoration(
        color: this.taskColor,
        borderRadius: BorderRadius.all(Radius.circular(20.0))
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20.0),
            child: Radio(
              
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(this.title, style: titleTaskStyle)
            ],
          )
        ],
      ),
    );
  }
}
