class Herramientas {
  /*
  Al ser un método estatico se tiene acceso sin crear 
  NO es conveiente hacerlo modificable, solo de lectura ---> usar const 
  */
  static const List<String> listado = [
    'Martillo',
    'Llave inglesa',
    'Desarmador'
  ];

  /*
  Un método estático es un método que se puede llamar sin necesidad de 
  instanciar una clase
   */

  static void imprimirListado() => listado.forEach(print);

  /**
   static ---> Puedo acceder a esas propiedades y clases sin instanciar la clase
   una vez instanciada la clase, ya no se tiene acceso a las props y metodos dentro de la instancia
   */
}

void main() {
  final herr = new Herramientas();
  // herr.listado.forEach(print);

  /*Acceder al listado sin crear una nueva instancia
  Herramientas.listado.forEach(print);
  Instance member 'listado' can't be accessed using static access.*/

  /*Las propiedades estaticas forman parte de la clase
  no de una nueva intsancia de la misma
    herr.listado.forEach(print);
  */

  //NO es conveiente hacerlo modificable, solo de lectura
  //Herramientas.listado.add('Tenazas');
  //Herramientas.listado.forEach(print);

  //Llamamdo el método estático
  Herramientas.imprimirListado();
}
