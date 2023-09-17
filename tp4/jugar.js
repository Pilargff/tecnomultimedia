function jugar() {

  //Convertir millis en segundos
  let tiempo = millis() / 1000;
  let tiempoActual = millis();
  let tiempoTranscurrido = (tiempoActual - tiempoInicio) / 1000;

  // Valores random del color
  let r = random(255);
  let g = random(255);
  let b = random(255);

  mostrarNumero = true

    //Fondo y borde
    background(250)
    noStroke()

    //Si pasan mas de 10 segundos el estado cambia a 3
    if (tiempoTranscurrido >= 10) {
    estado = 3;
  }

  // If para verificar que haya transcurrido el tiempo necesario para que aparezca la nueva ellipse
  if (tiempo - ultimoCirculo >= apareceCirculo && contador < 3) {
    ultimoCirculo = tiempo;
    CirculoFila = int(random(8));
    CirculoColumna = int(random(8));

    aparecioCirculo = true;
  }

  // If para construir el esquema de circulos
  for (let i = 0; i < 8; i++) {
    for (let c = 0; c < 8; c++) {
      let x = c * 90 + 90 / 2;
      let y = i * 90 + 90 / 2;

      // If para que la ellipse cambie de color
      if (aparecioCirculo && i === CirculoFila && c === CirculoColumna) {
        fill(r, g, b);

      //If para que siga negra
      } else {
        fill(0);
      }

      ellipse(x, y, tamañoEllipse, tamañoEllipse);
    }
  }
  //If para mostrar cambios en el contador
  if (mostrarNumero) {
    textSize(48)
      fill(69, 509, 200);
    text(contador, 750, 50); // Mostrar el número actual
  }

  //Temporizador
  textSize(32);
  fill(69, 59, 200);
  text(int(tiempoTranscurrido), 750, 750);

  textSize(28)
    text("Tiempo", 685, 750)
}


function mouseClicked() {
  if (aparecioCirculo && contador < 3) {

    // Verificar si se hizo click en la ellipse
    let distancia = dist(mouseX, mouseY, CirculoColumna * 90 + 90 / 2, CirculoFila * 90 + 90 / 2);

    if (distancia < tamañoEllipse / 2) {

      // Sumar puntos por cada click
      contador++;
    }

    aparecioCirculo = false; // Reiniciar el estado de aparecioCirculo
    mostrarNumero = false; // Desactivar la visualización del contador
  }

  // If para que si el contador supera los 3 puntos el estado cambie a 2
  if (contador >= 3) {
    estado = 2
    contador = 0 
  }
  
}
