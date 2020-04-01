class Hand {
  int ballsInHand;
  
    Hand(int ballsInHand) {
    this.ballsInHand = ballsInHand;
  }

  
  void removeBallHole() {
      ballsInHand -= 1;
  }
  
}
