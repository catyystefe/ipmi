PImage dibujoPantalla1, fondoVioleta1, papel;
float papelX, papelY;
float dibujo1X, dibujo1Y;

void pantallaUno(){
background(0);
image(fondoVioleta1, 0,0, 640, 480);
//papel
image(papel, 10+ papelX, -110 + papelY, 600, 400);
textSize(20);
fill(0);
textAlign(CENTER);
text("Xdinary Heroes es una banda surcoreana de K-rock formada por Studio J, una división de JYP Entertainment. Desde su debut en 2021, el grupo llamó la atención por combinar el sonido del rock moderno con conceptos visuales intensos y una estética alternativa.",  50 + papelX, 25 + papelY, 500, 400);
//dibujo
image(dibujoPantalla1, width*0.1 + dibujo1X, height*0.02 + dibujo1Y, 521, 479);


contador++;
if (contador>= 60*9){
  estado = 2;
  contador= 0;
}
}
