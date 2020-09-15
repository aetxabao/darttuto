/* https://bezkoder.com/dart-flutter-parse-json-string-array-to-object-list/ */

import 'dart:convert';

main() {
  String objText = '{"name": "bezkoder", "age": 30}';
  User user = User.fromJson(jsonDecode(objText));
  print(user);

  String arrayObjsText =
      '{"tags": [{"name": "dart", "quantity": 12}, {"name": "flutter", "quantity": 25}, {"name": "json", "quantity": 8}]}';
  var tagObjsJson = jsonDecode(arrayObjsText)['tags'] as List;
  List<Tag> tagObjs =
      tagObjsJson.map((tagJson) => Tag.fromJson(tagJson)).toList();
  print(tagObjs);

  String complexText =
      '{"title": "Dart Tutorial", "description": "Way to parse Json", "author": {"name": "bezkoder", "age": 30}, "tags": [{"name": "dart", "quantity": 12}, {"name": "flutter", "quantity": 25}]}';
  Tutorial complexTutorial = Tutorial.fromJson(jsonDecode(complexText));
  print(complexTutorial);

  String wordsArrayText = '["dart", "flutter", "json"]';
  var wordsArrayDynamic = jsonDecode(wordsArrayText) as List;
  var wordsArray = new List<String>.from(wordsArrayDynamic);
  print(wordsArray);
}

class User {
  String name;
  int age;

  User(this.name, this.age);

  factory User.fromJson(dynamic json) {
    return User(json['name'] as String, json['age'] as int);
  }

  @override
  String toString() {
    return '{ ${this.name}, ${this.age} }';
  }
}

class Tag {
  String name;
  int quantity;

  Tag(this.name, this.quantity);

  factory Tag.fromJson(dynamic json) {
    return Tag(json['name'] as String, json['quantity'] as int);
  }

  @override
  String toString() {
    return '{ ${this.name}, ${this.quantity} }';
  }
}

class Tutorial {
  String title;
  String description;
  User author;
  List<Tag> tags;

  Tutorial(this.title, this.description, this.author, [this.tags]);

  factory Tutorial.fromJson(dynamic json) {
    if (json['tags'] != null) {
      var tagObjsJson = json['tags'] as List;
      List<Tag> _tags =
          tagObjsJson.map((tagJson) => Tag.fromJson(tagJson)).toList();

      return Tutorial(json['title'] as String, json['description'] as String,
          User.fromJson(json['author']), _tags);
    } else {
      return Tutorial(json['title'] as String, json['description'] as String,
          User.fromJson(json['author']));
    }
  }

  @override
  String toString() {
    return '{ ${this.title}, ${this.description}, ${this.author}, ${this.tags} }';
  }
}
