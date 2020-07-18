class Abacus {

  protected ArrayList<Pole> poles;
  protected int pn;
  protected int base;
  protected int clickCount;

  public Abacus(int b, int n) {
    poles = new ArrayList<Pole>();
    pn = n;
    base = b;
    for (int i = 0; i < pn; i++) {
      poles.add(new Pole(base, i));
    }
    clickCount = 0;
  }

  public void addUnit() {

    for (int i = pn-1; i >= 0; i--) {
      if (poles.get(i).addRing()) {
        return;
      }

      poles.get(i).clearPole();
    }
  }

  public void clearPoles() {
    for (Pole i : poles)
      i.clearPole();
    clickCount = 0;
  }
  void show() {
    for (Pole i : poles)
      i.show();
  }
  public void addClick() {
    clickCount++;
    clickCount = clickCount % int(pow(base, pn));
  }
  public void printNum() {
    int posX = width/2 + 25;
    int posY = height - 50;
    textSize(28);
    fill(255);
    for (int i = pn-1; i >= 0; i--) {
      text( poles.get(i).getSize(), posX, posY);

      posX -= 20;
    }
    textSize(20);
    text( "Dec: " + clickCount, posX + 20, posY + 20);
  }
}
