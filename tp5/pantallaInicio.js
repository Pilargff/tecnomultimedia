function pantallaInicio() {

  let numCirculos = 10;
  noStroke()
background(139, 225, 255)

    if (estado == 0) {
    //Ciclo for para que aparezcan circulos
    for (let i = 0; i < numCirculos; i++) {

      // Posición y colores aleatorios para los circulos
      let x = random(width)
        let y = random(height);
      let r = random(255);
      let g = random(255);
      let b = random(255);

      fill(r, g, b);
      ellipse(x, y, 80, 80); 
    }

    //Texto
    fill(0);
    textAlign(CENTER, CENTER);
    stroke(0)
      textSize(48);
    text("Catch/The/Shoe", 200, 200);

    textSize(20);
    text("¡Agarrá el zapato 3 veces y ganá!", 200, 300);
    textSize(15);
    text("Presioná espacio para empezar", 200, 400);
  }
}
