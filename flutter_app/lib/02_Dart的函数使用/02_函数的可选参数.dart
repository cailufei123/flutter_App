main(){
  sayHello("clf");
  sayHello1("clf",14,13.2);
  sayHello2("clf",height: 18.5,age: 10);
}


//name是必选参数
//可选参数：位置可选参数。命名可选参数
//[int age,double height]
//dart中没有函数的重载
void sayHello(String name){
  print(name);
}

//实参和形参是位置对应的
void sayHello1(String nme ,[int age , double height]){

}
//命名可选参数
void sayHello2(String name,{int age,double height}){

}

//只有可选参数才有默认值
void sayHello3(String name,{int age = 10,double height = 18.5}){

}