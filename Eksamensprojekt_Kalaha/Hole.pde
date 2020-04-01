class Hole {
  float x;
  float y;
  int numberOfBalls;
  
  Hole(float x, float y, int numberOfBalls) {
    this.x = x;
    this.y = y;
    this.numberOfBalls = numberOfBalls;
  }
  
  void addBallHole() {
      numberOfBalls += 1;
  }
  void drawAmount() {
  text(numberOfBalls, x, y);
  }
}
