function pantallaPerder() {
  
  //Convertir millis a segundos
  let tiempoActual2 = millis();
  let tiempoTranscurrido2 = (tiempoActual2 - tiempoCreditos2) / 1000; // Convertir a segundos

  //Texto
  background(0);
  fill(250);
  textAlign(CENTER, CENTER);
  textSize(50);
  text("¡Perdiste!", 400, 300);

  //Temporizador para pasar a estado 4
  if (tiempoTranscurrido2 >= 2) {
    estado = 4;
  }
}
