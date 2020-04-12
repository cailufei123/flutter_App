main(){
  // 列表
var names = ["abc","cba","aaa","aaa"];
names.add("haha");
names.remove("abc");
names.removeAt(1);
print(names);
//集合{}
var moves = {"星际穿越","大话西游","流浪地球","流浪地球"};

  names = Set<String>.from(names).toList();
print("去重${names}");

print(moves);
//映射Map
var info = {
  "name":"clf",
  "age":18,
};
  print(info);


}