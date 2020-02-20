void setup(){
  size(800, 450);
  PImage bg = createImage(800, 450, RGB);
  bg = loadImage("Kalaha board.png");
  background(bg);
  PImage img = createImage(32, 32, RGB);
  img = loadImage("Super Mario 64 cursor.png");
  cursor(img, 0, 0);
}

void draw(){
  
}
