PImage img;
int imgX;
int imgY;
boolean isReset = false;
boolean showIllusion = false;

Button resetButton;
Button illusionButton;

void setup() {
  size(800, 400);
  img = loadImage("imagen.jpg"); // Reemplaza "imagen.jpg" con la ruta y nombre de tu imagen
  img.resize(width, height);
  imgX = 0;
  imgY = 0;
  
  resetButton = new Button(width - 100, height - 50, 80, 30, "Reiniciar");
  resetButton.onClick(() -> {
    resetVariables();
  });
  
  illusionButton = new Button(20, height - 50, 100, 30, "Mostrar Ilusión");
  illusionButton.onClick(() -> {
    showIllusion = !showIllusion;
  });
  
  resetButton.setup();
  illusionButton.setup();
}

void draw() {
  background(255);
  
  if (showIllusion) {
    // Dibuja la imagen con la ilusión óptica
    drawOpticalIllusion();
  } else {
    // Dibuja solo la imagen original
    image(img, 0, 0);
  }
  
  resetButton.draw();
  illusionButton.draw();
  
  if (isReset) {
    resetVariables();
    isReset = false;
  }
}

void drawOpticalIllusion() {
  // Implementa tu ilusión óptica interactiva aquí
  // Por ejemplo, podrías hacer que las líneas se muevan o cambien de forma según la interacción del usuario
  // Puedes usar ciclos for anidados y funciones matemáticas para generar efectos visuales interesantes
}

void mouseClicked() {
  if (resetButton.isClicked(mouseX, mouseY)) {
    resetButton.onClick();
  } else if (illusionButton.isClicked(mouseX, mouseY)) {
    illusionButton.onClick();
  }
}

void resetVariables() {
  // Vuelve las variables a su estado original
  imgX = 0;
  imgY = 0;
}

class Button {
  int x, y, width, height;
  String label;
  Runnable onClickCallback;
  
  Button(int x, int y, int width, int height, String label) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
    this.label = label;
  }
  
  void onClick(Runnable onClickCallback) {
    this.onClickCallback = onClickCallback;
  }
  
  void setup() {
  }
  
  void draw() {
    fill(200);
    stroke(0);
    rect(x, y, width, height);
    textAlign(CENTER, CENTER);
    fill(0);
    text(label, x + width/2, y + height/2);
  }
  
  boolean isClicked(int mouseX, int mouseY) {
    return mouseX >= x && mouseX <= x + width && mouseY >= y && mouseY <= y + height;
  }
  
  void onClick() {
    if (onClickCallback != null) {
      onClickCallback.run();
    }
  }
}
