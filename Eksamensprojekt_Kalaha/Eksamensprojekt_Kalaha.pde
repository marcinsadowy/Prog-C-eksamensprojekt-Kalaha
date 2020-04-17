
PImage board;
int startHole = 0;
int numberOfHoles = 14;
int turn = 1;
//turn = 1 : spiller 1's tur
//turn = 2 : spiller 2's tur

//x og y værdierne til hvert hul i et array
// rectangel´´                  rectangel
int hulPositionX[] = {75, 205, 335, 465, 595, 725, 647, 725, 595, 465, 335, 205, 75, 152};
int hulPositionY[] = {90, 90, 90, 90, 90, 90, 225, 360, 360, 360, 360, 360, 360, 225};

//laver et nyt objekt som hedder hand
Hole[] holes;
//laver et nyt objekt som hedder hand
Hand hand;


void setup() {
  turn = 1;
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
  for ( int i = 0; i < numberOfHoles; i++) { 
    int bl = 6;
    //hvis hullet er et mål, så er der ikke nogen bolde i hullet
    if (i == 6 || i == 13) {
      bl = 0;
    };
    holes[i] = new Hole(hulPositionX[i], hulPositionY[i], bl); //holeArray[i]
    holes[i].drawAmount(); 
    // printer hullets nummer, hvor mange kugler der er i til at starte med, og x og y position, til konsollen
    println(i + ", " + holes[i].numberOfBalls + ", " + holes[i].x + ", " + holes[i].y);
  }
}
void draw() {
  clear();
  textSize(20);
  //tegner boardet først, så alt andet kommer oven på
  image(board, 0, 0);

  printGameEvent();

  //viser hvor mange kugler man har i hånden
  textSize(20);
  fill(255, 0, 255);
  text(hand.ballsInHand, mouseX + 30, mouseY - 5);

  fill(255);
  rect(650, 700, 100, 50);
  checkIfHover();
  fill(0);
  text("EXIT", 680, 730);

  for (int i = 0; i < holes.length; i++ ) {
    holes[i].drawAmount();
  }
  checkWin();
}

void checkWin() {
  int sumOfHoles1 = 0;
  int sumOfHoles2 = 0;

  for (int i = 0; i < 6; i++) {
    sumOfHoles1 += holes[i].numberOfBalls;
  }

  for (int i = 7; i < 13; i++) {
    sumOfHoles2 += holes[i].numberOfBalls;
  }

  if (sumOfHoles1 == 0) {

    win();
  } else if (sumOfHoles2 == 0) {

    win();
  }
}


void win() {
  int winner = 0;

  if (holes[6].numberOfBalls > holes[13].numberOfBalls) {
    winner = 1;
  } else if (holes[13].numberOfBalls > holes[6].numberOfBalls) {
    winner = 2;
  }
  winPrint(winner);
}

void winPrint(int winner) {
  fill(0, 255, 0);
  textSize(48);
  text("PLAYER "+ winner + " WON!", 350, height/2 + 100 );
}







void checkIfHover() {
  int str = 90;

  if (mouseX >= 650 & mouseX <= 750 & mouseY >= 700 & mouseY <= 750) {
    fill(212, 175, 55);
    rect(650, 700, 100, 50);
  } 

  if (turn == 1) {
    // første hul, nummer 0 i array
    if (mouseX >= 35 & mouseX <= 115 & mouseY >= 50 & mouseY <= 130) {
      fill(212, 175, 55);
      ellipse(hulPositionX[0], hulPositionY[0], str, str);
    }

    // andet hul, nummer 1 i array
    if (mouseX >= 145 & mouseX <= 245 & mouseY >= 50 & mouseY <= 130) {
      fill(212, 175, 55);
      ellipse(hulPositionX[1], hulPositionY[1], str, str);
    }
    // tredje hul, nummer 2 i array
    if (mouseX >= 295 & mouseX <= 375 & mouseY >= 50 & mouseY <= 130) {
      fill(212, 175, 55);
      ellipse(hulPositionX[2], hulPositionY[2], str, str);
    }
    // fjerde hul, nummer 3 i array
    if (mouseX >= 425 & mouseX <= 505 & mouseY >= 50 & mouseY <= 130) {
      fill(212, 175, 55);
      ellipse(hulPositionX[3], hulPositionY[3], str, str);
    }

    // femte hul, nummer 4 i array
    if (mouseX >= 555 & mouseX <= 635 & mouseY >= 50 & mouseY <= 130) {
      fill(212, 175, 55);
      ellipse(hulPositionX[4], hulPositionY[4], str, str);
    }
    // sjette hul, nummer 5 i array
    if (mouseX >= 685 & mouseX <= 765 & mouseY >= 50 & mouseY <= 130) {
      fill(212, 175, 55);
      ellipse(hulPositionX[5], hulPositionY[5], str, str);
    }
  } else if (turn == 2) {
    // ottende hul, nummer 7 i array 
    if (mouseX >= 685 & mouseX <= 765 & mouseY >= 320 & mouseY <= 400) {
      fill(212, 175, 55);
      ellipse(hulPositionX[7], hulPositionY[7], str, str);
    }
    // niende hul, nummer 8 i array
    if (mouseX >= 555 & mouseX <= 635 & mouseY >= 320 & mouseY <= 400) {
      fill(212, 175, 55);
      ellipse(hulPositionX[8], hulPositionY[8], str, str);
    }
    // tiende hul, nummer 9 i array
    if (mouseX >= 425 & mouseX <= 505 & mouseY >= 320 & mouseY <= 400) {
      fill(212, 175, 55);
      ellipse(hulPositionX[9], hulPositionY[9], str, str);
    }
    // elfte hul, nummer 10 i array   
    if (mouseX >= 295 & mouseX <= 375 & mouseY >= 320 & mouseY <= 400) {
      fill(212, 175, 55);
      ellipse(hulPositionX[10], hulPositionY[10], str, str);
    }
    // tolvte hul, nummer 11 i array
    if (mouseX >= 145 & mouseX <= 245 & mouseY >= 320 & mouseY <= 400) {
      fill(212, 175, 55);
      ellipse(hulPositionX[11], hulPositionY[11], str, str);
    }
    // trettende hul, nummer 12 i array
    if (mouseX >= 35 & mouseX <= 115 & mouseY >= 320 & mouseY <= 400) {
      fill(212, 175, 55);
      ellipse(hulPositionX[12], hulPositionY[12], str, str);
    }
  }
}

void mouseClicked() {
  //Slukker spillet hvis man trykker på exit knappen

  if (mouseX >= 650 & mouseX <= 750 & mouseY >= 700 & mouseY <= 750) {
    exit();
  } 

  if (turn == 1) {
    // første hul, nummer 0 i array
    if (mouseX >= 35 & mouseX <= 115 & mouseY >= 50 & mouseY <= 130) {
      hand.click(0, holes[0].numberOfBalls );
      holes[0].numberOfBalls = 0;
      spilLoop();
      println("exit 1");
    }

    // andet hul, nummer 1 i array
    if (mouseX >= 145 & mouseX <= 245 & mouseY >= 50 & mouseY <= 130) {
      hand.click(1, holes[1].numberOfBalls );
      holes[1].numberOfBalls = 0;
      spilLoop(); 
      println("exit 2");
    }
    // tredje hul, nummer 2 i array
    if (mouseX >= 295 & mouseX <= 375 & mouseY >= 50 & mouseY <= 130) {
      hand.click(2, holes[2].numberOfBalls );
      holes[2].numberOfBalls = 0;
      spilLoop();
      println("exit 3");
    }
    // fjerde hul, nummer 3 i array
    if (mouseX >= 425 & mouseX <= 505 & mouseY >= 50 & mouseY <= 130) {
      hand.click(3, holes[3].numberOfBalls );
      holes[3].numberOfBalls = 0;
      spilLoop();
      println("exit 4");
    }

    // femte hul, nummer 4 i array
    if (mouseX >= 555 & mouseX <= 635 & mouseY >= 50 & mouseY <= 130) {
      hand.click(4, holes[4].numberOfBalls );
      holes[4].numberOfBalls = 0;
      spilLoop();
      println("exit 5");
    }
    // sjette hul, nummer 5 i array
    if (mouseX >= 685 & mouseX <= 765 & mouseY >= 50 & mouseY <= 130) {
      hand.click(5, holes[5].numberOfBalls );
      holes[5].numberOfBalls = 0;
      spilLoop();
      println("exit 6");
    }
  } else if (turn == 2) {
    // ottende hul, nummer 7 i array 
    if (mouseX >= 685 & mouseX <= 765 & mouseY >= 320 & mouseY <= 400) {
      hand.click(7, holes[7].numberOfBalls );
      holes[7].numberOfBalls = 0;
      spilLoop();
      println("exit 7");
    }
    // niende hul, nummer 8 i array
    if (mouseX >= 555 & mouseX <= 635 & mouseY >= 320 & mouseY <= 400) {
      hand.click(8, holes[8].numberOfBalls );
      holes[8].numberOfBalls = 0;
      spilLoop();
      println("exit 8");
    }
    // tiende hul, nummer 9 i array
    if (mouseX >= 425 & mouseX <= 505 & mouseY >= 320 & mouseY <= 400) {
      hand.click(9, holes[9].numberOfBalls );
      holes[9].numberOfBalls = 0;
      spilLoop();
      println("exit 9");
    }
    // elfte hul, nummer 10 i array   
    if (mouseX >= 295 & mouseX <= 375 & mouseY >= 320 & mouseY <= 400) {
      hand.click(10, holes[10].numberOfBalls );
      holes[10].numberOfBalls = 0;
      spilLoop();
      println("exit 10");
    }
    // tolvte hul, nummer 11 i array
    if (mouseX >= 145 & mouseX <= 245 & mouseY >= 320 & mouseY <= 400) {
      hand.click(11, holes[11].numberOfBalls );
      holes[11].numberOfBalls = 0;
      spilLoop();
      println("exit 11");
    }
    // trettende hul, nummer 12 i array
    if (mouseX >= 35 & mouseX <= 115 & mouseY >= 320 & mouseY <= 400) {
      hand.click(12, holes[12].numberOfBalls );
      holes[12].numberOfBalls = 0;
      spilLoop();
      println("exit 12");
    }
  }
}

void printGameEvent() {
  fill(255);
  text("Player " + turn + " Your turn, choose a hole on your side", 20, 500);
}

void spilLoop() {
  int startBalls = hand.ballsInHand;
  int i;
  int stoppedHole;
  int n = 1;
  while (n > 0) {
    //sætter tælleren til at være lig med start hullet, som er valgt ved klik*ikke lavet endnu*, add ball i hullet, gøres inde i loopet 
    int currentHole = hand.chosenHole + 1;
    while (hand.ballsInHand > 0) {

      //fjerner en kugle fra hånden og tilføjer den til hullet

      // gør så der ikke bliver smidt kugler i modstanderens mål
      if (currentHole % numberOfHoles == 6 & turn == 2) { 
        println("enemyGoal");
      }//if

      else if (currentHole % numberOfHoles == 13 & turn == 1) {
        println("enemyGoal");
      }//elif

      else {
        holes[currentHole % numberOfHoles].addBallHole();
        hand.removeBallsInHand();
      }//else
      currentHole++;
      println(" " + currentHole % numberOfHoles + " " + holes[currentHole % numberOfHoles].numberOfBalls );
    }//slut af for loop

    stoppedHole = currentHole % numberOfHoles;
    stoppedHole = stoppedHole - 1;
    if (stoppedHole == -1) {
      stoppedHole = 13;
    }
    println(stoppedHole);

    if (hand.ballsInHand == 0) {
      //Spiller ikke videre hvis der ikke var nogen kugle i forvejen


      //Spiller ikke videre pga men rammer mål med sin sidste kugle
      if (stoppedHole == 6 || stoppedHole == 13) {
        n = 0;
        println("Maol!");

        if (turn == 1) {
          turn = 1;
        } else if (turn == 2) {
          turn = 2;
        }
      } else if (holes[stoppedHole].numberOfBalls == 1) {
        n = 0;
        println("1 bold efter smidt");

        if (turn == 1) {
          turn = 2;
        }//if
        else if (turn == 2) {
          turn = 1;
        }//elif
      }//elif number of balls

      else {
        hand.click(stoppedHole, holes[stoppedHole].numberOfBalls);
        holes[stoppedHole].numberOfBalls = 0;
        startBalls = hand.ballsInHand;
      } //else
    }//if ballsInHand
  }//while > 0
}//void spilLoop

/*int n = holes[stoppedHole].numberOfBalls - 1;
 while(n > 0){
 hand.click(stoppedHole, holes[stoppedHole].numberOfBalls);
 holes[stoppedHole].numberOfBalls = 0;
 loop();
 n = holes[stoppedHole].numberOfBalls;
 }  */

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
