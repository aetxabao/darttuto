void main() {
  dynamic x = "tom"; // "is a type underlying all Dart objects"
  print(x);
  var y = 22; // "I don't care to notate what the type is here."
  y = 11;
  print(y);
  final val1 = 12; // no se puede cambiar
  // val1 = 11;//error
  print(val1);
  const pi = 10 / 3; // cte de tiempo de compilación
  print(pi);

  String str1 = 'this is a "single" line string';
  String str2 = "this is a 'single' line string";
  String str3 = '''this is a multiline 
string''';
  String str4 = """this is a multiline 
  string with spaces at the front of this line"""; // cuidado tabulaciones

  print(str1);
  print(str2);
  print(str3);
  print(str4);

  String s1 = "hello";
  String s2 = "world";
  String str = s1 + s2;

  print("The concatenated string : ${str}");
  print("The interpolated string : $s1 $s2");

  int n = int.parse('12');
  print(n);
  double d = double.parse('10.91');
  print(d);

  int num; // puede ser nulo, por defecto si no se asigna valor
  print(num); // --> null

  var a = 10;
  var res = a >= 12 ? "ge 12" : "lt 12";
  print(res);

  var i = null;
  var j = 3;
  var misteriosDelCosmos = i ?? j;
  print(misteriosDelCosmos); // --> 3

  var respuestaAlaVida = null;
  respuestaAlaVida ??= 42;
  print(respuestaAlaVida); // --> 42
  respuestaAlaVida ??= 69;
  print(respuestaAlaVida); // --> 42

  for (var i = 0; i < 3; i++) {
    print("Outerloop:${i}");
    if (i == 1) {
      continue;
    }
    for (var j = 0; j < 5; j++) {
      if (j == 3) {
        break;
      }
      print("\tInnerloop:${j}");
    }
  }
}
