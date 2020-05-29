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
//option command + b 查看子类
class LFHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表"),
      ),
      body: LFHomeCiontent(),

      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Text("button"),
        tooltip: "按这么长时间干嘛",
        foregroundColor: Colors.red,
      ),
    );
  }
}

class LFHomeCiontent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        LFHomeProductItem("Apple1", "Macbook1", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
        SizedBox(height: 20),
        LFHomeProductItem("Apple2", "Macbook2", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imm9u5zj30u00k0adf.jpg"),
        SizedBox(height: 20,),
        LFHomeProductItem("Apple3", "Macbook2", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imqlouhj30u00k00v0.jpg"),
        SizedBox(height: 20,),
      ],
    );
  }
}

class LFHomeProductItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imageURL;
  final style1 = TextStyle(fontSize: 25,color: Colors.orange);
  final style2 = TextStyle(fontSize: 20,color: Colors.green);

  LFHomeProductItem(this.title, this.desc, this.imageURL);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.pink,// 设置边框的颜色
            width: 5, // 设置边框的宽度
          )

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(title,style: style1,),

            ],
          ),
          SizedBox(height: 8),
          Text(desc,style:style2),
          SizedBox(height: 8),
          Image.network(imageURL)
        ],
      ),

    );
  }
}



//
//class _LFHomeContentState extends State<LFHomeContent> {
//  int _counter = 0;
//
//  @override
//  Widget build(BuildContext context) {
//    return CenterDemo();
//  }
//
//  Center CenterDemo() => Center(
//
//    child: Column(
//      mainAxisAlignment: MainAxisAlignment.center ,
//      children: <Widget>[
//        _getButtons(),
//        Text("当前计数:$_counter"),
//        Text(widget.message),
//      ],
//    ),
//  );
////opt + cmd + L 格式化代码
//  Widget _getButtons() {
//    return Row(
//      mainAxisAlignment: MainAxisAlignment.center,
//      children: <Widget>[
//        RaisedButton(
//          child: Text(
//            "+",
//            style: TextStyle(fontSize: 20, color: Colors.white),
//          ),
//          color: Colors.red,
//          onPressed: () {
//            setState(() {
//              _counter++;
//            });
//          },
//        ),
//        RaisedButton(
//            child: Text(
//              "-",
//              style: TextStyle(fontSize: 20, color: Colors.white),
//            ),
//            color: Colors.green,
//            onPressed: () {
//              setState(() {
//                _counter--;
//              });
//            }),
//      ],
//    );
//  }
//}
//template