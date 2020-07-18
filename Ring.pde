class Ring {
  private int posX;
  private int posY;

  public Ring(int x, int y) {
    posX = x;
    posY = y;
  }

  public void show() {
    noStroke();
    fill(color(144, 227, 167));
    ellipse(posX, posY, 20, 20);
  }
}
