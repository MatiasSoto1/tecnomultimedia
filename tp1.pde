//Matias Soto
//91461/2

color verde = #99B898;
color salmon = #FF847C;
color rojo = #E84A5F;
color negro = #2A363B;
color beige = #FECEAB;
PFont font;

int pantalla = 0;
int contador = 0;
color colorDeFondo = 0;
color colorDeTexto = 200;
PImage imagen1;
PImage imagen2;
PImage imagen3;
float x = 0;
int x1 = 520;
int y = 425;
int w = 40;
int h = 100;
float velocidad = 2;
float direccion = 1;
void setup() {
  size(640, 480);
  font = createFont("SansSerif.bold", 35);
  textFont (font);
  smooth();
  imagen1 = loadImage("hacha con detalles.png");
  imagen2 = loadImage("download.png");
  imagen3 = loadImage("PALAS.jpg");
}

void draw() {
  x+= velocidad * direccion;
  if (x>width || x < 0 ) {
    direccion*= -1;
  }
  println("X;");
  println(mouseX);
  println("Y;");
  println(mouseY);


  noStroke();
  background(negro);

  switch(pantalla) {
  case 0:


    image(imagen1, 50, 50);
    imagen1.resize(150, 350);
    contador++;
    println("Estado 1:", contador);
    if (contador >= 500) {
      contador = 0;
      pantalla = 1;
    }

    fill(0, 255, 255, contador);
    textSize(15);
    text("Un hacha consta de tres partes principales:\n el mango, que brinda el agarre y control; la cabeza,\n compuesta por la cuchilla que corta y el ojo donde se \ninserta el mango; y el filo, que es la parte afilada utilizada\n para talar o cortar.", 230, 70);

    break;

  case 1:
    image(imagen2, 0, 0);
    imagen2.resize(640, 480);
    contador++;
    println("Estado 2:", contador);
    if (contador >= 1000) {
      contador = 0;
      pantalla = 2;
    }
    fill(0, 255, 255);
    textSize(20);
    text("Existen diferentes tipos de hachas,\n como el hacha de mano,\n el hacha de doble filo,\n el hacha de guerra y el hacha de carpintero,\n cada una diseñada para un propósito específico.", x, x);


    break;


  case 2:
    image(imagen3, 0, 0);
    imagen3.resize(640, 480);
    contador++;
    println("Estado 3:", contador);
    if (contador >= 800) {
      contador = 0;
      pantalla = 3;
    }

    fill(0, 255, 255, contador);
    textSize(20);
    text("Las hachas se utilizan para una variedad de propósitos,\n como el corte de leña, la tala de árboles,\n la construcción, la carpintería y la industria forestal.", 0, 70);

    break;


  case 3:


    contador++;
    println("Estado 4:", contador);
    if (contador >= 2000) {
      contador = 0;
      pantalla = 4;
    }
    fill(beige);
    textSize(30);
    text("Apreta el boton para reinciar", 150, 200);
    fill(0, 0, 0);
    textSize(15);
    text("El Boton", 250, 250);
    fill(beige);
    rect(250, 250, 100, 100);
  }
}
void mousePressed() {
  if (mouseX>520 && mouseX<=425 && mouseY>520 && mouseY<=425);
  pantalla = 0;
  contador = 0;
}
