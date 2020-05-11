
import 'dart:math';
import 'dart:ui';

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
        title: Text("列表",style: TextStyle(fontSize: 20,color: Colors.red),),
      ),
      body: LFHomeContent(),
    );
  }
}

class LFHomeContent extends StatefulWidget {

  @override
  _LFHomeContentState createState() => _LFHomeContentState();
}

class _LFHomeContentState extends State<LFHomeContent> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 3,

      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      children: List.generate(100, (index){
        return Container(
          color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
        );
      }),
    );
  }
}
//https://www.keppel.fun/articles/2019/04/26/1556245200876.html 瀑布流
class GridViewDemo03 extends StatelessWidget {
  const GridViewDemo03({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,

        ),

        itemBuilder: (BuildContext ctx , int index){
          return Container(
            color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
          );
        },
      ),
    );
  }
}

class GridViewDemo02 extends StatelessWidget {
  const GridViewDemo02({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100,//最大宽度
          crossAxisSpacing: 8,//间距
          mainAxisSpacing: 8,
          childAspectRatio: 0.5,//maxCrossAxisExtent/childAspectRatio
        ),
        children: List.generate(100, (index){
          return Container(
            color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
          );
        }),
      ),
    );
  }
}




class GridViewDemo01 extends StatelessWidget {
  const GridViewDemo01({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),

      child: GridView(
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 0.5, //  weith/childAspectRatio 比例
          crossAxisSpacing: 8, //交叉轴的间距
          mainAxisSpacing: 8, //主轴的间距
        ),
        children: List.generate(100, (index){
          return Container(

            color: Color.fromARGB(255, Random().nextInt(256) , Random().nextInt(256),  Random().nextInt(256)),
          );
        }),
      ),
    );
  }
}