void main() {
  var details0 = {'Usrname': 'tom', 'Password': 'pass@123'};
  print(details0);
  details0['Uid'] = 'U1oo1';
  print(details0);

  var details1 = new Map();
  details1['Usrname'] = 'admin';
  details1['Password'] = 'admin@123';
  print(details1);

  var details2 = {'Usrname': 'tom', 'Password': 'pass@123'};
  print(details2.keys);
  print(details2.values);
  print(details2.length);
  print(details2.isEmpty);
  var hosts = {};
  print(hosts.isEmpty);

  Map m = {'name': 'Tom', 'Id': 'E1001'};
  print('Map :${m}');
  m.addAll({'dept': 'HR', 'email': 'tom@xyz.com'});
  print('Map after adding  entries :${m}');
  m.clear();
  print('Map after invoking clear()  :${m}');
  m = {'name': 'Tom', 'Id': 'E1001'};
  print('Map :${m}');
  dynamic res = m.remove('name');
  print('Value popped from the Map :${res}');
  print('Map :${m}');

  var usrMap = {"name": "Tom", 'Email': 'tom@xyz.com'};
  usrMap.forEach((k, v) => print('${k}: ${v}'));
}
