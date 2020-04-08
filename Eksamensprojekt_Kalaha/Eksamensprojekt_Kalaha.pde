PImage board;
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
  size(800, 800);
  
  //loader board  
  board = createImage(800, 450, RGB);
  board = loadImage("Kalaha board.png");
  //tegner boardet først, så alt andet kommer oven på
  image(board, 0, 0);
  
  //loads cursor image, and sets cursor image
  PImage img = createImage(32, 32, RGB);
  img = loadImage("Super Mario 64 cursor.png");
  cursor(img, 0, 0);
  
  // laver arrayet og putter huller ind i det
  holes = new Hole[numberOfHoles];
// fiks så det er forskellige huller  
  for( int i = 0; i < numberOfHoles; i++){ 
    int bl = 6;
    //hvis hullet er et mål, så er der ikke nogen bolde i hullet
    if(i == 6 || i == 13){bl = 0;};
    holes[i] = new Hole(hulPositionX[i], hulPositionY[i], bl); //holeArray[i]
    holes[i].drawAmount(); 
    
  
    // printer hullets nummer, hvor mange kugler der er i til at starte med, og x og y position, til konsollen
    println(i + ", " + holes[i].numberOfBalls + ", " + holes[i].x + ", " + holes[i].y);
    bl = 6;
  }
}




void draw(){
    clear();
    
    //Boardet bliver tegnet først, så de andre elementer kommer oven på
      image(board, 0, 0);


    //Viser hvor mange kugler man har i hånden
      textSize(20);
      fill(255,0,255);
      text(hand.ballsInHand, mouseX + 30, mouseY - 5);
  
 
    //Tegner antallet af kugler i hullerne
      for(int i = 0; i < holes.length; i++ ){
      holes[i].drawAmount();
  
  
    //Laver Exit knap
      fill(255);
      rect(650,700, 100, 50);
      fill(0);
      text("EXIT", 680, 730);

    //Slukker spillet hvis man trykker på exit knappen
      if (mousePressed == true){
        if (mouseX >= 650 & mouseX <= 750 & mouseY >= 700 & mouseY <= 750){
          exit();} }
    
    
    
    //Klik på huller funktion, 
       if (mousePressed == true){
          if (mouseX >= 35 & mouseX <= 115 & mouseY >= 50 & mouseY <= 130){
              hand.click(0, holes[0].numberOfBalls );
              holes[0].numberOfBalls = 0;
              loop();
              
              }
          
          if (mouseX >= 145 & mouseX <= 245 & mouseY >= 50 & mouseY <= 130){
              exit();}
        
          if (mouseX >= 295 & mouseX <= 375 & mouseY >= 50 & mouseY <= 130){
              exit();}
        
          if (mouseX >= 425 & mouseX <= 505 & mouseY >= 50 & mouseY <= 130){
              exit();}
          
          if (mouseX >= 555 & mouseX <= 635 & mouseY >= 50 & mouseY <= 130){
              exit();}
          
          if (mouseX >= 685 & mouseX <= 765 & mouseY >= 50 & mouseY <= 130){
              exit();}
            
          if (mouseX >= 685 & mouseX <= 765 & mouseY >= 320 & mouseY <= 400){
              exit();}

          if (mouseX >= 555 & mouseX <= 635 & mouseY >= 320 & mouseY <= 400){
              exit();}

          if (mouseX >= 425 & mouseX <= 505 & mouseY >= 320 & mouseY <= 400){
              exit();}
          
          if (mouseX >= 295 & mouseX <= 375 & mouseY >= 320 & mouseY <= 400){
              exit();}
          
          if (mouseX >= 145 & mouseX <= 245 & mouseY >= 320 & mouseY <= 400){
              exit();}
          
          if (mouseX >= 35 & mouseX <= 115 & mouseY >= 320 & mouseY <= 400){
              exit(); } 
      }  }  }




void loop(){
  //sætter tælleren til at være lig med start hullet, som er valgt ved klik*ikke lavet endnu*, add ball i hullet, gøres inde i loopet 
 for(int i = hand.chosenHole; i < hand.chosenHole + hand.ballsInHand; i++){
  //fjerner en kugle fra hånden og tilføjer den til hullet
  hand.removeBallsInHand();
  holes[i%numberOfHoles].addBallHole(); 
  }  }




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
