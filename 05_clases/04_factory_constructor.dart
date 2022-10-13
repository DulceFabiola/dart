class Rectangulo {
  int base;
  int altura;
  int area;
  String tipo; //Cuadrado base=altura, resctangulo base !=altura

/*Regresa una nueva instancia de rectangulo 
o una instancia previamente existente 
Es utilizado para ejecuta procedimeintos o calculos
y determinar cual es el constructor que mejor se adpata a la necesidad q me piden
o regresar una instancia previamente creada 

Los factorys jamás pueden crear instancias de su clase tienen que 
regresar una nueva instancia o una instancia previamente creada

patron singleton y factory

Singleton es instancia única es un patrón de diseño que permite 
restringir la creación de objetos pertenecientes a una clase 
o el valor de un tipo a un único objeto.
Su intención consiste en garantizar que una clase solo tenga una instancia 
y proporcionar un punto de acceso global a ella.

El patrón de singleton garantiza que solo se cree una instancia de una clase

Se utiliza para evitar la creación de instancias desde cualquier otro lugar 
asi se garantiza que no puede haber más de una misma instancia.

El constructor factory solo crea una instancia la primera vez, 
y para las llamadas posteriores siempre devuelve la instancia creada anteriormente.

un constructor Factory nos ayuda a poder controlar cómo es creada la instancia. 
Un uso común es para mantener singletons, es decir si ya existe una instancia, 
retornar la misma instancia, caso contrario, inicializar una nueva.

También es util para el manejo de SQLite, así podemos tener una clase que funcione como un singleton,
 y así siempre tener la misma instancia de la base de datos cuando hacemos un NEW de la clase.

También te puede servir para tener diferentes formas de crear instancias, 
por ejemplo, si sólo tienes una propiedad, puedes crear un constructor factory 
que reciba sólo esa propiedad y calcule lo demás.
*/

  factory Rectangulo(int base, int altura) {
    if (base == altura) {
      return Rectangulo.cuadrado(base);
    } else {
      Rectangulo.rectangulo(base, altura);
    }
  }

  Rectangulo.cuadrado(int base) {
    this.base = base;
    this.altura = base;
    this.area = base * altura;
    this.tipo = 'Cuadrado';
  }

  Rectangulo.rectangulo(int base, int altura) {
    this.base = base;
    this.altura = base;
    this.area = base * altura;
    this.tipo = 'Rectángulo';
  }

  @override
  String toString() {
    return {
      //mapa
      'base': base,
      'altura': altura,
      'tipo': tipo,
    }.toString();
  }
}

void main() {
  final figura = new Rectangulo(10, 10);
  print(figura);
}
