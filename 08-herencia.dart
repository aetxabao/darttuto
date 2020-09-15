void main() {
  final vehiculos = new List<Vehiculo>();
  vehiculos
    ..add(new Moto(fabricante: 'Kawasaki'))
    ..add(new Moto())
    ..add(new Coche(marca: 'VW'))
    ..add(new Coche());
  vehiculos.forEach((v) => print(v));
}

abstract class Vehiculo {
  double velocidad;
}

class Moto extends Vehiculo {
  String fabricante;
  Moto({this.fabricante});
  String toString() => "Moto $fabricante";
}

class Coche extends Vehiculo {
  String marca;
  Coche({this.marca});
  String toString() => "Coche ${marca ?? 'X'}";
}
