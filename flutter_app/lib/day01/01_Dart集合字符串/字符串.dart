

main(){
  var str1 = 'abc';
  var str2 = "abc";
  var str3 = """
      ddd
      abc
  """;

  //字符串和表达式进行拼接
  var name = "clf";
  var age = 10;
  var height = 1.88;

//  var message1 = "my name is ${name},height is ${height} age is ${age}";
  //可以省略
  var message1 = "my name is $name,height is $height age is $age";
   print(message1);

   var message2 =  "my name is $name,type is ${name.runtimeType}";
   print(message2);
  //p1和p2不是同一个对象

//   final p1 = Person("clf");
//   final p2 = Person("clf");
//   print(identical(p1, p2));


   //p1和p2是同一对象

  const p3 = Person("clf");//构造器也的用const
  const p4 = Person("clf");
  print(identical(p3, p4));



}
//class Person{
//  String name;
//
//  Person(String name){
//    this.name = name;
//  }
//}
 class Person{
final  String name;

 const Person(this.name);
}