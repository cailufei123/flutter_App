main(){
//  var person = Person();
//  person.name = "clf";
//  person.run();
//  person.eat();

var person = Person()
           ..name = "clf"
           ..eat()
           ..run();
}

class Person{
  String name;
  void run(){
    print("pao");

  }
  void eat(){
    print("吃");
  }

}