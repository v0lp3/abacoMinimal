class Binary extends Abacus {
  public Binary() {
    super(2, 5);
  }
  
@Override
  void printBase() {
    super.printTitle("Binary abacus", width/2-95, 40);
    super.printBase();
    super.printDec();
    textSize(28);

    fill(255);
    text("b", width/2 + 45, 70);
  }
}
