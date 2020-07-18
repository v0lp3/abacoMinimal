public abstract class Button {

  protected int posX;
  protected int posY;
  protected Abacus selected;

  public Button(int x, int y, Abacus a) {
    posX = x ;
    posY = y;
    selected = a;
  }

  abstract public void show();

  public boolean isHover() {
    if (mouseX >= posX-50 && mouseX <= posX + 50 && mouseY >= posY - 20 && mouseY <= posY + 20 ) {
      return true;
    }
    return false;
  }
}
