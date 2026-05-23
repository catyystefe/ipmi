
PImage dibujoJunhan, acordes, papel2;
float papel2X, papel2Y;
float dibujoJunhanX, dibujoJunhanY;

void pantallaDos(){
background(0);
image(fondoVioleta1, 0,0, 640, 480);

// papel
image (papel2, 270 + papel2X, 30 + papel2Y, 360, 440);
fill(0);
textSize(18);
textAlign(LEFT, TOP);
text("El nombre “Xdinary Heroes” proviene de una frase que significa Héroes Extraordinarios. La idea del grupo es representar que cualquier persona común puede convertirse en alguien extraordinario, o mejor dicho, en un héroe.",
330 + papel2X, 120 + papel2Y, 250, 340);

//junhan dibujo
image( acordes, 180+ dibujoJunhanX, 70 +dibujoJunhanY, 150, 150);
image(dibujoJunhan, 60 + dibujoJunhanX, 60 +dibujoJunhanY, 460, 510);
image( acordes, 20 + dibujoJunhanX, 300 +dibujoJunhanY, 180, 180);

contador++;
if (contador >= 60*8){
  estado=3;
  contador=0;
}
}
