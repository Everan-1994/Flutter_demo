import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var card = Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('标题标题标题标题标题', style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: Text('标题标题标题标题标题'),
            leading: Icon(Icons.account_box, color: Colors.lightBlue,),
          ),
          new Divider(),
          ListTile(
            title: Text('标题标题标题标题标题', style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: Text('标题标题标题标题标题'),
            leading: Icon(Icons.account_box, color: Colors.lightBlue,),
          ),
          new Divider(),
          ListTile(
            title: Text('标题标题标题标题标题', style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: Text('标题标题标题标题标题'),
            leading: Icon(Icons.account_box, color: Colors.lightBlue,),
          ),
          new Divider(),
        ],
      ),
    );
    return MaterialApp(
      title: 'Card 卡片布局',
      home: Scaffold(
        appBar: AppBar(title: Text('卡片布局'),),
        body: Center(
          child: card,
        )
      ),
    );
  }
}