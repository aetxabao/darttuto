void main() {
  List<int> lst0 = [1, 2, 3, 4, 5];
  lst0.add(6);
  print(lst0); // --> [1, 2, 3, 4, 5, 6]

  var lst1 = new List(3);
  lst1[0] = 12;
  lst1[1] = 13;
  lst1[2] = 11;
  //lst1.add(10); // error, tamaño fijo definido
  print(lst1); // --> [12, 13, 11]

  var lst2 = [1, 2, 3];
  print(lst2); // --> [1, 2, 3]

  var lst3 = new List();
  lst3.add(12);
  lst3.add(13);
  lst3.addAll([12, 13]);
  lst3.insertAll(0, [120, 130]);
  lst3.add(1);
  print(lst3); // --> [120, 130, 12, 13, 12, 13, 1]

  List lst4 = [1, 2, 3];
  lst4[0] = 123;
  print(lst4); // --> [123, 2, 3]

  List lst5 = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  lst5.replaceRange(0, 3, [11, 23, 24]);
  print(lst5); // --> [11, 23, 24, 4, 5, 6, 7, 8, 9]

  List lst6 = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  bool res1 = lst6.remove(1);
  dynamic res2 = lst6.removeAt(1);
  dynamic res3 = lst6.removeLast();
  lst6.removeRange(3, 5);
  print(lst6); // --> [2, 4, 5, 8]
}
