class Location {
  final double lat;
  final double lng;

/*Constructores constantes
Recordar que una constante es compilada en tiempo de compilación del programa
en el momento en que se ejecuta se define el espacio en memoria 
*/

  const Location(this.lat, this.lng);
}

main() {
  final sanFrancisco1 = new Location(18.2323, 39.900);
  final sanFrancisco2 = new Location(18.2323, 39.901);
  final sanFrancisco3 = new Location(18.2323, 39.901);

  // print(sanFrancisco1 == sanFrancisco2); //false
  // print(sanFrancisco2 == sanFrancisco3); //false

  const sanFrancisco4 = const Location(18.2323, 39.900);
  const sanFrancisco5 = const Location(18.2323, 39.901);
  const sanFrancisco6 = const Location(18.2323, 39.901);

  print(sanFrancisco4 == sanFrancisco5); //false
  print(sanFrancisco5 == sanFrancisco6); //true
}
