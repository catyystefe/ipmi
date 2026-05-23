PImage papel4, jungsu, gunil;
float papel4X, papel4Y;
float segundoPapel4X, segundoPapel4Y;
float dibujoGunilX, dibujoGunilY;
float dibujoJungsuX, dibujoJungsuY;


void pantallaCuatro() {
  background(0);
  image(fondoVioleta1, 0, 0, 640, 480);
  
 
 //papel y gunil
  image(papel4, 23 + papel4X, -140 + papel4Y, 500, 550);
 textSize(15);
 text("Gun-il es el líder/baterista del grupo y uno de los miembros con más experiencia musical, tiene 27 años y su nombre real es Goo Gun Il. Antes de debutar estudió música en Berklee College of Music, una universidad muy reconocida.", 90 + papel4X, 80 + papel4Y ,310, 310);
 image(gunil, 360 + dibujoGunilX, -40 + dibujoGunilY, 280, 356);
 
 
//papel y jungsu 
  image(papel4, 120 +segundoPapel4X, 80 + segundoPapel4Y, 500, 600);
   text("Jungsu tiene una de las voces más reconocidas del grupo, tiene 24 años y su nombre real es Kim Jung Su. Muchas veces canta las partes emocionales y potentes de las canciones. También toca teclado y sintetizadores, aportando sonidos electrónicos al estilo de la banda.", 250 +segundoPapel4X ,315 + segundoPapel4Y, 320, 320);
  image( jungsu, 0 + dibujoJungsuX, 145 + dibujoJungsuY, 250, 356);




   contador++;
   if (contador >= 60*12) {
   estado=5;
   contador=0;
   }
}
