main() {
  //
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      //Salta a la siguiente iteracion
      //COntinua al siguiente valor
      continue;
    }
    print(i);

    if (i == 2) {
      //Sale del ciclo
      //Ya no sigas ejecutando ninguna iteracion en el ciclo
      //y continua con las demas lineas de codigo
      break;
    }
  }
}
