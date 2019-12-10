// 讲解类与对象
/*
Dart 当中所有的东西都是对象，所有的对象都继承自Object类
Dart 是一门使用类和单继承的面向对象语言，所有对象都是类的实例，并且所有的类都是Object
的子类
一个类通常由属性和方法组成
 */
// 在入口函数外定义一个类
import 'lib/Human.dart';

class Human {
  String name = 'Linda';
  int age = 18;
  void eat() {
    print('$name is eating');
    // 或用this.调用属性
  }
}

class Human2 {
  String name;
  int age;
  // 构造函数,同名
  // Human2(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }
  // 或者
  Human2(this.name, this.age);

  void eat() {
    print('$name is eating');
    // 或用this.调用属性
  }
}

class Human3 {
  String name;
  int age;
  // 我是默认的构造函数
  Human3(this.name, this.age);
  // 我是一个命名构造函数，我可以存在多个
  Human3.now() {
    print('yes!!!!');
  }
  // 另一个
  Human3.other(String name, int age) {
    this.name = name;
    this.age = age;
  }
  void eat() {
    print('$name is eating');
    // 或用this.调用属性
  }
}

// 讲解命名构造函数
// dart内一个类可以有多个构造函数

void main() {
  Human h1 = new Human();
  h1.eat();

  Human2 h2 = new Human2('Jessica', 12);
  h2.eat();

  // 命名构造函数
  var d = new DateTime.now(); // now就是类DateTime的一个命名构造函数

  Human3 h3 = new Human3.now(); // 调用了命名构造函数

  // 在正式开发中，不会将类和其他代码放在同一个文件下
  Human4 h4 = new Human4('Jessica', 12);
  h4.eat();

  // dart没有为我们提供public/private/protected这些类修饰符
  // 但我们可以用_将属性和方法设置为私有，只有放在另一个文件时才生效
  Human5 h5 = new Human5('Jessica', 12, 'female');
  h5.eat();
  // print(h5._sex); error
  h5.execRun();

  // getter与setter修饰符
  // get修饰符修饰的属性可以通过对象.的方法直接访问
  Human6 h6 = new Human6('Jessica', 12);
  print(h6.hobby);
  h6.modifyName='Linda';
  print(h6.name);

  Human7 h7 = new Human7();
  print(h7.name);

}
