class Hand {
  int ballsInHand;
  int chosenHole;
  
    Hand(int ballsInHand) {
    this.ballsInHand = ballsInHand;
  }

  
  void removeBallsInHand() {
      ballsInHand -= 1;
  }
  

  void click(int chosenHole, int ballsInHand) {
    this.chosenHole = chosenHole;
    this.ballsInHand = ballsInHand;
  }

}
