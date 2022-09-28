import 'dart:io';

main() {
  String continuar = 'y';
  int contador = 0;

  // Ejecuta una vez y posterior evalua la condicion
  //A diferencia del while, q primero evalua la condicion

  do {
    contador++;
    stdout.writeln('Contador:$contador');
    stdout.writeln('Desea continuar? (y/n)');

    continuar = stdin.readLineSync() ?? 'n';
  } while (continuar == 'y');
}
