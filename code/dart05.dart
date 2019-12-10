// 循环语句

// for 循环
void main() {
  for (int i = 0; i < 10; i++) {
    print(i);
  }

  // 遍历数组
  var list = ['cc','aa','ff','dd'];
    for (int j = 0; j < list.length; j++) {
    print(list[j]);
  }
  
  // while
  // while(条件){
    //  code
  // }

  //do while
  // do{
  //   code
  // }while(条件)

  //break 语句
  /*
  break 可用于switch 和 循环语句中，但只能跳出一层的循环
   */
  // continue语句
  /*
  终止本轮循环，进行下一轮循环，不建议用在while中以避免死循环，
  循环依旧继续执行
   */
}
