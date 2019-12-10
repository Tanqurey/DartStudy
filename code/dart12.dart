 // 下面讲解Dart 当中的抽象类
 /*
 Dart中的抽象类：Dart抽象类主要用于定义标准，子类可以继承抽象类，也可以实现抽象类接口。

 1.抽象类通过abstract关键字定义
 2.Dart中的抽象方法不可以使用abstract声明,即没有函数体的方法默认为抽象方法
 3.如果子类继承抽象类必须要实现里面的抽象方法
 4.如果把抽象类当做接口实现的话必须得实现抽象类里面定义的所有属性和方法
 5.抽象类不能被实例化，只有继承它的子类可以

 extends 抽象类 与 implements的区别：
 1.若只是要复用抽象类里面的方法并且用抽象方法约束自己的话就extends抽象类
 2.如果只是吧抽象类当做标准的话就implements实现抽象类
  */

/*
多态：
允许将子类类型的指针赋值给父类类型的指针，同一个函数调用会有不同的执行效果
就是父类定义一个方法不去实现，让继承他的子类趋势线，每个子类有不同的表现
 */
  // 定义一个Animal类，要求子类必须包含eat方法

  abstract class Animal{
    eat();
    // 抽象类里的非抽象方法
    void printInfo(){
      print('info');
    }
  }
  
  class Dog extends Animal{
  @override
  void eat() {
    print('i m eating bone.');
  }
    
  }

void main(){


}
