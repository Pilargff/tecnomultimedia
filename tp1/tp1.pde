//Pilar Griffo
//Legajo 84422/9
//Comisión 3 - Aula 2
//tp1

String estado = "inicio";
int fotograma = 0;
int movimiento = 0;
PImage imagen0;
PImage imagen1;
PImage imagen2;
PImage imagen3;

void setup() {

  size(640, 480);
  frameRate(30);

  imagen0 = loadImage("data/imagen0.jpg");
  imagen1 = loadImage("data/imagen1.jpg");
  imagen2 = loadImage("data/imagen2.jpg");
  imagen3 = loadImage("data/imagen3.jpg");
}

void draw() {

  if ( estado.equals("inicio") ) {

    //INICIO

    image(imagen0, 0, 0, 640, 480);

    //BOTÓN

    noStroke();
    fill(186, 250, 114);
    circle(320, 400, 110);
    fill(0);
    textSize(24);
    textAlign(LEFT);
    text("INICIAR", 280, 410);

    //TITULO
    
    fill(220);
    textSize(34);
    textAlign(CENTER);
    text("Black Box \nTony Oursler \n2021", movimiento, 50);

    //MOVIMIENTO TEXT0 Y CAMBIO DE PANTALLA

    movimiento++;
    if (movimiento >= 460) {
      movimiento = 0;
    }
  } else if ( estado.equals("pantalla 1")  ) {
     
     
    //PANTALLA1

    image(imagen1, 0, 0, 640, 480);
    fill(250, 250, 250);
    textAlign(LEFT);
    textSize(24);
    text("Black Box es la primera gran exposición de \nun museo en Asia dedicada al alcance completo de la \ncarrera de Tony Oursler", movimiento, 50);

    //MOVIMIENTO TEXTO Y CAMBIO DE PANTALLA

    
    movimiento++;
    
    fotograma++;
    
    if (fotograma >= 150) {
      estado = "pantalla 2";
      movimiento = 0;
      fotograma = 0;
    }
    
  } else if ( estado.equals("pantalla 2") ) {

    //PANTALLA2

    image(imagen2, 0, 0, 640, 480);
    fill(250, 250, 250);
    textAlign(LEFT);
    textSize(24);
    text("Oursler desarrolla videoesculturas realistas \nque simulan características psicológicas humanas", movimiento, 390);

    //MOVIMIENTO TEXT0 Y CAMBIO DE PANTALLA

    movimiento++;

    fotograma++;

    if (fotograma>= 150) {
      estado = "pantalla 3";
      movimiento = 0;
      fotograma = 0;
    }
  } else if ( estado.equals("pantalla 3") ) {


    //PANTALLA3

    image(imagen3, 0, 0, 640, 480);
    fill(250, 250, 250);
    textAlign(LEFT);
    textSize(24);
    text("Black Box revela su fascinación por el fenómeno \nmístico a través de tecnologías de proyección, \npantallas de video y dispositivos ópticos", movimiento, 370);


    //MOVIMIENTO TEXT0 Y CAMBIO DE PANTALLA

    movimiento++;

    fotograma++;

    if (fotograma>= 150) {
      estado = "pantalla final";
      fotograma = 0;
      movimiento = 0;
    }
  } else if ( estado.equals("pantalla final") ) {

    //PANTALLA FINAL

    background(0);

    //BOTÓN REINICIO

    noStroke();
    fill(186, 250, 114);
    circle(320, 240, 110);
    fill(0);
    textSize(20);
    text("REINICIAR", 276, 250);
  }
}

void mousePressed() {
  if ( estado.equals("inicio") ) {
    if ( dist(mouseX, mouseY, 320, 400 ) < 60 ) {

      estado = "pantalla 1";
      fotograma = 0;
    }
  } else if ( estado.equals("pantalla 1") ) {

    estado = "pantalla 2";
    fotograma = 0;
  } else if ( estado.equals("pantalla 2") ) {

    estado = "pantalla 3";
    fotograma = 0;
  } else if ( estado.equals("pantalla 3") ) {

    estado = "pantalla final";
    fotograma = 0;
  } else if ( estado.equals("pantalla final") ) {
    if ( dist(mouseX, mouseY, 320, 240 ) < 60 ) {
      estado = "inicio";
    }
  }
}
