import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'This is a title',
      // 主题色
      // theme: ThemeData(primaryColor: Colors.green),
      home: MyHome1(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('This is a title2')),
      body: Center(
        child: Text(
          'Hello World，Hello World，Hello World，Hello World，Hello World，Hello World，Hello World~',
          textAlign: TextAlign.left, // 左对齐
          overflow: TextOverflow.ellipsis, // 超出 用点 省略号
          style: TextStyle(
              fontSize: 25.0,
              // 字体颜色
              color: Colors.amber,
              // 下划线
              decoration: TextDecoration.underline,
              // 设置下划线为虚线
              decorationStyle: TextDecorationStyle.dashed,
              // 设置下划线颜色
              decorationColor: Color.fromARGB(255, 255, 125, 100)),
        ),
      ),
    );
  }
}

class MyHome1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('This is a title2'),
        leading: Icon(Icons.home),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          child: CustomTextStyle('Hello Everan!'),
          alignment: Alignment.topLeft,
          width: 500.0,
          height: 400.0,
          color: Colors.lightGreen,
          padding: const EdgeInsets.all(20.0),
        ),
      ),
    );
  }
}

class CustomTextStyle extends StatelessWidget {
  String text;
  CustomTextStyle(this.text);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      text ?? 'Hello World!',
      style: TextStyle(fontFamily: 'STXinwei', fontSize: 40.0),
    );
  }
}
