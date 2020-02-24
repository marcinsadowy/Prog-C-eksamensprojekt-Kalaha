int ballsInHand = 0;
PImage bg;

void setup(){
  size(800, 450);
  
  //loads background, and sets background image
  PImage bg = createImage(800, 450, RGB);
  bg = loadImage("Kalaha board.png");
  background(bg);
  
  //loads cursor image, and sets cursor image
  PImage img = createImage(32, 32, RGB);
  img = loadImage("Super Mario 64 cursor.png");
  cursor(img, 0, 0);
}

void draw(){
  clear();
  background(bg);
  
  textSize(20);
  text(ballsInHand, mouseX + 30, mouseY - 5);
}
