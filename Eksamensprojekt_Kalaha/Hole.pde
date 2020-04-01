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
    fill(0);
    text(numberOfBalls, x - 5, y + 5);
  }
}
