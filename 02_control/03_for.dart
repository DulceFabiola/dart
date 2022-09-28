import 'dart:io';

main() {
  stdout.writeln('Íngresa numero a multiplicar');

  String numeroString = stdin.readLineSync() ?? '0';
  int numero = int.parse(numeroString);

  for (int i = 1; i <= 10; i++) {
    print('$numero * $i = ${numero * i} ');
  }

  /*
  Dato de entrada: base de la tabla de multiplicar
  (dato capturado por el usuario)
  ej. 2,4,6,8,10
  la salida esperada seria:
  2*1=2
  2*2=4
  2*3=6
 ...
  2*10=20

   */
}
