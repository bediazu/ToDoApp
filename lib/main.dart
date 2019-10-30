import 'package:flutter/material.dart';
import 'package:simple_app_example/ui/camera_page.dart';
import 'package:simple_app_example/ui/tasks_page.dart';

import './models/global.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: AppBar(
              automaticallyImplyLeading: false,
              titleSpacing: 0.0,
              elevation: 0.0,
              title: Row(
                mainAxisSize: MainAxisSize.min,
              ),
              backgroundColor: Colors.red,
              bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.account_circle)),
                  Tab(icon: Icon(Icons.add_a_photo))
                ],
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                indicatorColor: Colors.transparent,
              ),
            ),
          ),
          body: Stack(
            children: <Widget>[
              Container(
                color: darkGreyColor,
                child: TabBarView(
                  children: <Widget>[
                    TasksPage(),
                    CameraPage()
                  ],
                ),
              ),
              Container(
                height: 120,
                padding: EdgeInsets.only(left: 45,bottom: 15),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'ToDoApp',
                      style: titleTextStyle,
                    ),
                  ],
                ),
              ),
              Container(
                child: FloatingActionButton(
                  onPressed: () => {},
                  child: Container(child: Icon(Icons.add, size: 30)),
                  backgroundColor: Colors.orange,
                ),
                padding: EdgeInsets.only(
                    top: 90,
                    left: MediaQuery.of(context).size.width * 0.5 - 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
