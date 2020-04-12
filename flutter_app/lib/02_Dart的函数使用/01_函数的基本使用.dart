main(){

int su = sum(1, 1);
print(su);

String str = stringAl(1, 1);
print(str);
}
//返回值Int
int sum(int num1,int num2){
  return num1 + num2;
}
String stringAl(int s ,int w){
  return "----${s},${w}";
}