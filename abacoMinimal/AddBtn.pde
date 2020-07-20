class AddBtn extends Button {
  public AddBtn(int x, int y, Abacus a) {
    super(x, y, a);
  }

  public void show() {
    rectMode(CENTER);

    stroke(0);
    strokeWeight(0.5);
    fill(color(210, 0, 0));
    rect(posX, posY, 100, 40);

    noStroke();
    fill(color(157, 0, 0), 65);
    rect(posX, posY+4, 100, 40);


    printText("Add", posX, posY);
  }

  // Button specific action
  public void add() {
    selected.addClick(); 
    selected.addUnit();
  }

  public boolean click() {
    if (isHover())
      add();
    return true;
  }
}
