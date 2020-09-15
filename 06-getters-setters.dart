class Student {
  String _name;
  int _age;

  String get name {
    return _name;
  }

  void set name(String name) {
    this._name = name;
  }

  void set age(int age) {
    if (age < 3) {
      print("Age should be greater than 3");
    } else {
      this._age = age;
    }
  }

  int get age {
    return _age;
  }
}

void main() {
  Student s1 = new Student();
  s1.name = 'MARK';
  s1.age = 2;
  print(s1.name);
  print(s1.age);
}
