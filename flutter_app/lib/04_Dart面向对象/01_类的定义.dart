main(){
// var p = Person(name, age);
  var p1 = Person(12, "33");


}

class Person{
  String name;
  int age;

//Person(String name,int age){
//  this.name = name;
//  this.age = age;
//}

//注释等价于  语法糖
Person(this.age,this.name);
}
