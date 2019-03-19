import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: '导航页面',
    home: new Page1(),
  ));
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航一'),
      ),
      body: Center(
        child: RaisedButton(
            color: Colors.green,
            child: Text('详情', style: TextStyle(color: Colors.white),),
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => Page2()));
            }),

      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航二'),
      ),
      body: Center(
        child: RaisedButton(
            color: Colors.lightBlue,
            child: Text('返回'),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}
