main() {
  // dart支持以下几种数据类型
  /*
  常用数据类型：
  Numbers(数值类型)：
    int 整型
    double 浮点
  Strings(字符串类型)
    string
  Booleans(布尔类型)
    bool
  List(数组)
    Dart中，数组是列表对象，所以称之为列表
  Maps(字典)
    Map是键值对相关的对象，键与值可以是任何类型的对象，每个键只出现一次
  
  
   */
  //定义一个字符串
  var str1 = 'hello';
  String str2 = 'yes !';
  // 多行文本
  String str3 = '''you 
   're
    so 
    pretty.
   ''';
  // 字符串拼接

  print('$str1$str2');
  print(str1 + str2);

  // 数值类型
  int a = 123;
  double b = 1.23;

  // 运算符与js类似,dart不存在隐式的类型转换
  double c = a + b;
  print(c);

  // 布尔类型
  bool flag = true;

  // 分支语句
  if(flag){
    print('ok');
  }else{
    print('not ok');
  }

  // 数组类型List
  var list1 = ['a','b','c'];
  print(list1[0]);
  print(list1.length);
  // 另一种定义方式
  var list2 = new List(); 
  list2.add('linda');
  print(list2[0]);
  
  // 定义list后指定类型
  var list3 = new List<String>();
  var list4 = new List<int>();

  //Maps类型与JSON对象类似

  var human = {
    'name':'lucy',
    'age':18
  };
  print(human['name']);
  // 另一种定义方式
var human2 = new Map();
human2['name'] = 'taylor';

// 类型判断，is关键字
print(str1 is int);
print(a is int);

}
