PImage goku;
PImage vegeta;
PImage gohan;
PImage freezer;
PImage espacio;
PImage fondo;
PFont fuenteTP; 
int pantalla = 0;
int tiempo;
float xTexto = -500;

void setup() {
size(640, 480);
goku = loadImage("goku.png");
vegeta = loadImage("vegeta.png");
gohan = loadImage("gohan.png");
freezer = loadImage("freezer.png");
espacio = loadImage("espacio.png");
fondo = loadImage("fondo.png");
fuenteTP = loadFont("Arial-BoldMT-30.vlw"); 
textFont(fuenteTP);
tiempo = millis();
}
void draw() {
if (xTexto < 300) {
 xTexto = xTexto + 12; 
} else {
xTexto = 300; 
}
if (pantalla < 4 && (millis() - tiempo > 15000)) {
 pasarDeEscena(); 
}
if (pantalla == 0) {
image(espacio, 0, 0, width, height);
image(goku, 50, 100, 200, 250);
 fill(30, 30, 30, 150); 
noStroke();
rect(285, 85, 335, 210);
fill(255);
textSize(30);
text("GOKU", xTexto, 120);
textSize(13); 
text("¡Hola! Soy Goku, un guerrero saiyajin. Llegué a la\nTierra hace varios años y ya considero al planeta\ncomo mi hogar. Aquí está mi familia y haré lo\nque sea por defenderlos.", xTexto, 160);
text("Hasta que no cumpla mi objetivo de salvar al\nuniverso del villano Vegeta y de su jefe Freezer\nno voy a parar.", xTexto, 235);
  }
else if (pantalla == 1) {
image(espacio, 0, 0, width, height);
image(vegeta, 50, 100, 200, 250);
fill(30, 30, 30, 150);
noStroke();
rect(285, 85, 335, 210);
fill(0, 100, 255); 
textSize(30);
text("VEGETA", xTexto, 120);
fill(255);
textSize(13);
text("Soy Vegeta, el príncipe de los saiyajin y el más\npoderoso de mi raza. No voy a permitir que un\nguerrero de clase baja como Kakaroto me supere\nen combate.", xTexto, 160);
text("Vengo a la Tierra a cumplir mis misiones, pero\ntarde o temprano me liberaré de las órdenes de\nmi jefe, el tirano Freezer.", xTexto, 235);
  }
else if (pantalla == 2) {
image(espacio, 0, 0, width, height);
image(gohan, 50, 100, 200, 250);
fill(30, 30, 30, 150);
noStroke();
 rect(285, 85, 335, 210);
fill(255, 255, 0); 
textSize(30);
 text("GOHAN", xTexto, 120);
fill(255);
textSize(13);
text("Hola, soy Gohan y soy el hijo de Goku. A mí me\ngusta mucho estudiar y mi mamá quiere que sea\nun gran científico, por lo que no me agrada\nmucho la idea de pelear.", xTexto, 160);
text("Pero si la Tierra o mis amigos corren peligro,\nvoy a usar todo mi poder ayudarlos.", xTexto, 235);
  }
else if (pantalla == 3) {
image(espacio, 0, 0, width, height); 
image(freezer, 50, 100, 200, 250);
fill(30, 30, 30, 150);
noStroke();
rect(285, 85, 335, 210);
fill(255, 0, 255); 
textSize(30);
text("FREEZER", xTexto, 120);
fill(255);
textSize(13);
text("Soy el gran Freezer, el emperador del universo y el\nser más temido de las galaxias. Tengo a mi cargo\na todo un ejército de soldados, incluyendo a los\ninútiles saiyajins sobrevivientes.", xTexto, 160);
text("Nadie es capaz de igualar mi poder ni mis ganas de\nconquistarlo todo. Cualquiera que intente cruzarse\nen mi camino será completamente eliminado.", xTexto, 235);
  }
else if (pantalla == 4) {
image(fondo, 0, 0, width, height);
fill(255, 100, 0); 
noStroke();
rect(245, 300, 150, 40); 
fill(255);
textSize(16);
text("REINICIAR", 280, 325); 
  }
}
void pasarDeEscena() {
  pantalla = pantalla + 1;
  xTexto = -500;
  tiempo = millis();
}
void mousePressed() {
if (pantalla == 0 || pantalla == 1 || pantalla == 2 || pantalla == 3) {
    pasarDeEscena();
  }
}
void mouseClicked() {
if (pantalla == 4) {
if (mouseX > 245 && mouseX < 395 && mouseY > 300 && mouseY < 340) {
 pantalla = 0;
 xTexto = -500;
 tiempo = millis();
    }
  }
}
