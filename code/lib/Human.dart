class Human4 {
  String name;
  int age;
  Human4(this.name, this.age);

  void eat() {
    print('$name is eating Human4');
    // 或用this.调用属性
  }
}

class Human5 {
  String name;
  int age;
  String _sex; // 私有属性
  Human5(this.name, this.age, this._sex);

  void eat() {
    print('$name is eating Human5,she is $_sex');
    // 或用this.调用属性
  }
  void _run(){
    print('我是私有方法，只能被自身调用');
  }
  void execRun(){
    this._run();
  }
}

class Human6 {
  String name;
  int age;
  Human6(this.name, this.age);

  void eat() {
    print('$name is eating Human6');
  }
  get hobby{
    return '$name likes drawing.';
  }

  set modifyName(val){
    this.name = val;
  }
}

// 函数体运行前初始化实例变量
class Human7 {
  String name;
  int age;
  Human7():name='Fiona',age=25{

  }

  void eat() {
    print('$name is eating Human4');
    // 或用this.调用属性
  }
}
