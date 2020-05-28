
import 'package:flutter/material.dart';
import 'package:flutterapp/douban/pages/main/main.dart';
import '../douban/widgets/star_rating.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent
      ),
//      home: LFMainPage(),
      home: LFHomePage(),
    );
  }
}

class LFHomePage extends StatefulWidget {
  @override
  _LFHomePageState createState() => _LFHomePageState();
}

class _LFHomePageState extends State<LFHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("星星",style: TextStyle(fontSize: 20,color: Colors.red),),
      ),
      body: Container(
        alignment: Alignment.center,
        child: LFStarRating(rating: 9,count: 5,),
      ),
    );
  }
}
