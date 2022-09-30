main() {
  Future timeout = Future.delayed(Duration(seconds: 3), () {
    if (1 == 1) {
      //LANZA el error con el throw
      throw 'Auxilio, exploto esta cosa';
    }

    return 'Retorno del futuro';
  });

//cualquier error lanzado en el future se procesara con el catcherror
//ATRAPA el error
//de lo contrario seria una excepcion no controlada
  timeout.then(print).catchError((error) => print(error));

  print('fin del main');
}
