
PImage bg;
int startHole = 0;
int numberOfHoles = 14;
//x og y værdierne til hvert hul i et array
                                                // rectangel´´                       rectangel
int hulPositionX[] = {75,205,335,465,595,725, 647, 725,595,465,335,205,75, 152};
int hulPositionY[] = {90,90,90,90,90,90, 225, 360,360,360,360,360,360, 225};

//laver et nyt objekt som hedder hand
Hole[] holes;
//laver et nyt objekt som hedder hand
Hand hand;


void setup(){
  hand = new Hand(0);
  size(800, 450);
  
  //loads background, and sets background image
  bg = createImage(800, 450, RGB);
  bg = loadImage("Kalaha board.png");
  background(bg);
  
  //loads cursor image, and sets cursor image
  PImage img = createImage(32, 32, RGB);
  img = loadImage("Super Mario 64 cursor.png");
  cursor(img, 0, 0);
  
  // laver arrayet og putter huller ind i det
  holes = new Hole[numberOfHoles];
// fiks så det er forskellige huller  
  for( int i = 0; i < numberOfHoles; i++){ 
    holes[i] = new Hole(hulPositionX[i], hulPositionY[i], 6); //holeArray[i]
    holes[i].drawAmount(); 
  }
}
void draw(){
  clear();
  background(bg);
  
  //viser hvor mange kugler man har i hånden
  textSize(20);
  fill(255,0,255);
  text(hand.ballsInHand, mouseX + 30, mouseY - 5);
  
  for(int i = 0; i < holes.length; i++ ){
    holes[i].drawAmount();
  
}
}



void loop(){
  //sætter tælleren til at være lig med start hullet, som er valgt ved klik*ikke lavet endnu*, add ball i hullet, gøres inde i loopet 
 for(int i = startHole; i < startHole + hand.ballsInHand; i++){
  holes[i%numberOfHoles].addBallHole();
  // array skal skrives, for at det virker
  
  }
}

//
  //ellipse(75, 90, 90, 90);
  //ellipse(205, 90, 90, 90);
  //ellipse(335, 90, 90, 90);
  //ellipse(465, 90, 90, 90);
  //ellipse(595, 90, 90, 90);
  //ellipse(725, 90, 90, 90);

  //rect(276, 225, 246, 118);
  //rect(647, 225, 246, 118);

 // ellipse(75, 360, 90, 90);
  //ellipse(205, 360, 90, 90);
  //ellipse(335, 360, 90, 90);
  //ellipse(465, 360, 90, 90);
  //ellipse(595, 360, 90 ,90);
  //ellipse(725, 360, 90, 90);
