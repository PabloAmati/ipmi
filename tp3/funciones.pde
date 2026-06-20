void dibujarPatron(color c) {
  noStroke();
  for (int x = -190; x <= 190; x += 20) {
    for (int y = -190; y <= 190; y += 20) {
      fill(c); 
      float t = calcularTamaño(x, y, escala);
      pushMatrix();
      translate(x, y); 
      rotate(angulo);
      ellipse(2, 0, t, t);
      popMatrix();
    }
  }
}
float calcularTamaño(float x, float y, float m) {
  float d = dist(x, y, 0, 0);
  float tamFinal = map(d, 0, 270, 2, 21) * m;
  return tamFinal;
}
