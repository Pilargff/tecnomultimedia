function pantallaGanar() {
  
  //Convertir millis en segundos
  let tiempoActual = millis();
  let tiempoTranscurrido = (tiempoActual - tiempoCreditos) / 1000; // Convertir a segundos

  background(0);

  //Texto
  fill(250);
  textAlign(CENTER, CENTER);
  textSize(50);
  text("¡Bien Hecho!", 400, 400);

  //temporizador para pasar a estado 4
  if (tiempoTranscurrido >= 2) {
    estado = 4; // Cambiar a estado 4 después de 10 segundos
  }
}
