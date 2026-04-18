PImage miImagen;

void setup() {
  size(800,400);
  miImagen = loadImage("Vitruvian.jpg");
}

void draw() {
  background(215, 195, 160);
  image(miImagen, 0, 0, 400, 400); 
  noFill();
  rect(450, 55, 300, 300);      
  ellipse(600, 185, 340, 340);
  
  // Cuerpo
  ellipse(600, 115, 35, 40);   // Cabeza
  line(595, 135, 605, 135);    // Cuello
  line(595, 135, 595, 300);    // torso izq
  line(605, 135, 605, 300);    // torso der

  // Brazos
  line(450, 160, 595, 160);    // izq recto
  line(605, 160, 750, 160);    // der recto
  line(595, 150, 470, 75);     // izq arriba
  line(605, 150, 730, 75);     // der arriba
  
  // Piernas
  line(595, 300, 590, 355);    // Abajo izq
  line(605, 300, 610, 355);    // Abajo der
  line(595, 300, 510, 330);    // Abierta izq
  line(605, 300, 690, 330);    // Abierta der

  // Cara
  ellipse(592, 110, 6, 6);   
  ellipse(608, 110, 6, 6);   
  line(593, 125, 607, 125);   
  fill(0);
  textSize(30);
  text(mouseX + " - " + mouseY, mouseX, mouseY);
}
