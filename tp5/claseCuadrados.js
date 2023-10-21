class claseCuadrados {
  //Constructor
  constructor(x, y, tamaño) {
    this.x = x;
    this.y = y;
    this.tamaño = tamaño;
  }
//Metodo para dibujarlo
  mostrar() {
   
    stroke(0);
    fill(250);
    rect(this.x, this.y, this.tamaño, this.tamaño);
  }
}
