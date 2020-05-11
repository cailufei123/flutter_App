
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
    return ListView.separated(
      itemBuilder: (BuildContext ctx ,int index){
        return Text("你好");
      },
      separatorBuilder: (BuildContext ctx,int index){
        return Divider(
          color: Colors.red,//线的颜色
          height: 30,
          indent: 30,//开始留30
          endIndent: 30,//结束留三十
          thickness: 10,//线宽

        );
      },
      itemCount: 100,
    );
  }
}



//显示的时候加载
class ListViewDemo02 extends StatelessWidget {
  const ListViewDemo02({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("-----0099999");
    return ListView.builder(
      itemCount: 100,//个数
      itemExtent: 60,//高度
      itemBuilder: (BuildContext ctx , int index){
        print("-----$index");
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "hello W Worldhello Worldhello Worldhello Worldhello Worldhello W"
                "orldhello Worldhello Worldhello Worldhello Worldhello Worldhello Worldh"
                "ello Worldhello Worldhello Worldhello Worldhello World" ,style: TextStyle(fontSize: 20,color: Colors.red),
          ),
        );
      },


    );
  }
}


//数据量少的情况用默认构造器
class ListViewDemo01 extends StatelessWidget {
  const ListViewDemo01({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:List.generate(100, (index){
        return ListTile(

          leading: Icon(Icons.people),//头
          trailing: Icon(Icons.delete),
          title: Text("联系人${index+1}"),
          subtitle: Text("联系电话：18999999999"),

        );
      }),
    );
  }
}
