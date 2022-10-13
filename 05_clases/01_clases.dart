import 'clases/persona.dart';

main() {
  // final persona={
  //   'nombre':'Fernando',
  //   'edad':33,
  //   'bio':'Nació en Guadalajara'
  // }

  //Crear una instancia de la clase: Utilizar la clase para crear una variable
  //new es opcional


  final persona = new Persona(33, 'Fernando');

  //Recomedable iniciar en el contructor por defecto
  // persona.nombre = 'Fernando';
  // persona.edad = 33;

  //Sobreescribiendo la prop bio, gracias al setter 
  //persona.bio = 'Nació por ahí';

//Usar un constructor con nombre
 final persona2 = new Persona.persona30('María');
 final persona3 = new Persona.persona40('Fabiola');

 //Argumento posicional obligatorio
 final persona4 = new Persona.persona50(nombre:'Fa');

 //Argumento posicional
 final persona5=new Persona.persona60(20,'Argumento Posicional');

 //Argumentos por nombre
 final persona6=new Persona.persona70(edad:21, nombre:'Argumentos por nombre');



  //Sobreescribir alguna propiedad que tenga una clase
  //las clases extienden o heredan la propiedad de una clase global llamda Object en la cual viene el metodo .toString()
  
//El setter es el método para establecer el valor a una propiedad
  //persona.bio='El valor cambió';
  print(persona6);


}
