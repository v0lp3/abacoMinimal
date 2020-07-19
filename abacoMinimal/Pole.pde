class Pole {
  private ArrayList<Ring> rings;
  private int ringCapacity;

  private int posX;
  private int posY;
  private int RingsY;

  // Clear posY of rings 
  public void clearObj() {
    RingsY = posY + 145;
  }

  public Pole(int c, int i) {

    rings = new ArrayList<Ring>();
    ringCapacity = c-1;

    posX = 50;

    if (i != 0)
      posX += 100 * i;

    posY = 265;

    clearObj();
  }

  public void clearPole() {
    rings.clear();
    clearObj();
  }


  // Add 1 ring if isn't full
  public boolean addRing() {
    if (rings.size() < ringCapacity) {
      rings.add(new Ring(posX, RingsY));
      RingsY -= 21;
      return true;
    }
    return false;
  }

  void show() {

    stroke(0);
    fill(255); 
    rect(posX, posY, 5, 320);
    stroke(0);

    for (Ring i : rings)
      i.show();
  }

  // Number of rings in the pole
  public int getSize() {
    return rings.size();
  }
}
