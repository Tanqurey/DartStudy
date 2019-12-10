// 讲解各种便利方法

main() {
  List list = ['Jenny', 'Frank', 'Jimmy'];

  for (var item in list) {
    print(list);
  }

  list.forEach((val) {
    print(val);
  });

  // 修改集合内的数据
  var newList = list.map((val) {
    return val + '***';
  });
  print(newList.toList());
 
 // 把集合内满足条件的元素组成一个集合并返回where
 var list2 = [1,2,4,5,6,23,67,667];
   var newList2 = list2.where((val) {
    return val > 4;
  });
  print(newList2.toList());

  // 判断List内有无满足条件的数据any
  var flag = list2.any((val){
    return val>888;
  });
  print(flag);

  
  // 判断List内是否所有元素都满足条件
  var flag2 = list2.every((val){
    return val>0;
  });
  print(flag2);

}
