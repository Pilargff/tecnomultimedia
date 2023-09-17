function pantallaInicio() {

  let numCirculos = 10;
  noStroke()

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
      ellipse(x, y, 80, 80); // El radio se multiplica por 2 porque la función ellipse usa el diámetro, no el radio
    }

    //Texto
    fill(250);
    textAlign(CENTER, CENTER);
    stroke(0)
      textSize(100);
    text("Catch/The/Color", 400, 300);

    textSize(50);
    text("¡Tocá el color 3 veces y ganá!", 400, 500);
  }
}
