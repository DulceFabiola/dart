import 'dart:io';

main() async {
  String path = Directory.current.path + '/04_tipos/assets/personas.txt';

  //Para usar el await hay q estar dentro de una funcion async
  await leerArchivo(path).then(print);

  print('Fin del main');
}

//Future que resuelve un string
// Future<String> leerArchivo(String path) {
//   File file = new File(path);
//   return file.readAsString();
// }

//El async tranforma una funcion comun a una funcion q retorna un future
leerArchivo(String path) async {
  File file = new File(path);
  return file.readAsString();
}
