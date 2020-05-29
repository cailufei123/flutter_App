
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LFHomePage(),
    );
  }
}

class LFHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("商品列表",style: TextStyle(fontSize: 20,color: Colors.red),),

      ),
      body: LFHomeContent("你好，李银河"),
    );
  }
}

class LFHomeContent extends StatefulWidget {


  final String message;

  LFHomeContent(this.message);

  @override
  _LFHomeContentState createState() => _LFHomeContentState();
}

class _LFHomeContentState extends State<LFHomeContent> {
  int _counter = 0;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center ,
        children: <Widget>[
          _getButtons(),
          Text("当前计数:$_counter"),
          Text(widget.message),
        ],
      ),
    );
  }
//opt + cmd + L 格式化代码
  Widget _getButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text(
            "+",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          color: Colors.pink,
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
        ),
        RaisedButton(
            child: Text(
              "-",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            color: Colors.purple,
            onPressed: () {
              setState(() {
                _counter--;
              });
            }),
      ],
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return centerDemo();
  }

  Center centerDemo() {
    return Center(
    child: Column(
      children: <Widget>[
        RaisedButton(
          child: Text("+",style: TextStyle(fontSize: 20),),
          onPressed: (){
//            setState(() {
//
//            });
          },
        )
      ],
    ),
  );
  }


