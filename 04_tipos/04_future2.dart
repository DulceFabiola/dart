import 'dart:io';

main() {
  //Leer un archivo puede ser sincrono o asincrono
  // Path donde se encuentra el archivo de dart Directory.current.path
//En windows el path se indica el doble slach invertido \\
  File file =
      new File(Directory.current.path + '/04_tipos/assets/personas.txt');

  Future<String> f = file.readAsString(); //Se ejectuta de manera asincrona
  //f.then((data) => print(data));

  // f.then((data) => print(data)); o se podria llamar al print con el primer argumento que lo resuelve
  f.then(print);

  print('fin del main asincrono');

  //Ejecutar de manera sincrona
  String fS = file.readAsStringSync();
  print(fS);

  print('fin del main sincrono');
}
