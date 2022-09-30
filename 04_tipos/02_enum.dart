main() {
  //0=volumen bajo, 1= volumen medio, 2=volumen alto
  int volumen = 1;

  switch (volumen) {
    case 0:
      print('Volumen bajo');
      break;
    case 1:
      print('Volumen medio');
      break;
    case 2:
      print('Volumen alto');
      break;
    default:
  }

  Audio volumenEnum = Audio.alto;
  switch (volumenEnum) {
    case Audio.bajo:
      print('Volumen bajo');
      break;
    case Audio.medio:
      print('Volumen medio');
      break;
    case Audio.alto:
      print('Volumen alto');
      break;
    default:
  }
}

//Una enumeracion es como una funcion. esta fuera del main
//Enumeracion Capitalizado el nombre
enum Audio { bajo, medio, alto }
