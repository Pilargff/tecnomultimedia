// Tp2 tecnología multimedial
// Pilar Griffo
// 84422/9
// Comisión 3
// link video explicativo: https://youtu.be/d-jqAOtA94w

PImage img;
String estado = "inicio";
float move;

void setup () {
  size (800, 400);
  background(250);
  colorMode( HSB, 360, 100, 100 );

  img = loadImage("data/imagen.jpg");
}

void draw() {

  circulos1(657, 187, 600);
  circulos1(749, 253, 182);
  circulos1(695, 366, 200);
  circulos1(695, 82, 230);
  circulos1(464, 260, 350);
  circulos1(410, 60, 190);
  circulos1(568, 40, 134);
  circulos1(600, 200, 321);


  if (estado.equals("movimiento")) {
    circulos(657, 187, 600);
    circulos(749, 253, 182);
    circulos(695, 366, 200);
    circulos(695, 82, 230);
    circulos(464, 260, 350);
    circulos(410, 60, 190);
    circulos(568, 40, 134);
    circulos(600, 200, 321);
  }
  image(img, 0, 0, 400, 400);
}
void mouseClicked() {
  if (estado.equals("inicio")) {
    estado = "movimiento";
  } else if (estado.equals("movimiento")) {
    estado= "inicio";
  }
}
