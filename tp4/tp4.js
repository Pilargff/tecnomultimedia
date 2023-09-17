// Pilar Griffo
// Legajo 84422/9
// Comision 3
//TP4
//Video: https://youtu.be/oWrCHJRrSsA
//Declaración de variables
let espacio = 30;
let tamañoEllipse = 75;
let apareceCirculo = 1; // Aparición cada 3 segundos
let estaCirculo = 3; // Duración de la aparición durante 3 segundos
let ultimoCirculo = 0;
let aparecioCirculo = false;
let CirculoFila = -1;
let CirculoColumna = -1;
let contador = 0; // Variable para llevar un seguimiento del número
let estado = 0
let mostrarNumero = false;
let tiempoInicio;
let tiempoCreditos;
let tiempoCreditos2;


function setup() {
  createCanvas(800, 790);
}


function draw() {

  //If asignacion de pantallas a estados
  if (estado == 0) {
    pantallaInicio()
  } else if (estado == 1) {
    jugar()
  } else if (estado == 2) {
    pantallaGanar()
  } else if (estado == 3) {
    pantallaPerder()
  } else if (estado == 4) {
    pantallaCreditos()
  }
}

function mousePressed() {
  
  //If estado cambia segun el temporizador
  if (estado == 0) {
    estado = 1;
    tiempoInicio = millis()
  } else if (estado == 1) {
    tiempoCreditos = millis();
  } else if (estado == 2) {
    estado = 3;
    tiempoCreditos2 = millis()
  } else if (estado == 3) {
    estado = 4;
  }
}

//If estado cambia si se presiona cualquier tecla
function keyPressed( ) {
  if (estado == 4) {
    estado = 0
  }
}
