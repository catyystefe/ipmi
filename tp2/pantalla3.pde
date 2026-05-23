PImage papel3, guitarra, pow;
float papel3X, papel3Y;
float segundoPapel3X, segundoPapel3Y;
float dibujoGuitarraX, dibujoGuitarraY;


void pantallaTres(){
  background(0);
image(fondoVioleta1, 0,0, 640, 480);

//papel de la izquierda
image(papel3, 10 + papel3X, -80 + papel3Y, 300, 600);
fill(0);
textSize(23);
text("Géneros musicales",58 + papel3X, 120 + papel3Y);
textSize(18);
fill(175, 50, 150);
text("Estilos que utilizan:", 62 + papel3X, 150 + papel3Y);
fill(0);
text("Rock alternativo",70+ papel3X, 200 + papel3Y);
text("K-rock",70 + papel3X, 240 + papel3Y);
text("Pop rock", 70 + papel3X, 280 +papel3Y);
text("Hard rock",70 + papel3X, 320+ papel3Y );
text("Rock electrónico", 70 + papel3X, 360 + papel3Y );

//papel de la derecha
image(papel3, 330 + segundoPapel3X, -60+ segundoPapel3Y, 300, 470);
text("El fandom oficial del grupo se llama", 380 + segundoPapel3X, 90 + segundoPapel3Y, 200, 170);
fill(255, 0, 0);
text("Villains", 435 + segundoPapel3X, 140 +segundoPapel3Y, 180, 160);
fill(0);
textSize(16);
text("Según el concepto de la banda, los héroes necesitan villanos para existir, por eso eligieron ese nombre para sus fans.", 380 + segundoPapel3X, 167 + segundoPapel3Y, 200, 170);

//otras imegenes
image(pow, 284 + dibujoGuitarraX, 280 + dibujoGuitarraY, 230, 200);
image(guitarra, 400 + dibujoGuitarraX, 210 + dibujoGuitarraY, 256, 273);
contador++;
if (contador >= 60*9){
  estado=4;
  contador=0;

}
}
