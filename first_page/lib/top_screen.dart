import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: My_topscreen(),
    );
  }
}

class My_topscreen extends StatefulWidget {
  @override
  _My_topscreenState createState() => _My_topscreenState();
}

class _My_topscreenState extends State<My_topscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Training & Placemant Officer')),
        body: Column(children: <Widget>[
          SizedBox(
            height: 50,
          ),
          RaisedButton(
            color: Colors.blueAccent,
            shape: StadiumBorder(),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'ADD_Placement',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          RaisedButton(
            color: Colors.blueAccent,
            shape: StadiumBorder(),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Company_List',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          RaisedButton(
            color: Colors.blueAccent,
            shape: StadiumBorder(),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Applide_StudentList',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
          )
        ]));
  }
}
