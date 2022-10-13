//CameCase
class MiServicio {
  String url = 'https://abc';
  String key = 'ABC123';
//Propiedad estática privada
//final para que no se modifique
//MiServicio del mismo tipo de la clase
//Una propiedad que regres una nueva instancia de este servicio
  static final MiServicio _singleton = new MiServicio._internal();

  /*
  Constructor factory
  revisar si ya existe una instancia y si no, crearla
   */

  factory MiServicio(){
    return _singleton;
  }

/*COnstructor con nombre
_name en un método, propiedad o constructor lo vuelve privado */
  MiServicio._internal();
}
