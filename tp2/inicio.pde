

PFont play;
PImage xdinaryBanda;
PImage nombreDeLaBanda;


void pantallaDeInicio(){
 
//dibujo
  image(nombreDeLaBanda, 100, -125, 450, 450);
  image(xdinaryBanda, 80, 60, 432, 577);
  //boton de play
  noStroke();
  fill(38, 15, 80);
  rect(width*0.34, height*0.8, 200, 80);
  fill(97, 62, 165);
  rect(width*0.37, height*0.8, 180, 60);
  fill(255);
  textAlign(CENTER);
  textFont(play);
  textSize(50);
  text("PLAY", width*0.5, height*0.9);
}
