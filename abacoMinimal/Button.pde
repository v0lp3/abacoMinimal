public abstract class Button {

  protected int posX;
  protected int posY;
  protected Abacus selected;

  public Button(int x, int y, Abacus a) {
    posX = x ;
    posY = y;
    selected = a;
  }

  // Check if mouse is on button
  public boolean isHover() {
    if (mouseX >= posX-50 && mouseX <= posX + 50 && mouseY >= posY - 20 && mouseY <= posY + 20 ) {
      return true;
    }
    return false;
  }

  // Set button pointer
  public void setAbacus(Abacus s) {
    selected = s;
  }

  // Print button name
  public void printText(String t, int x, int y) {
    textSize(12);
    fill(0, 80);
    text(t, x, y);
    fill(255);
    text(t, x, y-1);
  }

  // Button action
  abstract public boolean click();

  // Show button function
  abstract public void show();
}
