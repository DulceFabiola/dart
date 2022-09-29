main() {
  //Los callbacks son funciones dentro de otra funcion
  //Los callback no son tan usados en dart, por lo general se usan tareas asincronas
  obtenerUsuario('100', (Map persona) {
    print(persona);
  });
}

void obtenerUsuario(String id, Function callback) {
  Map usuario = {'id': id, 'nombre': 'Juan Carlos'};
  callback(usuario);
}
