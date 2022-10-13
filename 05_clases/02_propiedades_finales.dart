class Cuadrado {
  final int lado;
  final int area;

//Contructor por defecto
//Los finales no tienen un setter ya que no se puede reasignar una variable final

//   Cuadrado(this.lado, this.area);

//ejecutar cuando se inicializa el constructor
//Definición del contructor seguido de dos puntos :
  Cuadrado(int lado)
      : this.lado = lado,
        this.area = lado * lado;
}

main() {
  final cuadrado = new Cuadrado(10);
  print(cuadrado.area);
}
