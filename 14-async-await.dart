void main() async {
  print('Se pide una palabra aleatoria.');
  String data = await httpGet('https://random-word-api.herokuapp.com/word');
  print(data);
  print('FIN');
}

Future<String> httpGet(String url) {
  return Future.delayed(new Duration(seconds: 2), () {
    return '["fake"]';
  });
}
