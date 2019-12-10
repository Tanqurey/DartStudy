// dart的算术运算符
// 大致与js类似

void main() {
  int a = 13;
  int b = 5;

  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b); // 取余
  print(a ~/ b); //取整

  // 不等运算符
  print(a == b);
  print(a != b);
  print(a > b);
  print(a < b);
  print(a >= b);
  print(a <= b);

  // 逻辑运算符
  //！ 取反 && 与 || 或
  bool flag1 = true;
  bool flag2 = false;
  print(!flag1);
  print(flag1 && flag2);
  print(flag1 || flag2);

  // 赋值运算符 ??=
  int c = 10;
  c ??= 100; // 如果c为空的话，赋值为100

  // switch case
  int score = 100;
  switch (score) {
    case 100:
      print('满分');
      break;
    default:
      print('不是满分');
      break;
  }

  // 三目运算符
  var judgement = score > 60 ? '及格' : '不及格';

  // try catch
  try{

  }catch(err){
    print(err);
  }

  // 类型转换
  // number与string互相转换
  // toString() ， parse
  String str1 = '123';
  var num1 = int.parse(str1);

  String str2 = '1.23';
  var num2 = double.parse(str1);

  int num3 = 100;
  var str3 = num3.toString();

  // 其他类型与布尔类型
  
  // isEmpty 判断字符串是否为空('')
  print(str3.isEmpty);

  var num4 = 0/0;
  print(num4);
  print(num4.isNaN);

}
