// 讲解List/Map/Set

// List
/*
常用属性：
length 长度
reversed 翻转
isEmpty 是否为空
isNotEmpty 是否不为空

常用方法：
add 追加元素
addAll 数组拼接
indexOf 根据具体值查找元素索引
remove 根据具体值删除元素
removeAt 删除指定索引处 的元素
fillRange(start,end) 修改
insert(index,val) 指定索引处插入元素
insertAll(index,list) 指定索引处插入整个list
toList() 其他类型转换为List类型
join() List 转换为字符串
split() 字符串分割为list
forEach
map
where
any
 */

void main() {
  List test = ['Katy', 'Lucy', 'Ada'];
  test.add('Jess');

  print(test.length);
  print(test.reversed);
  print(test.isEmpty);
  print(test.isNotEmpty);
  print(test.reversed.toList());

  print('---------------');

  test.addAll(['Sarah', 'Ray']);
  print(test);
  print(test.indexOf('Jess')); // 查不到返回-1
  test.remove('Jess');
  test.removeAt(0);
  print(test);

  // 修改固定范围数组的元素
  test.fillRange(0, 2, 'Fiona');
  print(test);

  // 插入
  test.insert(1, 'Julia');
  print(test);
  test.insertAll(1, ['Jenny', 'David']);
  print(test);

  print(test.join(','));

  var str2 = 'pesi-JOKER-Benny';
  print(str2.split('-'));

  // Set 无序且不可重复，不能通过索引获取值
  // 通过toList可以转换为数组
  var s = new Set();
  s.add('apple');
  s.add('pear');
  s.add('banana');
  s.addAll(['cocount','mango','peach']);
  print(s);

  // Map 映射

  var m1 = {
    'name':'P!nk',
    'age':54
  };

  m1['job'] = 'singer';

  /*
  常用属性：
  keys 获取所有的键值
  values 获取所有的值
  isNotEmpty 是否非空
  isEmpty 是否为空
  常用方法:
  remove(key) 删除给定key的数据
  addAll({...}) 合并映射或增添属性
  containsValue 查看映射内是否有某个值
   */
  print(m1.keys);
  print(m1.values);
  print(m1.isEmpty);
  print(m1.containsValue('singer'));
  m1.remove('job');
  print(m1);
  m1.addAll({
    'sex':'female',
    'fans':100000
  });
  print(m1);


}
