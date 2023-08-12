//tp3 
//Griffo Pilar
//Legajo:84422/9
//Video explicativo: https://www.youtube.com/watch?v=pCDM2petviE&ab_channel=PilarGriffo

//Declaración de arreglos y variables
PImage[] fondos;
String[] textos;
int cantImagenes = 15;
int estado = 0;

void setup() {
  size(600, 600);
//Arreglo fondos
  fondos = new PImage[20];
//CicloFor para cargar fondos dentro de un arreglo
  for ( int i=0; i<cantImagenes; i++ ) {
    fondos[i] = loadImage("data/fondo_"+nf(i, 2)+".jpg");
  }
//Arreglo textos
  textos = new String[14];
  //Asignación de valores
  textos[0] = "Érase una vez una hermosa joven que vivía con su madrastra y dos hermanastras que la obligaban a hacer todo el trabajo de la casa. La pobre joven tenía que cocinar, limpiar y también lavarles la ropa.";
  textos[1] = "Cansada de trabajar, la joven se quedó dormida cerca a la chimenea y cuando se levantó con la cara sucia por las cenizas, sus hermanastras se rieron sin parar y desde entonces comenzaron a llamarla Cenicienta.";
  textos[2] = "Un día llegó a la casa una invitación del rey a un baile para celebrar el cumpleaños del príncipe. Cenicienta fue quien la recogió del buzón y al verla supo que sus hermanastras se alegrarian al enterarse. La idea le molestó. ¿Le da la invitación a sus hermanastras?";
  textos[3] = "Cenicienta esconde la invitación y deja que sus hermanastras crean que no fueron invitadas al baile. Al llegar el día cenicienta planea escaparse e ir sola al castillo pero teme las consecuencias.\n ¿Escapa para ir al baile?";
  textos[4] = "Las jovenes se alegraron mucho y no dejaron de hablar sobre el baile. Sin embargo, cuando llegó el día de la fiesta, su madrastra y hermanastras le dijeron: \n —Cenicienta, tú no irás, te quedarás en casa limpiando y preparando la cena para cuando regresemos. Las tres mujeres salieron hacia el palacio, burlándose de Cenicienta.";
  textos[5] = "Cenicienta corrió al jardín y se sentó en un banco a llorar. Ella deseaba con todo su corazón poder ir al baile. De repente, apareció su hada madrina y le dijo: \n —No llores Cenicienta, tú has sido muy buena y mereces ir al baile. Si lo deseas yo puedo ayudarte. \n ¿Acepta la ayuda del hada madrina?";
  textos[6] = "Cenicienta se escabulle por la noche y logra llegar al castillo. Allí se da cuenta que no viste como las demás jovenes y se siente muy avergonzada por su ropa vieja y manchada.\n ¿Entra al castillo?";
  textos[7] = "Cenicienta decide volver a su casa. Vive por el resto de su vida a la sombra de su madrastra y hermanastras, cumpliendo sus ordenes.";
  textos[8] = "Cenicienta entra al castillo luciendo tal como es. El principe al verla se enamora de ella instántaneamente pues reconoce que es diferente y especial.";
  textos[9] = "Agitando su varita mágica, el hada madrina transformó una calabaza en un coche, tres ratones de campo en hermosos caballos, y a un perro viejo en un cochero. ¡Cenicienta no podía creer lo que veía!\n — ¡Muchas gracias! —exclamó Cenicienta.\n —Espera, no he terminado todavía —respondió el hada madrina con una sonrisa. Con el último movimiento de su varita mágica, transformó a Cenicienta. Le dio un vestido y un par de zapatillas de cristal, y le dijo: —Ahora podrás ir al baile, sólo recuerda que debes regresar antes de la medianoche ya que a esa hora se terminará la magia.";
  textos[10] = "Cenicienta agradeció nuevamente al hada madrina y muy feliz se dirigió al palacio. Cuando entró, los asistentes, incluyendo sus hermanastras, no podían parar de preguntarse quién podría ser esa hermosa princesa. El príncipe, tan intrigado como los demás, la invitó a bailar. Después de bailar toda la noche, descubrió que Cenicienta no sólo era la joven más hermosa del reino, sino también la más amable y sincera que él jamás había conocido.";
  textos[11] = "De repente, las campanadas del reloj se hicieron escuchar, era la medianoche. Cenicienta se estaba divirtiendo tanto que casi olvida las palabras del hada madrina. \n—¡Oh, no!, debo irme— le dijo al príncipe mientras corría fuera del salón de baile. Ella salió tan de prisa que perdió una de sus zapatillas de cristal en la escalinata. Decidido a encontrar a la hermosa joven, el príncipe tomó la zapatilla y visitó todas las casas del reino.";
  textos[12] = "Cuando el príncipe llegó a casa de Cenicienta, sus dos hermanas y hasta la madrastra intentaron sin suerte probarse el zapato de cristal. Él se encontraba a punto de marcharse cuando escuchó una voz: \n —¿Puedo probarme la zapatilla? —dijo Cenicienta. La joven se probó la zapatilla y le quedó perfecta. El príncipe sabía que esta era la hermosa joven que estaba buscando. Fue así como Cenicienta y el príncipe se casaron y vivieron felices para siempre.";
  textos[13] = "Créditos\n Título: Cenicienta \nAutores: Los hermanos Grimm \nRealización: Pilar Griffo";
}

void draw() {
  //If estados, pantallas y botones
  if ( estado == 0 ) {
    Pantalla( fondos[0], "" );
    Botón1( 300, 450, 110, 60, "Inicio");
 
} else  if ( estado == 1 ) {
    Pantalla( fondos[1], textos[0] );
    Botón1(  300, 550, 110, 60, "Siguiente");
 
} else  if ( estado == 2 ) {
    Pantalla( fondos[2], textos[1] );
    Botón1(  300, 550, 110, 60, "Siguiente");

} else  if ( estado == 3 ) {
    Pantalla( fondos[3], textos[2] );
    Botón2( 110, 520, 110, 60, "No");
    Botón1( 490, 520, 110, 60, "Si");
}
    
  else  if ( estado == 4 ) {
    Pantalla( fondos[4], textos[3] );
    Botón2( 110, 520, 110, 60, "No");
    Botón1( 490, 520, 110, 60, "Si");
  }
      
  else  if ( estado == 5 ) {
    Pantalla( fondos[5], textos[4] );
    Botón1(  300, 550, 110, 60, "Siguiente");
  }
   
  else  if ( estado == 6 ) {
    Pantalla( fondos[6], textos[5] );
    Botón2( 110, 520, 110, 60, "No");
    Botón1( 490, 520, 110, 60, "Si");
  }
  else  if ( estado == 7 ) {
    Pantalla( fondos[7], textos[6] );
    Botón2( 110, 520, 110, 60, "No");
    Botón1( 490, 520, 110, 60, "Si");
  }
  
  else  if ( estado == 8 ) {
    Pantalla( fondos[8], textos[7] );
    Botón1(  300, 550, 110, 60, "Siguiente");
  }
  
  else  if ( estado == 9 ) {
    Pantalla( fondos[9], textos[8] );
    Botón1(  300, 550, 110, 60, "Siguiente");
  }
  
   else  if ( estado == 10 ) {
    Pantalla( fondos[10], textos[9] );
    Botón1(  300, 550, 110, 60, "Siguiente");
  }
  
  else  if ( estado == 11 ) {
   Pantalla( fondos[11], textos[10] );
    Botón1(  300, 550, 110, 60, "Siguiente");
  }
  
  else  if ( estado == 12 ) {
    Pantalla( fondos[12], textos[11] );
    Botón1(  300, 550, 110, 60, "Siguiente");
  }
  
  else  if ( estado == 13 ) {
    Pantalla( fondos[13], textos[12] );
    Botón1(  300, 550, 110, 60, "Siguiente");
  }
  
  else  if ( estado == 14 ) {
    Pantalla( fondos[14], textos[13] );
    botonReinicio(300, 250, "Volver a inicio");
 
  }
  
  
  
  
  
  
}
