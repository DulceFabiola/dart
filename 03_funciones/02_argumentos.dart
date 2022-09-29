//Argumentos posicionales
//Usar el tipado y el null safety
void argumentosPosicionales(String? mensaje) {
  print(mensaje);
}

//Argumentos por nombre, utilizar entre llaves, son argumentos opcionales
//Usar el tipado y el null safety
//PAra hacer un parametro por nombnre obligatorio, usar required
void argumentosPorNombre({String? mensaje, required String nombre, int? edad}) {
  print('$mensaje $nombre $edad');
}

//Enmarcar entre llaves cuadradas, opcionales
void argumentosPosicionalesOpcionales(String mensaje,
    [String nombre = '<insertar nombre>', int edad = 20]) {
  print('$mensaje $nombre $edad');
}

void main(List<String> args) {
  argumentosPosicionales('123');
  argumentosPosicionalesOpcionales('hola', 'Fa');

  argumentosPorNombre(nombre: 'Fa');
}
