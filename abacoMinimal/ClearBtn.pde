class ClearBtn extends Button {
  public ClearBtn(int x, int y, Abacus a) {
    super(x, y, a);
  }

  public void show() {
    rectMode(CENTER);

    stroke(0);
    strokeWeight(0.5);
    fill(color(153, 184, 227));
    rect(posX, posY, 100, 40);

    fill(color(55, 96, 152), 65);
    noStroke();
    rect(posX, posY+4, 100, 40);


    super.printText("Clear", posX-14, posY+6);
  }

  // Button specific action
  public void clear() {
    selected.clearPoles();
  }

  public boolean click() {
    if (isHover())
      clear();
    return true;
  }
}
