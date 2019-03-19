import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg'),
          radius: 100.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.lightBlue
          ),
          padding: EdgeInsets.all(5.0),
          child: Text('Hello World'),
        )
      ],
    );

    // TODO: implement build
    return MaterialApp(
      title: 'Stack 层级嵌套',
      home: Scaffold(
        appBar: AppBar(title: Text('Stack demo'),),
        body: Center(
          child: stack,
        ),
      ),
    );
  }
}