
import 'package:flutter/material.dart';
import 'package:flutterapp/douban/pages/main/main.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LFMainPage(),
    );
  }
}

