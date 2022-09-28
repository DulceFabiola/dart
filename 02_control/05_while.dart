import 'dart:io';

main() {
  String continuar = 'y';
  int contador = 0;

  // Evalua la condicion, y si se cumple ejecuta
  //Hasta q la condicion ya no se cumpla
  while (continuar == 'y') {
    contador++;
    stdout.writeln('Contador:$contador');
    stdout.writeln('Desea continuar? (y/n)');

    continuar = stdin.readLineSync() ?? 'n';
  }
}
