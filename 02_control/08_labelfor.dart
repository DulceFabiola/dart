main() {
  //Ponerle identificadores a los ciclos
  outerLoop:
  for (int i = 0; i < 5; i++) {
    print('Valor de i: $i');

    innerLoop:
    for (int j = 0; j < 5; j++) {
      print('Valor de i: $j');

      if (j == 2) {
        break outerLoop;
      }
    }
  }
}
