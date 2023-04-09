PImage imagen;
void setup() {
  size(800, 400);
  imagen = loadImage("hachatp0.png");
}

void draw() {
  println("X:");
  println(mouseX);
  println("Y:");
  println(mouseY);
  background(255);
  image(imagen, 0, 0);
  imagen.resize(300,300);
  noStroke();
  
  fill(193,183,184);
  triangle(410,45,405,30,430,45);
  
  fill(242,255,75);  
  rect(348,57,20,120);
  fill(82,82,77);  
  rect(348,177,20,135);
  fill(82,82,77);
  rect(348,55,20,10);  
  fill(242,255,75);
  ellipse(358,195,10,18);
  
  fill(237,7,15);
  rect(300,25,80,30);
  rect(380,35,30,10);
  fill(237,7,15);
  ellipse(385,35,50,20);
  
  fill(193,183,184);
  rect(292,25,23,30);
  ellipse(295,40,15,30);
  
  fill(82,82,77); 
  triangle(335,300,349,290,348,310);
  
  fill(242,255,75);
  circle(359,305,6);
  triangle(353,290,357,280,363,290);

}
  
