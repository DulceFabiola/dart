/** 
 *  Dado el siguiente código 
 *    Optimizarlo lo más posible usando funciones
 *    y todo lo visto en el curso
 * 
 *  Ver el primer ejemplo:
*/
import 'dart:io';

main() {
  // Ejemplo:
  // Crear una función para imprimir STDOUTS en lugar de
  // la siguiente línea. Luego todos los stdouts deberían ser
  // llamados usando nuestra función personalizada
  procesarUsuario(1500, 1);
  // Persona 2
  procesarUsuario(1800, 2);
}

void printOut(String message) => stdout.writeln(message);

void read() => stdin.readLineSync() ?? '';

void procesarUsuario(double salario, int i) {
  printOut('=========== Usuario ${i} =============');
  printOut('¿Cúal es su nombre?');
  String nombre = stdin.readLineSync() ?? '';

  printOut('¿Qué edad tienes?');
  String edad = stdin.readLineSync() ?? '';

  printOut('¿En qué país naciste?');
  String pais = stdin.readLineSync() ?? '';

  final Map<String, dynamic> usuario = {
    'nombre': nombre,
    'edad': edad,
    'pais': pais
  };

  printOut('Usuario 1 sin deducciones');
  printOut(usuario.toString());

  double deducciones = salario * 0.15;
  double salarioNeto = salario - deducciones;

  usuario['salario'] = salario;
  usuario['deducciones'] = deducciones;
  usuario['salarioNeto'] = salarioNeto;

  printOut(usuario.toString());
}
