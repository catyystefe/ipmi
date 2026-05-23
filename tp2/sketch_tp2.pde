/* Catalina Fernandez
 Materia: IPMI
 Trabajo practico 2
 Comision 3
 */

int estado = 0; //cantidad actual de pantallas
PImage fondovioleta;
int contador; //cuanto dura cada pantalla

void setup() {

  size(640, 480);
  //cargo imagenes/fuente
  fondovioleta = loadImage("fondovioleta.png");
  xdinaryBanda = loadImage("xdinarybanda.png");
  nombreDeLaBanda = loadImage("titulo.png");
  play = loadFont("MS-Gothic-48.vlw");
  dibujoPantalla1 =loadImage ("dibujointegrantes.png");
  fondoVioleta1 = loadImage("fondovioleta1.png");
  papel = loadImage ("papel.png");
  dibujoJunhan = loadImage("junhandibujo.png");
  acordes = loadImage ("acordes.png");
  papel2 = loadImage ("papel2.png");
  papel3 = loadImage ("papel3.png");
  pow = loadImage ("pow.png");
  guitarra = loadImage("guitarra.png");
  papel4 = loadImage("papel4.png");
  jungsu = loadImage ("jungsu.png");
  gunil = loadImage ("gunil.png");
  ode = loadImage ("o.de.png");
  gaon = loadImage ("gaon.png");
  jooyeon = loadImage ("jooyeon.png");
  junhan = loadImage ("junhan.png");
  dibujoFinal= loadImage ("dibujofinal.png");
  fondoFinal = loadImage ("fondofinal.png");
}

void draw() {
  //dibujo
  image(fondovioleta, 0, 0, 647, 940);
  // Declaro los estados
  if (estado == 0) {
    pantallaDeInicio();
    // pantalla inicio
  } else if (estado == 1) {
    pantallaUno();
  } else if (estado == 2) {
    pantallaDos();
  } else if (estado == 3) {
    pantallaTres();
  } else if (estado == 4) {
    pantallaCuatro();
  } else if (estado == 5) {
    pantallaCinco();
  } else if (estado == 6) {
    pantallaSeis();
  } else if (estado == 7) {
    pantallaSiete();
  }

  //declaro condiciones
  //PANTALLA1: //map(valor, inicio contador, final contador, valor inicial, valor final)
  //dibujo1
  if (contador <= 60*2) {
    dibujo1Y = map(contador, 0, 60*2, 500, 10); //inicio
  }
  if (contador > 60*2 && contador < 60*7) dibujo1Y = 10;//quieto

  if (contador >= 60*7) {
    dibujo1Y = map(contador, 60*7, 60*9, 10, 500); //salida
  }
  //papel1
  if (contador <= 60*2) {
    papelY = map(contador, 0, 60*2, -500, 10); //inicio
  }
  if (contador > 60*2 && contador < 60*7) papelY = 10;//quieto

  if (contador >= 60*7) {
    papelY = map(contador, 60*7, 60*9, 10, -600);//salida
  }

  //PANTALLA2
  //dibujo1
  if (contador <= 60*1) {
    dibujoJunhanX = map(contador, 0, 60*1, -500, 10); //inicio
  }
  if (contador > 60*1 && contador < 60*7) dibujoJunhanX = 10;//quieto

  if (contador >= 60*7) {
    dibujoJunhanX = map(contador, 60*7, 60*7.9, 10, -500); //salida
  }
  //papel
  if (contador <= 60*1) {
    papel2X = map(contador, 0, 60*1, 500, 10); //inicio
  }
  if (contador > 60*1 && contador < 60*7) papel2X = 10;//quieto

  if (contador >= 60*7) {
    papel2X = map(contador, 60*7, 60*7.9, 10, 500); //salida
  }
  // PANTALLA3
  //papel1
  if (contador <= 60*1) {
    papel3Y = map(contador, 0, 60*1, 500, 10); //inicio
  }
  if (contador > 60*1 && contador < 60*8) papel3Y = 10;//quieto

  if (contador >= 60*8) {
    papel3Y = map(contador, 60*8, 60*9, 10, -500); //salida
  }
  //papel2
   if (contador <= 60*1) {
    segundoPapel3Y = map(contador, 0, 60*1, -500, 10); //inicio
  }
  if (contador > 60*1 && contador < 60*8) segundoPapel3Y = 10;//quieto

  if (contador >= 60*8) {
    segundoPapel3Y = map(contador, 60*8, 60*9, 10, 500); //salida
  }
  //dibujo 1
   if (contador <= 60*2) {
   dibujoGuitarraX = map(contador, 0, 60*2, 500, 10); //inicio
  }
  if (contador > 60*2 && contador < 60*7) dibujoGuitarraX = 10;//quieto

  if (contador >= 60*7) {
    dibujoGuitarraX = map(contador, 60*7, 60*9, 10, 500); //salida
  }
  //PANTALLA4
   //papel1
  if (contador <= 60*1) {
    papel4X = map(contador, 0, 60*1, 500, 10); //inicio
  }
  if (contador > 60*1 && contador < 6*10.5) papel4X = 10;//quieto

  if (contador >= 60*10.5) {
    papel4X = map(contador, 60*10.5, 60*11.5, 10, 500); //salida
  }
   //papel2
  if (contador <= 60*1) {
   segundoPapel4X = map(contador, 0, 60*1, -500, 10); //inicio
  }
  if (contador > 60*1 && contador < 60*10.5) segundoPapel4X = 10;//quieto

  if (contador >= 60*10.5) {
    segundoPapel4X = map(contador, 60*10.5, 60*11.5, 10, -500); //salida
  }
   //Gunil
  if (contador <= 60*1) {
   dibujoGunilX = map(contador, 0, 60*1, -650, 10); //inicio
  }
  if (contador > 60*1 && contador < 60*10.5)  dibujoGunilX= 10;//quieto

  if (contador >= 60*10.5) {
   dibujoGunilX = map(contador, 60*10.5, 60*11.5, 10, -650); //salida
  }
   //jungsu
  if (contador <= 60*1) {
 dibujoJungsuX = map(contador, 0, 60*1, 650, 10); //inicio
  }
  if (contador > 60*1 && contador < 60*10.5)  dibujoJungsuX= 10;//quieto

  if (contador >= 60*10.5) {
  dibujoJungsuX = map(contador, 60*10.5, 60*11.5, 10, 650); //salida
  }
  //PANTALLA5
    //papel1
  if (contador <= 60*1) {
   papel5X = map(contador, 0, 60*1, 650, 10); //inicio
  }
  if (contador > 60*1 && contador < 6*10.5) papel5X = 10;//quieto

  if (contador >= 60*10.5) {
    papel5X = map(contador, 60*10.5, 60*11.5, 10, 650); //salida
  }
   //papel2
  if (contador <= 60*1) {
   segundoPapel5X = map(contador, 0, 60*1, -650, 10); //inicio
  }
  if (contador > 60*1 && contador < 60*10.5) segundoPapel5X = 10;//quieto

  if (contador >= 60*10.5) {
    segundoPapel5X = map(contador, 60*10.5, 60*11.5, 10, -650); //salida
  }
   //O.de
  if (contador <= 60*1) {
   odeX = map(contador, 0, 60*1, -650, 10); //inicio
  }
  if (contador > 60*1 && contador < 60*10.5)  odeX = 10;//quieto

  if (contador >= 60*10.5) {
   odeX = map(contador, 60*10.5, 60*11.5, 10, -650); //salida
  }
   //gaon
  if (contador <= 60*1) {
 gaonX = map(contador, 0, 60*1, 650, 10); //inicio
  }
  if (contador > 60*1 && contador < 60*10.5)  gaonX= 10;//quieto

  if (contador >= 60*10.5) {
  gaonX = map(contador, 60*10.5, 60*11.5, 10, 650); //salida
  }
  //PANTALLA 6 
    //papel1
  if (contador <= 60*1) {
 papel6Y = map(contador, 0, 60*1, -500, 10); //inicio
  }
  if (contador > 60*1 && contador < 6*10.5) papel6Y = 10;//quieto

  if (contador >= 60*10.5) {
    papel6Y = map(contador, 60*10.5, 60*11.5, 10,- 500); //salida
  }
   //papel2
  if (contador <= 60*1) {
 segundoPapel6Y = map(contador, 0, 60*1, 500, 10); //inicio
  }
  if (contador > 60*1 && contador < 6*10.5) segundoPapel6Y = 10;//quieto

  if (contador >= 60*10.5) {
    segundoPapel6Y = map(contador, 60*10.5, 60*11.5, 10, 500); //salida
  }
  //junhan
   if (contador <= 60*1) {
 junhanX = map(contador, 0, 60*1, 500, 10); //inicio
  }
  if (contador > 60*1 && contador < 6*10.5) junhanX = 10;//quieto

  if (contador >= 60*10.5) {
   junhanX = map(contador, 60*10.5, 60*11.5, 10, 500); //salida
  }
  //jooyeon
   if (contador <= 60*1) {
 jooyeonX = map(contador, 0, 60*1, -500, 10); //inicio
  }
  if (contador > 60*1 && contador < 6*10.5) jooyeonX = 10;//quieto

  if (contador >= 60*10.5) {
  jooyeonX = map(contador, 60*10.5, 60*11.5, 10, -500); //salida
  }
  //PANTALLA7
   //dibujo
   if (contador <= 60*2.5) {
 dibujoFinalY = map(contador, 0, 60*2.5, 500, 10); //inicio
  }
   if (contador > 60*2.5 && contador < 6*20) dibujoFinalY = 10;//quieto

  
 

}




void mousePressed() {

  if (estado == 0) {

    if (mouseX > width*0.37 &&mouseX < width*0.37 + 180 && mouseY > height*0.8 && mouseY < height*0.8 + 60) {
      estado = 1;
    }
  }

  if (estado==7) {
    if (mouseX > width*0.32 && mouseX < width*0.32 + 232 && mouseY > height*0.1 && mouseY < height*0.1 + 104) {
      estado = 0;
    }
  }
}
