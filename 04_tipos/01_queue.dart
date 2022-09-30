import 'dart:collection';

main() {
  //Util al tener una secuencia de valores, procesar uno despues de otro
  Queue<int> cola = new Queue();
  cola.addAll([10, 20, 30, 40, 50]);
  //Lista q se utiliza de maner secuencial
//{10, 20, 30, 40, 50} se ve como un SET

//Tipo de dato para barrer la cola
  Iterator i = cola.iterator;

  while (i.moveNext()) {
    //Valor actual del iterator
    //Equivalente a un for
    print(i.current);
  }
}
