import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(title: 'Color Light'),
    );
  }
}

class MyHome extends StatefulWidget {
  MyHome({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<Color> _colorList = [
    Colors.black,
    Colors.green,
    Colors.blue,
    Colors.pink,
    Colors.red,
    Colors.yellow,
    Colors.grey,
    Colors.white,
  ];
  int _nowListNo = 0;
  Color _backColor = Colors.black;

  void _incrementCounter() {
    setState(() {
      _nowListNo++;
      if ( _nowListNo >= _colorList.length){
        _nowListNo=0;
      }
      _backColor = _colorList[_nowListNo];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backColor,
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
