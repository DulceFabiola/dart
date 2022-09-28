main() {
  var a = 10;
  final b = 10;
  const c = 10;

  //Final y const no se puede reasignar
  // a = 20;
  // b = 20;
  // c = 20;

  // Asignar constate con tipo
  final double d = 15; //15=15.0
  const double e = 15;

  //Diferencia entre final y const
  final personasFinal = ['Juan', 'Pedro', 'Fernando'];
  const personasConst = ['Juan', 'Pedro', 'Fernando'];

  personasFinal.add('Maria');

  //Cannot add to an unmodifiable list
  //Const ---> Lista que no se puede modificar
  //personasConst.add('Maria');

//Se puede definir como un variable list de tipo strings
  final List<String> personasFinal1 = ['Juan', 'Pedro', 'Fernando'];
  const List<String> personasConst2 = ['Juan', 'Pedro', 'Fernando'];

  //Es comun ver el const antes de la definicion de elementos
  List<String> personasConst3 = const ['Juan', 'Pedro', 'Fernando'];

  late final double x;
  x = 10;
}
