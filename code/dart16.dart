// 讲解dart中的库
// 具有某一功能的代码抽离出来就是一个库

/*
Dart中的库主要有3种：
1. 自己编写的库
import 'path';
2.系统内置库
import 'dart:math'等等
3.Pub包管理系统中的库

1） 需要在自己项目根目录新建一个pubspec.yaml文件
2） 在上述文件内配置名称，描述，依赖等信息
3) 运行 pub get 将包下载到本地
4) 项目中引入并使用 import 'package:...'
 */

import 'dart:io'; // 可进行http请求
import 'dart:math';

void main() async {
  print(min(12, 34));

  /*
  async 与 await 
  async 方法内才能使用await方法
  如果调用别的async方法必须使用await关键字
  async 关键字可以使方法变成异步
  await 等待异步方法执行完成
   */
  test() async {
    return '异步方法';
  }

  var result = await test();
  print(result);
}
