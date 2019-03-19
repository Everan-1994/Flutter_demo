import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(title: '布局', home: MyHome());
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('水平方向布局'),
      ),
      body: Row(
        children: <Widget>[
          new RaisedButton(
              onPressed: () {}, color: Colors.red, child: new Text('红色按钮')),
          Expanded(
            child: new RaisedButton(
                onPressed: () {}, color: Colors.green, child: new Text('绿色按钮')),
          ),
          new RaisedButton(
              onPressed: () {}, color: Colors.amber, child: new Text('黄色按钮')),
        ],
      ),
    );
  }
}
