

PImage fondoFinal;
PImage dibujoFinal;
float botonFinalX, botonFinalY;
float dibujoFinalX, dibujoFinalY;


void pantallaSiete(){
  background(0);
  image(fondoFinal, 0, 0, 640, 480);
  fill(0, 120);
  rect (0, 0, 640, 480);
  
  //dibujo
  image( dibujoFinal, width*0.255 + dibujoFinalX, height*0.2 + dibujoFinalY, 295, 402);

  //boton de reiniciar
  fill(177, 77, 183);
  rect(width*0.32 , height*0.1, 232, 104);
  fill(238, 124, 245);
  rect(width*0.37 , height*0.1 , 200, 80);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("REINICIAR", width*0.53, height*0.22);
  
  contador++;  
   estado=7;
   
   

}
