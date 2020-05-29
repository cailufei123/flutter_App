import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/douban/model/home_model.dart';
import 'package:flutterapp/douban/pages/home/home_movie_item.dart';
import 'package:flutterapp/service/home_request.dart';

class LFHomeContentState extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<LFHomeContentState> {
  final List<MovieItem> movies = [];
  @override
 void initState(){
    super.initState();
    // 发送网络请求
    HomeRequest.requestMovieList(0).then((res){
      setState(() {
        movies.addAll(res);

        print("99999$movies");
      });

    });

  }

  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies.length,
        itemBuilder: (ctx,index){
       return LFHomeMovieItem(movies[index]);
    });
  }
}
