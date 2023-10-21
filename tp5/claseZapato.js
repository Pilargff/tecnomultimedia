class claseZapato {
  //Constructor
  constructor() {
    this.tamaño = 50;
    this.mostrando = false;
    this.ultimaVez = 0;
    this.imagen = 0;
  }
  
//Metodo para dibujarlo
dibujar() {
    if (this.mostrando) {
      if (this.imagen) {
        image(this.imagen, this.x, this.y, this.tamaño, this.tamaño);
      }
    }
  }
//Metodo para asignar tiempos de duracion ay aparicion del zapato
actualizar() {
  let tiempoActual = millis();
  if (this.mostrando === false && tiempoActual - this.ultimaVez >= 2000) {
    this.generarNuevoZapato(grilla);
  } else if (this.mostrando === true && tiempoActual - this.ultimaVez >= 1000) {
    this.mostrando = false;
  }
}

//Metodo para que aparezca el zapato otra vez despues de los 2 segundos
generarNuevoZapato(grilla) {
  let i = int(random(grilla.filas));
  let j = int(random(grilla.columnas));
  let cuadrados = grilla.cuadrados[i][j];
  this.x = cuadrados.x;
  this.y = cuadrados.y;
  this.imagen = imagen; 
  this.mostrando = true;
  this.ultimaVez = millis();
}
}
