PImage referencia;
float angulo;
color colorCirculos;
float escala;
void setup() {
  size(800, 400);
  reiniciar();
  referencia = loadImage("referencia.png");
}

void draw() {
  background(0);
  if (referencia != null) {
    image(referencia, 0, 0, 400, 400);
  }
  if (mouseX > 400) { 
    angulo = mouseX * 0.05;
  }
  pushMatrix();
  translate(600, 200);
  dibujarPatron(colorCirculos);
  popMatrix();
}
