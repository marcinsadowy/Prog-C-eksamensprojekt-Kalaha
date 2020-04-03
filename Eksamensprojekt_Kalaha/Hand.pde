class Hand {
  int ballsInHand;
  int chosenHole;
  
    Hand(int ballsInHand) {
    this.ballsInHand = ballsInHand;
  }

  
  void removeBallsInHand() {
      ballsInHand -= 1;
  }
  

  void click(int chosenHole) {
    this.chosenHole = chosenHole;
  }

}
