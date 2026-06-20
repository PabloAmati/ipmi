void mousePressed() {
  if (mouseButton == LEFT) {
    if (escala > 0.4) {
      escala = escala - 0.3; 
    }
  } else if (mouseButton == RIGHT) {
    if (escala < 1.9) {
      escala = escala + 0.3; 
    }
  }
}
void keyPressed() {
  if (key == ENTER) {
    reiniciar(); 
  } 
  else if (key == ' ') {
    colorCirculos = color(random(255), random(255), random(255)); 
  }
}
void reiniciar() {
  angulo = 0;
  colorCirculos = color(255);
  escala = 1.0; 
}
