//Función para dibujar pantallas
void Pantalla(PImage fondo, String texto) {
push();
//Ubicación de imagenes
  background(0);
  image(fondo, 0, 0, 600,300);
  //Aspecto del texto
  fill(255);
  stroke(255);
  textSize(18);
  textLeading(22);
  textAlign(CENTER, CENTER);
  text( texto, 300, height/3*2, width/1.1, height/2);
  pop();
}
