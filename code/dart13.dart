/*
下面讲解dart内的接口

首先dart内的接口没有Interface关键字来定义，普通类和抽象类都可以作为
接口被实现 
但dart内的接口比较奇怪，如果实现的类是普通类，会将普通类和抽象中的属性
的方法全部重写一遍

因为抽象类可以定义抽象方法，普通类不可以，所以一般想要实现java接口那样的方式请使用抽象类定义接口

建议使用抽象类定义接口
*/

// 定义一个DB接口 ，支持mysql mssql mongodb
abstract class Db{
  // 下面是接口的约定
  String uri;
  add(String data);
  edit();
  delete();
}

class Mysql implements Db{
  Mysql(this.uri);
  @override
  add(String data) {
    return null;
  }

  @override
  delete() {
    return null;
  }

  @override
  edit() {
    return null;
  }

  @override
  String uri;
  
}
main(){
  var sql = new Mysql('baidu.com');
}