

import 'package:flutter/material.dart';
import 'home_content.dart';
class LFHomePage extends StatefulWidget {
  @override
  _LFHomePageState createState() => _LFHomePageState();
}

class _LFHomePageState extends State<LFHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: LFHomeContentState(),
    );
  }
}
