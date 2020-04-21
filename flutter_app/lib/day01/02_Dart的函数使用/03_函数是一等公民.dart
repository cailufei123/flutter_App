main(){
  //test(bar);

  //匿名函数
test((){
  print("匿名函数被调用");
  return 10;
});

//箭头函数 条件函数体只能一行代码
test(()=>print("箭头函数被调用"));

}

//函数可以当做另一个函数的参数
void test(Function foo){
int rut = foo();
print("返回的结果${rut}");
}
void bar(){
  print("222ber被调用");
}

