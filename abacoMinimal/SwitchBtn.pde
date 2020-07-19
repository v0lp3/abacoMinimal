class SwitchBtn extends Button {
  public SwitchBtn(int x, int y) {
    super(x, y, null);
  }

  public void show() {
    rectMode(CENTER);

    stroke(0);
    strokeWeight(0.5);
    fill(color(144, 227, 167));
    rect(posX, posY, 100, 40);

    noStroke();
    fill(color(107, 188, 106), 65);
    rect(posX, posY+4, 100, 40);


    super.printText("Switch", posX-18, posY+6);
  }

  public boolean click() {
    if (isHover())
      return true;
    return false;
  }
}
