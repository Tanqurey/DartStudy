void main() {
  /*
  函数的定义方式：
  返回类型 方法名称 (参数列表){
    //code
    return 返回值
  }
  函数定义在入口函数外表明这是一个全局方法
   */

  String show(data) {
    // main方法外不可访问到该方法
    // 即方法内定义的方法无法在方法外调用
    return data.toString();
  }

  print(show('yes!!'));

  // 参数类型限定

  int getSum(int num1, int num2) {
    return num1 + num2;
  }

  // 可选参数，中括号包裹
  void printInfo(String name, int age, [String sex]) {
    print(sex);
    print('I am $name, $age years old');
  }

  printInfo('lucy', 13);

  // 默认参数值
  void printInfo2(String name, int age, [String sex = 'female']) {
    print(sex);
    print('I am $name, $age years old');
  }

  printInfo2('lucy', 13);

  // 命名参数
  void printInfo3({String name, int age, String sex = 'female'}) {
    print(sex);
    print('I am $name, $age years old');
  }

  printInfo3(name:'Penny',age:18);

  // 方法作参数传递
  fn1(){
    print('run fn1');
  }

  fn2(fn){
    print('run fn2');
    fn();
  } 

  fn2(fn1);
}
