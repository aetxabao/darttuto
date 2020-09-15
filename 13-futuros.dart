/* https://api.dart.dev/stable/2.9.1/dart-async/Future-class.html */

Future<String> procesarOrden() => Future.delayed(
      Duration(seconds: 2),
      () => 'Procesado',
    );

void main() {
  print("Pedir orden.");
  procesarOrden().then((data) => print(data));
  print("FIN");
}
