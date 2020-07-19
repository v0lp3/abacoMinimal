class Decimal extends Abacus {
  public Decimal() {
    super(10, 5);
  }

  @Override
    void printBase() {
    super.printTitle("Decimal abacus", width/2-95, 40);
    super.printBase();
  }
}
