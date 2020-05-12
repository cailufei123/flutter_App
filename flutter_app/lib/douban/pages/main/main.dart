import 'package:flutter/material.dart';

class LFMainPage extends StatefulWidget {
  @override
  _LFMainPageState createState() => _LFMainPageState();
}

class _LFMainPageState extends State<LFMainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index:_currentIndex,
        children: <Widget>[],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          LFBottomBarItem("home","首页"),
          LFBottomBarItem("subject","书影音"),
        ],
      ),
      
    );
  }
}

class LFBottomBarItem extends BottomNavigationBarItem{
  LFBottomBarItem(String iconName,String title):super(
    title:Text(title),
  icon:Image.asset("assets/images/tabbar/$iconName.png", width: 32,),
  activeIcon:Image.asset("assets/images/tabbar/${iconName}_active.png", width: 32,),
  );
}
