//tp5 
//Griffo Pilar
//Legado 84422/9
//Video: https://youtu.be/jMolOPXi838
let grilla;
let imagen;
let contador;
let estado = 0;

//Cargar imagen
function preload() {
  imagen = loadImage('data/zapatoimg.png'); // Reemplaza 'nombre_de_la_imagen.jpg' con el nombre de tu imagen
}

function setup() {
  
  //Crear ventana
  createCanvas(400, 500);
  
  //Color de fondo
  background(139, 225, 255)
  
  //Crear objetos
  grilla = new claseGrilla();
  contador = new claseContador();
  zapato = new claseZapato();
  zapato.generarNuevoZapato(grilla);
}

function draw() {
    //Color de fondo
  background(139, 225, 255);

//asignar pantallas a estados
  if (estado == 0) {

    pantallaInicio()
    
  } else if (estado == 1) {

    grilla.dibujar();
    contador.dibujar();

    if (zapato) {

      zapato.dibujar();
      zapato.actualizar();
      
    }
  }else if (estado == 2) {
     pantallaInicio()
  }
}


//Delimitar zona del zapato para que al clickear se generen los puntos
function mousePressed() {
  if (zapato.mostrando) {
    let x1 = zapato.x - 50;
    let x2 = zapato.x + 50;
    let y1 = zapato.y -50;
    let y2 = zapato.y + 50;

    if (mouseX >= x1 && mouseX <= x2 && mouseY >= y1 && mouseY <= y2) {
      contador.incrementar();
      zapato.mostrando = false;
      zapato.generarNuevoZapato(grilla);
    }
  }
}

//Pasar pantallas presionando espacio
function keyPressed( ) {
  
  if (estado == 0) {
    estado = 1
  }
  else if (estado == 1) {
    estado = 2
  }
}
