class claseGrilla {
  //Constructor
  constructor() {
    this.filas = 8;
    this.columnas = 8;
    this.tamañoCuadrados = 50;
    this.cuadrados = [];
    
//Ciclo for que recorre un arreglo con objetos de la clase cuadrados para generar filas y columnas
    for (let i = 0; i < this.filas; i++) {
      this.cuadrados[i] = [];
      for (let j = 0; j < this.columnas; j++) {
        this.cuadrados[i][j] = new claseCuadrados(i * this.tamañoCuadrados, j * this.tamañoCuadrados, this.tamañoCuadrados);
      }
    }
  }
  
//Metodo para dibujarlo
  dibujar() {
    background(139, 225, 255)
    for (let i = 0; i < this.filas; i++) {
      for (let j = 0; j < this.columnas; j++) {
        this.cuadrados[i][j].mostrar();
      }
    }
  }
}
