class AddBtn extends Button {
  public AddBtn(int x, int y, Abacus a) {
    super(x, y, a);
  }
  int clickCount;
  public void show() {

    stroke(0);
    strokeWeight(0.5);
    fill(color(157, 0, 0));

    rectMode(CENTER);
    rect(posX, posY, 100, 40);
    fill(color(210, 0, 0), 65);
    noStroke();
    rect(posX, posY+4, 100, 40);
    textSize(12);
    fill(0, 80);
    text("Add", posX-11, posY+6);
    fill(255);
    text("Add", posX-11, posY+5);
  }

  public void add() {
    if (mouseX >= posX-50 && mouseX <= posX + 50 && mouseY >= posY - 20 && mouseY <= posY + 20 ) {
      selected.addClick(); 
      selected.addUnit();
    }
  }
 
}
