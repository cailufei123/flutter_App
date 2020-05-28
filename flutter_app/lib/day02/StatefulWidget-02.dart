<<<<<<< HEAD
=======

>>>>>>> a0c8a47775814c4ae29746e8d3fb840e21907d51
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

<<<<<<< HEAD
class MyApp extends StatelessWidget {
=======

class MyApp extends StatelessWidget {

>>>>>>> a0c8a47775814c4ae29746e8d3fb840e21907d51
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LFHomePage(),
    );
  }
}

<<<<<<< HEAD
=======

>>>>>>> a0c8a47775814c4ae29746e8d3fb840e21907d51
class LFHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: Text(
          "商品列表",
          style: TextStyle(fontSize: 20, color: Colors.red),
        ),
=======
        title: Text("商品列表",style: TextStyle(fontSize: 20,color: Colors.red),),
>>>>>>> a0c8a47775814c4ae29746e8d3fb840e21907d51
      ),
      body: LFHomeContent("你好，李银河"),
    );
  }
}

class LFHomeContent extends StatefulWidget {
<<<<<<< HEAD
  final String message;

=======

  final String message;
>>>>>>> a0c8a47775814c4ae29746e8d3fb840e21907d51
  LFHomeContent(this.message);

  @override
  _LFHomeContentState createState() => _LFHomeContentState();
}

class _LFHomeContentState extends State<LFHomeContent> {
  int _counter = 0;
<<<<<<< HEAD

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
=======
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
            setState(() {

            });
          },
        )
      ],
    ),
  );
  }
}

>>>>>>> a0c8a47775814c4ae29746e8d3fb840e21907d51
