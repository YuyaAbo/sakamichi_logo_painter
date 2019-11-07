import 'package:flutter/material.dart';
import 'package:sakamichi_logo_painter/sakamichi_logo_painter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: SakamichiLogo(
          size: 40,
          foregroundColor: Colors.blue,
          backgroundColor: Colors.purple,
          text: '46',
        ),
      ),
    );
  }
}
