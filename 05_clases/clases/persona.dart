class Persona {
  //Campos o propiedades
  //Tipo seguido del nombre de la propiedad

  String? nombre;
  int? edad;
  //Propiedad privada
  String _bio='hola soy una propiedad privada';

  //Get y sets
  //acceder a una propiedad privada 

  //se puede definir de esta manera
  // String get bio {

  // return _bio.toUpperCase(); 
  // }

  //Y tambien se puede definir como funcion de flecha y un retorno implicito

  String get bio => _bio.toUpperCase(); 

  //Retorno de un void implicito, solo establece el valor 
//   set bio(String texto)
//  {
//    _bio=texto; 
//  }


//Se puede declarar como función de flecha
set bio(String texto)=>  _bio=texto; 


  //Constructores
  //Un método que se llama en el momento en que se crea una nueva instancia de la clase
  //Tipos de construtores: 
  //Basico, por defecto mismo nombre de la clase 

  //   Inicialización de la clase, se pueden definir con argumentos

  // Persona( int edad, String nombre){ 
  //  propiedad= argumento que recibe el constructor
  //   this.edad=edad;
  //   this.nombre=nombre; 
  
  // }

  //Síntesis de Constructor básico con dos propiedades
  Persona( this.edad, this.nombre);

  //Se pueden definir argumentos posicionales, opciones, obligatorios
  //Edad siempre primer argumento, y el nombre es opcional y con nombre
  // Persona(this.edad, {this.nombre});

  //argumento con nombre obligatorio
  //Persona({@required this.edad, this.nombre});

  //Sobrecarga de operadores en dart -->Usar constructores con nombre
  //NombreDeClase.NombreDeConstructor
  Persona.persona30(this.nombre){
    this.edad=30;
  }

  //Se pueden declarar multiples constructores con nombre
   Persona.persona40(this.nombre){
    this.edad=40;
  }

//Creando contructor con nombre,
// que reciba la propiedad del nombre como argumento con nombre obligatorio
Persona.persona50({required this.nombre}){
  this.edad=50;
}

//Constructor con nombre, 
//con aegumento posicional
Persona.persona60(this.edad, this.nombre);

//Constructor con nombre, 
//con argumentos por nombre
Persona.persona70({this.edad, this.nombre});


  //Métodos
  //la clase es pasada a su forma de string
  @override //decorador que indica que se debe de sobreescribir del metodo padre (Object sobreescribir el toString)
  String toString() {
    //Implementar un metodo q regrese un string
    //return 'Hola Mundo';
    return '$nombre $edad $_bio';
  }
}
