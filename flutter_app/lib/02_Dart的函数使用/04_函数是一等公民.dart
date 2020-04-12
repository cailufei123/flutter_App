main(){
  test((num1,num2){
    return num1 + num2;
  });

  var demo1 = demo();
 print(demo1(20,30));
}
typedef Calculate = int Function (int num1,int num2);

void test(Calculate culate){
  culate(2,3);
}
//void test(int foo(int num1,int unm2)){
//   int max = foo(2,3);
//
//   print(max);
//}

Calculate demo(){
  return (num1 ,num2){
    return num1 * num2;
  };
}


