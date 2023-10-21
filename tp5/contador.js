class claseContador {
  //Constructor
  constructor() {
    this.puntos = 0;
  }
//Metodo para  sumar un punto y ademas cambiar de estado al llegar a 3
  incrementar() {
    this.puntos ++;
    if(this.puntos >= 3){
      estado = 2
    }
  }
  
//Metodo para dibujarlo
  dibujar() {
    textSize(24);
    fill(0);
    text("Puntos:", 300, 450);
    text(this.puntos, 350, 450);
  }
}
