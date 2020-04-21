main(){

  //??=;
  //当运来的变量有值时，？？=不执行
  //原来的比变量为null时那么将值给这个变量

  var name = "clf";
  name??="lilei";
  print(name);


  var name1 = null;
  name1 ??= "lilei";
  print(name1);


  //??
  //？？前面的数据有值那么就是用？？前面的数据
  //??前面没有数据就是用？？后面的值
  var name2 = "clf";
  var temp = name2 ?? "hanmeimei";
  print(temp);

}