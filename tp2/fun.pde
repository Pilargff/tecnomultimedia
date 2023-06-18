
void circulos1(int x, int y, int t) {
  for (int i = t; i>0; i-=22) {
    
    fill(0, 0, 100);
    stroke(0);
    strokeWeight(5);
    ellipse (x, y, i, i); 
    
    if(estado.equals("movimiento")) {
      background(0);
    }
}
}

void circulos(int x, int y, int t) {
  for (int i = t; i>0; i-=11) {
    
    float dstancia = i;
    float dist = dist(0, 0, width/2, height/2 );
    float hue = map( dstancia, 0, dist, 0, 360 );
    
    stroke( hue, 100, 100 );
    strokeWeight(7);
   
    if (estado.equals("movimiento")) {

      ellipse (x, y, i*sin(radians(move)), i*sin(radians(move)));
    }
    
    for (int c = t; c>0; c-=22) {
      
      noFill();
      stroke(0);
      strokeWeight(3);
      
     
      if (estado.equals("movimiento")) {
        ellipse (x, y, c*sin(radians(move)), c*sin(radians(move)));
      }
    }
  }
  if (estado.equals("movimiento")) {
    move-=1;
  }
}
