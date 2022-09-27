main() {
  // Numeros
  // Inicializacion con valores
  int a = 10;
  double b = 5.5;

  //null safety
  int? c = null;
  //print(c);

  // declaracion de variables
  int _a = 30;
  double $b = 40;

  double resultado = _a + $b;
  //print(resultado);

  //Strings
  // no recomendable usar var
  var nombre = 'Tony';

  // Especifica el tipo
  String name = 'Tonny';

  //null safety
  String? noombre2 = null;
  //print(noombre2);

  // Comillas simples, dobles, triple
  String simples = 'Simples';
  String dobles = "Dobles";
  String multinea = ''' 
  Hola
  O'Çonor ''';

  //print(multinea);

  //Concatenar valores›
  String nombre3 = "Thor";
  String apellido = "Odinson";

  String nombreCompleto = '$nombre3 $apellido';
  //print(nombreCompleto);

  // Boolean
  bool isActive = true;
  bool isNoActive = !isActive;
  //print(isNoActive);

// Lists
//Usar el tipado
//var villanos = ['Lex', 'Re skull', 'Dom',1,true, 2, 3];

  List<String> villanos = ['Lex', 'Re skull', 'Dom'];
  villanos.add('Duende verde');
  villanos.add('Duende verde');
  villanos.add('Duende verde');
  villanos.add('Duende verde');

  var villanosSet = villanos.toSet();
  //print(villanosSet.toList());

// Sets
// Sets y las listas son parecidos
  Set<String> villanos2 = {'Lex', 'Re skull', 'Dom'};

  villanos2.add('Duende verde');
  // print(villanos2);

  //Maps Diccionarios/Pares de valores/ Objetos literales

  Map<String, dynamic> ironman = {
    'nombre': 'Tony Stark',
    'poder': 'Inteligencia y el dinero',
    'nivel': 9000,
  };
  //Acceder al valor con la llave entre corchetes
  print(ironman['nivel']);

  //Llave de tipo int
  Map<int, dynamic> ironmanNum = {
    1: 'Tony Stark',
    2: 'Inteligencia y el dinero',
    3: 9000,
  };

  print(ironmanNum[3]);

  //Otra forma de definir un mapa:
  Map<String, dynamic> capitan = new Map();
  capitan.addAll({'nombre': 'Steve', 'poder': 'Soportar valor', 'nivel': 9000});

  //Se puede asignar otro Map, siempre y cuando cumpla los tipos de llaves y valores
  capitan.addAll(ironman);
}
