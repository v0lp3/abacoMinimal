class Abacus {

  protected ArrayList<Pole> poles;
  protected int pn; // Number of poles
  protected int base; // Abacus base 

  protected int clickCount; // Decimal counter

  public Abacus(int b, int n) {
    poles = new ArrayList<Pole>();
    pn = n;
    base = b;
    for (int i = 0; i < pn; i++) {
      poles.add(new Pole(base, i));
    }
    clickCount = 0;
  }

  // Add 1 ring
  public void addUnit() {
    for (int i = pn-1; i >= 0; i--) {
      if (poles.get(i).addRing()) {
        return;
      }

      poles.get(i).clearPole();
    }
  }

  // Clear all poles
  public void clearPoles() {
    for (Pole i : poles)
      i.clearPole();
    clickCount = 0;
  }

  // Show abacus
  void show() {
    for (Pole i : poles)
      i.show();
    printBase();
  }

  // Increase decimal counter
  public void addClick() {
    clickCount++;
    clickCount = clickCount % int(pow(base, pn));
  }

  // Print number in decimal base
  public void printDec() {
    textSize(20);
    fill(255);
    text( "Dec: " + clickCount, 215, height - 50);
  }
  
  // Get info of abacus base
  public void printTitle(String t, int x, int y) {
    textSize(28);
    fill(255);
    text(t, x, y);
  }
  
  // Print number in abacus base
  public void printBase() {
    int posX = width/2 + 25;
    textSize(28);
    fill(255);
    for (int i = pn-1; i >= 0; i--) {
      text( poles.get(i).getSize(), posX, 70);
      posX -= 20;
    }
  }
}
