int cantRayas = 34;
int cantRayasX = 34;
int cantRayasY= 34;

void dibujo() {


  pushMatrix();
  if (contador == 0) {
    stroke(0); // estado original
  }
  if (contador >= 1) {
    stroke(colorActual); // estado modificado
  }
  translate(width/2- 300 + desplazamientoDibujo, 0);
  // rayas verticales/horizontales
  for ( int x = 0; x < cantRayasX; x++) {
    for ( int y = 0; y < cantRayasY; y++) {
      if (x % 2!= 0) { // hago que las rayas horizontales sean las rayas que empiezan con numer impares
        strokeWeight(3.5);
        line(37 + x*44.3 - y*11.6, y*17, 37 + x*44.3 - y*11.6 + 21, y*17);
      } else {
        strokeWeight(2);// si no es impar: rayas verticales
        line(  37 + x*44.4 - y*11.8, y*17, 37 + x*44.4- y*11.8, 35.5 + y*17);
      }
    }
  }

  //rayas diagonales
  rotate(radians(34.2));
  strokeWeight(3.8);
  for (int i = 0; i < cantRayas; i++) {
    line(40 + i*36.5, -900, 40 + i*36.5, height+300);
  }
  popMatrix();
}
