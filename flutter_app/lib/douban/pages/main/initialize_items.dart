
import 'package:flutter/material.dart';
import 'bottom_bar_item.dart';
import '../home/home.dart';
import '../subject/subject.dart';
List<LFBottomBarItem> items = [
  LFBottomBarItem("home", "首页"),
  LFBottomBarItem("subject", "书影音"),
  LFBottomBarItem("group", "小组"),
  LFBottomBarItem("mall", "市集"),
  LFBottomBarItem("profile", "我的"),
];

List<Widget> pages = [
  LFHomePage(),
  LFSubjectPage(),
  LFHomePage(),
  LFSubjectPage(),
  LFSubjectPage(),

];
