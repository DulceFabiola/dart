import 'dart:async';

main() {
  //Stream de un unico listener
  final streamController = new StreamController<String>();

  //Stream con multiples suscripciones
  final streamControllerMultiple = new StreamController<String>.broadcast();

  //Primer argumento posicional, callback
  //Serie de argumentos por nombre
  streamController.stream.listen((data) => print('Despegando! $data'),
      onError: (err) => print('Error! $err'),
      //se dispara cuando se ejecuta el close
      onDone: (() => print('Mision Completa')),
      //terminar la ejecucion
      cancelOnError: false);

  //Colocar informacion al inicio del rio
  streamController.sink.add('Apollo 11');
  streamController.sink.add('Apollo 12');
  streamController.sink.add('Apollo 13');

//Lanzamos un error
  streamController.sink.addError('Houston, tenemos un problema');

  streamController.sink.add('Apollo 14');
  streamController.sink.add('Apollo 15');

//Cerrar el stream cuando ya no se recibira mas informacion
//ej. cerrar una pantalla, logout, etc

  streamController.sink.close();

  //Manejo de error previamewnte definido en el stream

  print('Fin del main');
}
