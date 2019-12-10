/*
类实现多个接口
 */

abstract class A {
  String name;
  printA();
}

abstract class B {
  printB();
}

class C implements A, B {
  @override
  String name;

  @override
  printA() {
    print('A');
  }

  @override
  printB() {
    print('B');
  }
}

/*
mixins 就是混入的意思，在类中混入其他的功能。

在dart中可以实现类似多继承的功能

下面列举Dart2.x中mixins 的使用条件

作为mixins的类只能继承自Object，不能继承自其他类
mixins类不可有构造函数
一个类可以mixins多个mixins类(多继承)，也可以在mixin的同时进行继承
mixins 不是继承也不是接口，而是一种全新的特性
 */

class D{
  // 我不可以有构造函数
  String name = 'dd';
  void printD(){
    print('D');
  }
}

class E{
  // 我不可以有构造函数
  void printE(){
    print('E');
  }
}

class Father{
  String sex;
  int age;
  Father(this.sex,this.age);
}

class F extends Father with D,E{
  F(String sex, int age) : super(sex, age);
 // mixins类,这里的D，E类不可以继承其他类
 // 如果DE含有同名的方法，E(在后面的)会覆盖D的
 // 如果D/E/Father都含有同名方法，始终是后面的(E)覆盖前面的
}
main(){
  F f = new F('male',18);
  print(f.name);

  // mixins的类型，均为true
  print(f is D);
  print(f is E);
  print(f is Father);
  print(f is Object);



}