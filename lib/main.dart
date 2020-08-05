import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              buildCard(Icons.access_alarm, "Alarm"),
              buildCard(Icons.access_time, "Waktu")
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 10,
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Icon(
              iconData,
            ),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
