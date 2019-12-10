// 继续讲解类
// 静态成员：使用static关键字实现
// 静态方法不能访问非静态成员，非静态方法可以访问静态成员
class Male {
  static String sex = 'male';
  String name;
  int age;
  Male(this.name, this.age);
  static void show() {
    print(sex);
    print('执行了静态方法');
  }

  void run() {
    print('$sex is running.');
  }

  void eat() {
    print('$name is eating.');
  }
}

class Driver extends Male {
  // 调用父类构造函数
  String car; // 自定义属性
  Driver(String name, int age, String car) : super(name, age) {
    this.car = car;
  }
  void drive() {
    print('$name is driving $car');
    print('下面子类调用父类的方法。');
    super.eat();
  }

  // 重写父类方法,建议添加override关键字
  @override
  run() {
    print('子类重写了父类的方法。');
  }
}

main() {
// dart 操作中的对象操作符
/*
? 条件运算符
as 类型转换
is 类型判断
·· 级联操作（连缀
 */
  Male.show();
  Male m;
  m?.run(); // 不存在就不会调用
  print(m is Male);

  var m2;
  m2 = '';
  m2 = new Male('Luke', 18);
  (m2 as Male).run();
  m2
    ..name = 'Ray'
    ..age = 28
    ..run();

  // 类的继承

  /*
      1. 子类使用extends关键字来继承父类
      2. 子类会继承父类里面可见的属性和方法 但不会继承构造函数
      3. 子类能够复写父类的方法，setter 与 getter
     */

  var d1 = new Driver('Jim', 34, 'Benz');
  d1.run();
  d1.drive();
}
