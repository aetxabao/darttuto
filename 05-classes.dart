void main() {
  final appBar = AppBar(title: Text('Hola'));
  print(appBar);
}

class Text {
  String mensaje;
  Text(this.mensaje);
}

class AppBar {
  Text title;
  AppBar({this.title});
  String toString() => "AppBar(title: Text('${title.mensaje}'))";
}
