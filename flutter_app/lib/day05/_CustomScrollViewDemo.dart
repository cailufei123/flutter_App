
import 'dart:math';

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
//      appBar: AppBar(
//        title: Text("列表",style: TextStyle(fontSize: 20,color: Colors.red),),
//      ),
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
    return CustomScrollView2();
  }

}




class CustomScrollView1 extends StatelessWidget {
  const CustomScrollView1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverSafeArea(
          sliver: SliverPadding(
            padding: EdgeInsets.all(8),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1.5
              ),
              delegate: SliverChildBuilderDelegate(
                      (BuildContext ctx, int int) {
                    return Container(color: Color.fromARGB(255, Random().nextInt(
                        256), Random().nextInt(256), Random().nextInt(256)));
                  },
                  childCount: 100
              ),
            ),
          ),
        )
      ],
    );
  }
}



class CustomScrollView2 extends StatelessWidget {
  const CustomScrollView2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverSafeArea(
          sliver: SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 1.5,


              ),
              delegate: SliverChildBuilderDelegate(
                    (BuildContext ctx ,int index){
                  return Container(color: Color.fromARGB(255, Random().nextInt(
                      256), Random().nextInt(256), Random().nextInt(256)));
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}


class CustomScrollViewDome01 extends StatelessWidget {
  const CustomScrollViewDome01({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 300,
          pinned: true,//悬浮头部
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Hello,Wrold"),
            background: Image.asset("assets/images/juren.jpeg", fit: BoxFit.cover,),
          ),

        ),



        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 2,

          ),
          delegate: SliverChildBuilderDelegate((BuildContext cts,int index){
            return Container(
              color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
            );
          },
            childCount: 10,


          ),
        ),

        SliverList(
          delegate: SliverChildBuilderDelegate(
                (BuildContext ctx,int index){
              return  ListTile(
                leading: Icon(Icons.people),
                title: Text("联系人"),
                subtitle: Text("联系人"),
              );
            },
            childCount: 10,
          ),

        )
      ],

    );
  }
}