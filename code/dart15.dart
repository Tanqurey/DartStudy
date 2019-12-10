// 讲解泛型
// 泛型就是解决 类 接口 方法 的复用性 以及对不确定数据类型的支持
T getData<T>(T data) {
  return data;
}

// 一个泛型类

class PrintClass<T>{
  List list = new List<T>();
  void add(T data){
    print(data);
  }
}

// 一个泛型接口
abstract class Cache<T>{
  getByKey(String key);
  void setByKey(String key, T value);
}

// 实现
class FileCache<T> implements Cache<T>{
  // 本身也是一个泛型类
  @override
  getByKey(String key) {
    // TODO: implement getByKey
    return null;
  }

  @override
  void setByKey(String key, T value) {
    // TODO: implement setByKey
  }

}

void main() {
  getData<String>('hello'); // 调用时指定类型进行类型校验

  // 像之前学习的List就是一个泛型类
// 元素必须是int类型
  List list = new List<int>();
  list.add(1);

  var pc = new PrintClass<String>();

  var fc = new FileCache<String>();
}
