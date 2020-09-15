void main() {
  printMsg();
  // hello
  print(test());
  // 123
  test_param1(123);
  // 123
  // null
  test_param2(123);
  // 123
  // null
  test_param2(123, s1: 'hello');
  // 123
  // hello
  test_param2(123, s2: 'hello', s1: 'world');
  // 123
  // world
  test_param3(123);
  // 123
  // 12
}

printMsg() => print("hello");

int test() => 123;
// returning function

test_param1(n1, [s1]) {
  print(n1);
  print(s1);
}

test_param2(n1, {s1, s2}) {
  print(n1);
  print(s1);
}

void test_param3(n1, {s1: 12}) {
  print(n1);
  print(s1);
}
