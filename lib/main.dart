import 'package:flutter/material.dart';

void main() =>
    runApp(MyApp(items: List<String>.generate(100, (i) => 'items $i')));

class MyApp extends StatelessWidget {
  final List<String> items;
  // 构造方法
  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'This is a title',
      // 主题色
      // theme: ThemeData(primaryColor: Colors.green),
      home: MyHome3(items),
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
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
//          child: CustomTextStyle('Hello Everan!'),
          child: CustomImageStyle(null),
          alignment: Alignment.center,
          width: 500.0,
          height: 400.0,
          // color: Colors.lightGreen,
          margin: const EdgeInsets.all(20.0),
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Colors.blue, Colors.amber, Colors.green]),
              border: Border.all(width: 1.0, color: Colors.red),
              borderRadius: BorderRadius.circular(20.0)),
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

class CustomImageStyle extends StatelessWidget {
  String imageSrc;

  CustomImageStyle(this.imageSrc);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Image.network(
      imageSrc ??
          'https://iocaffcdn.phphub.org/uploads/avatars/17854_1541253700.jpg',
      width: 200.0,
      height: 200.0,
    );
  }
}

class MyHome2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('列表'),
      ),
      body: Center(
          child: Container(
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 200.0,
              color: Colors.green,
            ),
            Container(
              width: 200.0,
              color: Colors.amber,
            ),
            Container(
              width: 200.0,
              color: Colors.lightGreen,
            ),
            Container(
              width: 200.0,
              color: Colors.red,
            ),
          ],
        ),
      )),
    );
  }
}

class MyHome3 extends StatelessWidget {
  final List<String> items;

  MyHome3(this.items);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('动态列表'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}
