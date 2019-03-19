import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'async and await',
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('首页'),),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navGetParams(context);
      },
      child: Text('Button'),
    );
  }
}

_navGetParams(BuildContext context) async {
  final result = await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => SecondPage()
      )
  );
  
  Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第二个页面'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('第一个按钮'),
              onPressed: () {
                Navigator.pop(context, 'Params：1');
              },
            ),
            RaisedButton(
              child: Text('第二个按钮'),
              onPressed: () {
                Navigator.pop(context, 'Params：2');
              },
            ),
          ],
        ),
      ),
    );
  }
}




