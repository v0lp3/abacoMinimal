class Binary extends Abacus {
  public Binary() {
    super(2, 5);
  }

  @Override
    void printBase() {
    super.printTitle("Binary abacus", width/2, 30);
    super.printBase();

    textSize(28);
    fill(255);
    text("b", width/2 + 60, 70);

    super.printDec();
  }
}
