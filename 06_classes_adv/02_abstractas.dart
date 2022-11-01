/*Una clase abstracta es el cascaron
que nos permite que otras clases extiendan
solo hereda pero no se pueden crear instancias

Clase Abstracta sirve para dar metodos y propiedades 
a otras clases
*/

abstract class Vehiculo {
  bool encendido = false;

  void encender() {
    encendido = true;
    print('vehiculo encedido');
  }

  void apagar() {
    encendido = false;
    print('vehiculo apagado');
  }

  bool revisarMotor();
}

//Commnd + . override el metodo
class Carro extends Vehiculo {
  int kilometraje = 0;

//Sobreescribir metodos
  @override
  bool revisarMotor() {
    print('Motor OK');
    return true;
  }
}

main() {
  final ford = new Carro();
  ford.encender();
  ford.apagar();
  ford.revisarMotor();
}
