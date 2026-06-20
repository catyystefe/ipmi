/*Catalina Fernandez
 Com3 - IPMI
 tp3
 link del video explicativo: https://youtu.be/_3JruXx9g7I
 */

PImage referencia;
int contador;
color colorActual;
float desplazamientoDibujo;


void setup() {
  size(800, 400);
  contador = 0;
  desplazamientoDibujo = 0;
  referencia = loadImage ("referencia.png");
}


void draw() {
  background(255);
  dibujo();// llamo a mi funcion propia
  //imagen de referencia
  image(referencia, 0, 0);

  if (contador >= 1) {
    float velocidad = map(mouseX, width-200, width, 0.2, 10);
    desplazamientoDibujo += velocidad;//se le suma cada frame de velocidad a la variable 
    if (desplazamientoDibujo > 263) {// bucle para la derecha
      desplazamientoDibujo = 0;
    }
    if (desplazamientoDibujo < 0) {// bucle para la izquierda
      desplazamientoDibujo = 263;
    }
  }
}



//hago una funcion q retorne un color random
color colorRandom(float col) {
  return color(random(col), random(col), random(col));
}


//al hacer click va a cambiar a un color random
void mousePressed() {
  if ( mouseX > width/2) {
    contador ++;
  }
}

//al precionar espacio se cambia a estado 0
void keyPressed() {
   if (key == 'c' || key == 'C') {
    contador += 1;
    colorActual = colorRandom(255);
  }
  if (key == ' ') {
      contador = 0;
      desplazamientoDibujo = 0;
      colorActual= 0;
  }
 
}
