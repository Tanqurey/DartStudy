void main() {
// 继续讲解dart中的函数

// 箭头函数
  List list = ['panda', 'bird', 'frog'];

// 局限是只能写一个语句
  list.forEach((val) => print(val));

// 匿名方法，函数表达式

  var printInfo = (String info) {
    print(info);
  };
  printInfo('string');

  // 自执行方法
  ((String str) {
    print('我是自执行方法$str');
  })('hhhh');

  // 递归
  // 计算一个斐波那契数列第n项的值

  int Fibonacci(int n) {
    if (n == 1 || n == 2) {
      return 1;
    }
    return Fibonacci(n - 1) + Fibonacci(n - 2);
  }

  print(Fibonacci(6));

  //闭包
  /*
  全局变量的特点：全局变量常驻内存，会污染全局
  局部变量特点：不常驻内存，会被垃圾回收机制回收，不污染全局


  那如何实现可以被垃圾回收机制回收并常驻内存呢？
  使用闭包：函数内部嵌套函数，内部函数会调用外部函数的变量或参数，变量或参数不会被系统回收

   */

  test() {
    int a = 100;
    return () {
      print(++a);
    };
  }

  var bibao = test();
  bibao();
  bibao();
  bibao();
}
