class Vehiculo {
  bool encendido = false;

  void encender() {
    encendido = true;
    print('vehiculo encedido');
  }

  void apagar() {
    encendido = false;
    print('vehiculo apagado');
  }
}

class Carro extends Vehiculo {
  //Extends sirve para darle todas las propiedaes
  //y metodos que tiene una clase a otra clase q va a recibirlas

  int kilometraje = 0;
}

main() {
  final ford = new Carro();
  ford.encender();
}
