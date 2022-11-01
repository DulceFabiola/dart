/*
Mixins darle las propiedades y metodos que tiene una clase a otra 
parecido a los extends
practicamente cuaquier clase puede ser un mixin
Cambias class por mixin

Class VS Mixin
1. Los mixins no pueden ser instanciados (al igual que una clase abstracta)
2. Los mixins no pueden tener constructores

Hechos para heredar y tranferir metodos y propiedades


 */

mixin Logger {
  void imprimir(String texto) {
    final hoy = DateTime.now();
    print('$hoy::: $texto');
  }
}

mixin Logger2 {
  void imprimir2(String texto) {
    final hoy = DateTime.now();
    print('$hoy::: $texto');
  }
}

//las clases solo pueden ser extendidas de otras clases, no de mixins
//se utiliza con la palabra with
abstract class Astro with Logger {
  Astro() {
    imprimir('---Init  Astro---');
  }

  void existo() {
    imprimir('---Soy un ser celestial y existo---');
  }
}

class Asteroide extends Astro with Logger, Logger2 {
  String nombre;
//Constructor
  Asteroide(this.nombre) {
    imprimir('Soy $nombre');
    imprimir2('Soy $nombre');
  }
}

main() {
  final ceres = new Asteroide('Ceres');
}
