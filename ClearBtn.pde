class ClearBtn extends Button {
  public ClearBtn(int x, int y, Abacus a) {
    super(x, y, a);
  }

  public void show() {

    stroke(0);
    strokeWeight(0.5);
    fill(color(153, 184, 227));

    rectMode(CENTER);
    rect(posX, posY, 100, 40);
    fill(color(55, 96, 152), 65);
    noStroke();
    rect(posX, posY+4, 100, 40);

    fill(0, 80);
    text("Clear", posX-11, posY+6);
    fill(255);
    text("Clear", posX-11, posY+5);
  }

  public void clear() {
    if (isHover())
      selected.clearPoles();
  }
}
