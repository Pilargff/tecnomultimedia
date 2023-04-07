//Griffo Pilar L:84422/9
//Comisión 3
//tp0:Retrato
PImage img;
void setup() {
  size(800, 400);
  background(0);
  img = loadImage("data/autoretrato.jpg");
}
void draw() {
  println(mouseX);
  println(mouseY);
  //pelo atras
  fill(77, 42, 27);
  noStroke();
  ellipse(590, 400, 400, 850);
  //cuello
  noStroke();
  fill(170, 140, 140);
  rect(536, 364, 140, 100);
  //aro
  strokeWeight(9);
  stroke(130);
  noFill();
  ellipse(422, 310, 30, 150);
  //cabeza
  fill(175, 147, 147);
  noStroke();
  ellipse(590, 200, 380, 400);
  //ojo
  fill(250);
  ellipse(655, 175, 100, 50);
  fill(88, 54, 28);
  ellipse(658, 176, 49, 50);
  fill(64, 34, 15);
  ellipse(658, 176, 30, 30);
  fill(0);
  ellipse(658, 176, 20, 20);
  //ojo2
  fill(250);
  ellipse(486, 175, 100, 50);
  fill(88, 54, 28);
  ellipse(486, 176, 49, 50);
  fill(64, 34, 15);
  ellipse(486, 176, 30, 30);
  fill(0);
  ellipse(486, 176, 20, 20);
  //ceja
  noFill();
  strokeWeight(12);
  stroke(64, 34, 15);
  bezier(595, 122, 627, 110, 661, 100, 715, 120);
  //ceja 2
  noFill();
  strokeWeight(12);
  stroke(64, 34, 15);
  bezier(431, 120, 454, 110, 481, 100, 539, 121);
  //nariz
  fill(145, 120, 120);
  noStroke();
  triangle(565, 150, 594, 278, 520, 279);
  //boca
  fill(250);
  bezier(498, 315, 524, 330, 558, 340, 640, 312);
  //aro
  noFill();
  stroke(140);
  ellipse(768, 310, 30, 152);
  //pelo frente
  strokeWeight(4);
  stroke(77, 42, 27);
  fill(77, 42, 27);
  bezier(577, 0, 534, 69, 458, 149, 400, 243);
  bezier(577, 0, 415, 15, 380, 170, 400, 250);
  bezier(577, 0, 648, 60, 705, 126, 774, 261);
  bezier(577, 0, 785, 8, 794, 161, 773, 271);
  //sombra labio
  stroke(150, 120, 120);
  line(549, 345, 583, 344);
  //foto
  image(img, 0, 0, 400, 400);
}
