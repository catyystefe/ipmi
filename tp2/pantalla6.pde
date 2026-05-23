PImage jooyeon, junhan;
float papel6X, papel6Y;
float segundoPapel6X, segundoPapel6Y;
float junhanX, junhanY;
float jooyeonX, jooyeonY;

void pantallaSeis(){
    background(0);
  image(fondoVioleta1, 0, 0, 640, 480);
  
   //papel 
  image(papel4, 23 + papel6X, -120 + papel6Y, 500, 500);
  image(junhan, 390 + junhanX, -20 + junhanY, 290, 426);
  textSize(15);
  text("Jun Han es conocido por su gran habilidad técnica en guitarra. Muchos fans destacan sus solos y la precisión con la que toca en vivo. Su nombre real es Han Hyeong y tiene 23 Años", 90 + papel6X, 90 + papel6Y, 340, 329);
  
  //papel y 
  image(papel4, 120 +segundoPapel6X, 60 + segundoPapel6Y, 500, 600);
  image( jooyeon, -40 + jooyeonX, 145 + jooyeonY, 285, 416);
   text("Jooyeon tiene 23 años y su verdadero nombre es Lee Joo Yeon. Posee una de las voces más potentes del grupo y muchas veces canta las notas más altas. Además de ser el vocalista principal, toca el bajo eléctrico, aportando fuerza al sonido de la banda.", 250 +segundoPapel6X ,295 + segundoPapel6Y, 320, 320);
 
    contador++;
      if (contador >= 60*12) {
   estado=7;
   contador=0;
   }
}
