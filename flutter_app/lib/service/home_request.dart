
 import 'package:flutterapp/douban/model/home_model.dart';
import 'package:flutterapp/service/http_request.dart';
import 'config.dart';

class HomeRequest{
  static Future<List <MovieItem>> requestMovieList(int start) async{
    // 1.构建URL
    final movieURL = "/movie/top250?start=$start&count=${HomeConfig.movieCount}";
    // 2.发送网络请求获取结果
     final result = await HttpRequest.request(movieURL,method: "get");

     final subjects =  result["subjects"];
print("hahahah----$result");
     List<MovieItem> movies = [];

     for(var sub in subjects){
       movies.add(MovieItem.fromMap(sub));
     }

     return movies;
  }
 }