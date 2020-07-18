class Pole {
  private ArrayList<Ring> rings;
  private int ringCapacity;
  private int ithPos;

  private int posX;
  private int posY;
  private int RingsY;

  public void clearObj() {
    RingsY = posY + 85;
  }

  public Pole(int c, int i) {

    rings = new ArrayList<Ring>();
    ringCapacity = c-1;
    ithPos = i;
    posX = 50;

    if (i != 0)
      posX += 100 * i;

    posY = 200;

    clearObj();
  }

  public void clearPole() {
    rings.clear();
    clearObj();
  }




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
    rect(posX, posY, 5, 205);
    stroke(0);
    for (Ring i : rings)
      i.show();
  }
  
  public int getSize() {
    return rings.size();
  }
}
