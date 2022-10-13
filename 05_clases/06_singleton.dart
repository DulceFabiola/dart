import 'clases/mi_servicio.dart';

void main() {
  final spotifyService1 = new MiServicio();
  spotifyService1.url = 'https://api.spotify.com';

  final spotifyService2 = new MiServicio();
  spotifyService2.url = 'https://api.spotify.com/v2';

  print(spotifyService1 ==
      spotifyService2); // true, apuntan al mismo lugar de memoria
  print(spotifyService1);
  print(spotifyService2);

  /*false porque son dos instancias en memonoria diferentes,
       auqnue todos sus valores sean identicos
       no utilizamos los constructores constantes ni tampoco son constantes
       estan en ubicaciones de memoria diferentes ---> eso los hade diferentes 

       El patron singleton 

     esta instruccion ---> new MiServicio() siempre regresa la instancia generada de la clase
     sin crear un nuevo espacio en memoria

     Toda la configuración del singleton se realiza en els ervicio 
      */
}
