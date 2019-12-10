// dart中所要执行的方法必须要放在main方法内

//   有两种定义方法：

/*
main(){
  //code
}
 */

// 或者
/*
void main(){
  // code
}
*/

// dart是一个强大的脚本类语言，可不预先定义变量类型，自动进行类型推断

// 可以通过var 或者 类型 来进行变量的声明
// var 可以自动识别变量类型，但是一旦指定了变量的值就相当于给定了变量类型，不允许后续变更


main() {
  var str = 'hello';
  String str2 = 'world';

  // int 是数字类型
  int num = 12;
  // num = 'a'; error
  num = 100;

  // dart变量命名规则：变量区分大小写
  // 常量的定义：
  /*
  const 值不变，一旦声明必须赋值
  final 是编译时常量，更是运行时常量，惰性初始化，即在运行时第一次使用前才初始化
   */
  const PI = 3.14159;
  final time = new DateTime.now();// 用const 声明报错
} 
