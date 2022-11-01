class Persona {
  String nombre;
  int edad;

/*Creando dos argumentos obligatorios, posicionales
el this indica que el valor que se reciba como argumento
se establecera en las propiedades como valor inicial
*/

  Persona(this.nombre, this.edad);

  void imprimirNombre() => print('Nombre: $nombre, Edad: $edad');
}

//The superclass 'Persona' doesn't have a zero argument constructor.
class Cliente extends Persona {
  String? direccion;
  List ordenes = [];

  Cliente(int edadActual, String nombreActual)
//Los dos puntos ejecutan primero el proceso antes de q se cree la instancia
      :
        //llamar propiedades y metodos de la clase padre (Persona)
        super(nombreActual, edadActual);

  //Indica que se esta sobreescribiendo un metodo del padre
  @override
  void imprimirNombre() {
    //Hacer referencia al metodo del padre
    super.imprimirNombre();
    print('Cliente: $nombre ($edad)');
  }
}

void main(List<String> args) {
  final pedro = new Cliente(33, 'Pedro');

  pedro.imprimirNombre();
}
