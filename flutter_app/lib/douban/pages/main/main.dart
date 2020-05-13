import 'package:flutter/material.dart';
import 'initialize_items.dart';

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
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 14,
        unselectedFontSize: 14,
       currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,//4个以上开启才有文字
        items: items,
        onTap:((index){
          setState(() {
            _currentIndex = index;
          });
        }),
      ),
      
    );
  }
}

