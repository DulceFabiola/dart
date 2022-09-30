main() {
  //Resuelve
  Future timeout = Future.delayed(Duration(seconds: 3), () {
    print('3 segundos');
    //Retorno del future
    return 'Retorno del futuro';
  });

//Retorna una vez q se resuelve el future
  timeout.then((texto) => print(texto));

  print('fin del main');
}
