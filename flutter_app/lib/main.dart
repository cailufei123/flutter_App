<<<<<<< HEAD
import 'package:flutter/material.dart';void main() => runApp(MyApp());class MyApp extends StatelessWidget {  @override  Widget build(BuildContext context) {    return MaterialApp(      debugShowCheckedModeBanner: false,      home: LFHomePage(),    );  }}class LFHomePage extends StatelessWidget {  @override  Widget build(BuildContext context) {    return Scaffold(      appBar: AppBar(        title: Text(          "列表",          style: TextStyle(fontSize: 20, color: Colors.red),        ),      ),      body: LFHomeContent(),    );  }}class LFHomeContent extends StatefulWidget {  LFHomeContent();  @override  _LFHomeContentState createState() => _LFHomeContentState();}class _LFHomeContentState extends State<LFHomeContent> {  @override  Widget build(BuildContext context) {    return ListView.builder(        itemBuilder:        );  }  ListView ListView02() => ListView(      scrollDirection: Axis.horizontal ,      padding: const EdgeInsets.all(8),      children: <Widget>[        Container(          height: 50,          color: Colors.amber[600],          child: const Center(child: Text('Entry A')),        ),        Container(          height: 50,          width: 350,          color: Colors.amber[500],          child: const Center(child: Text('Entry B')),        ),        Container(          height: 50,          color: Colors.amber[100],          child: const Center(child: Text('Entry C')),        ),      ],    );//children比较少的时候用默认初始换ListView() 一次性生成完  //ListView().build 滚动创建  ListView ListView01() {    return ListView(      scrollDirection: Axis.vertical,//滚动方向      reverse: true,    primary: true,    itemExtent: 100,//有高度才可以水平滚动    children: List.generate(200, (index){//        Text("Hello world $index",style: TextStyle(fontSize: 20,color:  Colors.red),)      return ListTile(        leading: Icon(Icons.people),//头部        trailing: Icon(Icons.delete) ,//尾部        title: Text("电话"),        subtitle: Text("电话12343453464356"),      );    }),  );  }}
=======

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
    LFHomeContent  e = LFHomeContent();
    return Scaffold(
      appBar: AppBar(
        title: Text("列表",style: TextStyle(fontSize: 20,color: Colors.red),),
      ),

      body: e,
//      floatingActionButton: e.isShowFloatingBtn? FloatingActionButton(
//        child: Icon(Icons.arrow_upward),
//        onPressed: () {
////          _controller.animateTo(0, duration: Duration(seconds: 1), curve: Curves.easeIn);
//        },
//      ): null,
    );
  }
}

 class  LFHomeContent extends StatefulWidget {

  @override
  _LFHomeContentState createState() => _LFHomeContentState();
}

class _LFHomeContentState extends State<LFHomeContent> {
  ScrollController  _controller = ScrollController(initialScrollOffset: 300);
  bool isShowFloatingBtn = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener((){
      setState(() {
        isShowFloatingBtn =  _controller.offset>=1000;
      });
    });
  }





  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification: (ScrollNotification notification) {
          if(notification  is ScrollStartNotification){
            print("开始滚动");
          }else if (notification  is ScrollUpdateNotification){
            print("正在滚动...,总滚动距离:${notification.metrics.maxScrollExtent} 当前滚动的位置: ${notification.metrics.pixels}");
          }else if (notification is ScrollEndNotification) {
            print("结束滚动");
          }
          return true;
        },
      child: ListView.builder(
        itemBuilder: (BuildContext ctx,int index){
          return ListTile(
            leading: Icon(Icons.people),
            title: Text("hw"),
          );
        },
      ),
    );



  }



}
>>>>>>> a0c8a47775814c4ae29746e8d3fb840e21907d51
