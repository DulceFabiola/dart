main() {
  int a = 10, b = 10;
  int resultado = sumar(a, b);
  int resultadoFlecha = sumar(a, b);

  List<int> listado = [1, 2, 3, 4, 5, 6, 6, 7, 8, 9, 10, 10, 1];

//Where: solo regresa los elementos que cumplen la condicion
//Parecido a un ciclo for, es un iterable
//Elemento q puede trabajarse de manera secuencial
  var nuevoListado = listado.where((numero) {
    return numero >= 4;
  });

//Funcion de flecha
  var nuevoListadoFlecha = listado.where((numero) => numero >= 4);

//Valores unicos, convertir a una lista nuevamente
//Lista de valores unicos
  print(nuevoListadoFlecha.toSet().toList());
}

int sumar(int x, int y) {
  return x + y;
}

int sumarFlecha(int x, int y) => x + y;
