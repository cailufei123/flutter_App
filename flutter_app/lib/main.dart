
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