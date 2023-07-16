//Función moussePressed para cambiar de estado según los botones
void mousePressed() {
  if ( estado == 0 ) {
    if ( EstoyEnElBoton1( 300, 450, 110, 60) ) {
      estado = 1;
    }
  } else if ( estado == 1 ) {
    if ( EstoyEnElBoton1(300, 550, 110, 60) ) {
      estado = 2;
    }
  } else if ( estado == 2 ) {
    if ( EstoyEnElBoton1(300, 550, 110, 60) ) {
      estado = 3;
    }
  } else if ( estado==3) {
    if (EstoyEnElBoton1(110, 520, 110, 60)) {
      estado = 4;
    }
    if (EstoyEnElBoton2(490, 520, 110, 60)) {
      estado = 5;
    }
  } else if ( estado==4) {
    if (EstoyEnElBoton1(110, 520, 110, 60)) {
      estado = 8;
    }
    if (EstoyEnElBoton2(490, 520, 110, 60)) {
      estado = 7;
    }
  } else if ( estado == 5 ) {
    if ( EstoyEnElBoton1(300, 550, 110, 60) ) {
      estado = 6;
    }
  } else if ( estado==6) {
    if (EstoyEnElBoton1(110, 520, 110, 60)) {
      estado = 8;
    }
    if (EstoyEnElBoton2(490, 520, 110, 60)) {
      estado = 10;
    }
  } else if ( estado==7) {
    if (EstoyEnElBoton1(110, 520, 110, 60)) {
      estado = 8;
    }
    if (EstoyEnElBoton2(490, 520, 110, 60)) {
      estado = 9;
    }
  } else if ( estado == 8 ) {
    if (EstoyEnElBoton1(300, 550, 110, 60) ) {
      estado = 14;
    }
  } else if ( estado == 9 ) {
    if (EstoyEnElBoton1(300, 550, 110, 60) ) {
      estado = 14;
    }
  } else if ( estado == 10 ) {
    if (EstoyEnElBoton1(300, 550, 110, 60) ) {
      estado = 11;
    }
  } else if ( estado == 11 ) {
    if (EstoyEnElBoton1(300, 550, 110, 60) ) {
      estado = 12;
    }
  } else if ( estado == 12 ) {
    if ( EstoyEnElBoton1(300, 550, 110, 60) ) {
      estado = 13;
    }
  } else if ( estado == 13 ) {
    if ( EstoyEnElBoton1(300, 550, 110, 60) ) {
      estado = 14;
    }
  } else if ( estado == 14) {
    if ( EstoyEnElBoton1(300, 550, 110, 60) ) {
      estado = 0;
    }
  }
}
