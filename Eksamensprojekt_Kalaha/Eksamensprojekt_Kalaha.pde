int ballsInHand = 0;
PImage bg;
int startHole = 0;
int numberOfHoles = 14;
Hole[] holes = new Hole[numberOfHoles]; 








void setup(){
  size(800, 450);
  
  //loads background, and sets background image
  bg = createImage(800, 450, RGB);
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
  
  noStroke();
  noFill();

  ellipse(75, 90, 90, 90);
  ellipse(160, 90, 90, 90);
  ellipse(245, 90, 90, 90);
  ellipse(330, 90, 90, 90);
  ellipse(415, 90, 90, 90);
  ellipse(500, 90, 90, 90);

  rect(276, 225, 246, 118);
  rect(647, 225, 246, 118);

  ellipse(75, 360, 90, 90);
  ellipse(160, 360, 90, 90);
  ellipse(245, 360, 90, 90);
  ellipse(330, 360, 90, 90);
  ellipse(415, 360, 90 ,90);
  ellipse(500, 360, 90, 90);
}



void loop(){
 for(int i = startHole; i < startHole + ballsInHand; i++){
  //holes[i%nummerAfHuller].addBall;
  // array skal skrives, for at det virker
  
  }
  
  
}
