//Función para crear botón 1
void Botón1(float x, float y, float ancho, float alto, String texto) {

  // Aspecto del botón y over
  color fondo = color(212, 76, 250);
  color borde = color(232, 149, 255);
  color Over = color(225, 155, 254);

  // If para crear efecto over
  if (EstoyEnElBoton1(x, y, ancho, alto)) {
    fill(Over);
  } else {
    fill(fondo);
  }

  stroke(borde);

  // Texto del botón
  rectMode(CENTER);
  rect(x, y, ancho, alto);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(18);
  text(texto, x, y);
}

// Boolean para saber si el mouse se encuentra sobre el botón
boolean EstoyEnElBoton1(float x, float y, float ancho, float alto) {
  boolean toca;

  if (mouseX > x - ancho / 2 && mouseX < x + ancho / 2 &&
      mouseY > y - alto / 2 && mouseY < y + alto / 2) {
    toca = true;
  } else {
    toca = false;
  }
  return toca;
}

// Función para crear botón 2
void Botón2(float x, float y, float ancho, float alto, String texto) {
  // Aspecto del botón y over
  color fondo = color(59, 204, 255);
  color borde = color(136, 215, 250);
  color Over = color(137, 210, 255);

  // If para crear efecto over
  if (EstoyEnElBoton2(x, y, ancho, alto)) {
    fill(Over);
  } else {
    fill(fondo);
  }

  stroke(borde);

  // Texto del botón
  rectMode(CENTER);
  rect(x, y, ancho, alto);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(18);
  text(texto, x, y);
}

// Boolean para saber si el mouse se encuentra sobre el botón
boolean EstoyEnElBoton2(float x, float y, float ancho, float alto) {
  boolean toca;

  if (mouseX > x - ancho / 2 && mouseX < x + ancho / 2 &&
      mouseY > y - alto / 2 && mouseY < y + alto / 2) {
    toca = true;
  } else {
    toca = false;
  }
  return toca;
}

void botonReinicio(float x, float y, String texto) {

  color fondo = color(212, 76, 250);
  color Over = color(225, 155, 254);

  if (EstoyEnElBotonR(x, y)) {
    fill(Over);
  } else {
    fill(fondo);
  }

  noStroke();
  circle(x, y, 110);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(16);
  text(texto, x, y);

}

// Boolean para saber si el mouse se encuentra sobre el botón de reinicio
boolean EstoyEnElBotonR(float x, float y) {
  boolean toca;

  if (dist(mouseX, mouseY, x, y) < 60) {
    toca = true;
  } else {
    toca = false;
  }
  return toca;
}
