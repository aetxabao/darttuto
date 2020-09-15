import 'dart:io';

void main() {
  print("Nombre :");
  String name = stdin.readLineSync();
  print("Hola ${name}");
  stdin.echoMode = false;
  stdin.lineMode = false;
  stdout.write("Letra: ");
  int c = stdin.readByteSync();
  String s = String.fromCharCode(c);
  print(s);
  print("FIN");
}
