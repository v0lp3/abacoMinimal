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
}
