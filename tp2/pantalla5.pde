PImage ode, gaon;
float papel5X, papel5Y;
float segundoPapel5X, segundoPapel5Y;
float gaonX, gaonY;
float odeX, odeY;

void pantallaCinco() {
  background(0);
  image(fondoVioleta1, 0, 0, 640, 480);
  //papel y o.de
  image(papel4, 23 + papel5X, -150 + papel5Y, 500, 550);
  textSize(15);
  text("Gaon, uno de los guitarristas que tiene 24 años y su verdadero nombre es Kwak Ji Seok. Destaca por su gran energía y actitud en el escenario. Es rapero y vocalista y suele participar mucho en las partes más intensas de las canciones. ", 90 + papel5X, 65 + papel5Y, 320, 320);
  image(gaon, 390 + gaonX, -40 + gaonY, 280, 356);
 
  //papel y gaon
  image(papel4, 120 +segundoPapel5X, 90 + segundoPapel5Y, 500, 550);
   text("O.de tiene uno de los estilos visuales más únicos del grupo, su nombre real es Oh Seung Min y tiene 23 años. Muchas veces utiliza outfits experimentales y maquillaje llamativo. Es rapero y vocalista además de usar el sintetizador.", 250 +segundoPapel5X ,310 + segundoPapel5Y, 320, 320);
  image( ode, -40 + odeX, 165 + odeY, 310, 406);
 
  contador++;
   if (contador >= 60*12) {
   estado=6;
   contador=0;
   }
 
}
