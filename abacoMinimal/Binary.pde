class Binary extends Abacus {
  public Binary() {
    super(2, 5);
  }
  
@Override
  void printBase() {
    super.printTitle("Binary abacus", width/2-95, 40);
    super.printBase();
    super.printDec();
  }
}
