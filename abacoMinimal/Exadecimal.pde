class Exadecimal extends Abacus {

  // Code output to exadecimal 
  private HashMap<Integer, String> code;

  public Exadecimal() {
    super(16, 5);
    code = new HashMap<Integer, String>(16);
    code.put(0, "0");
    code.put(1, "1");
    code.put(2, "2");
    code.put(3, "3");
    code.put(4, "4");
    code.put(5, "5");
    code.put(6, "6");
    code.put(7, "7");
    code.put(8, "8");
    code.put(9, "9");
    code.put(10, "A");
    code.put(11, "B");
    code.put(12, "C");
    code.put(13, "D");
    code.put(14, "E");
    code.put(15, "F");
  }

  @Override
    void printBase() {

    super.printTitle("Exadecimal abacus", width/2, 30);

    int posX = width/2 + 55;
    textSize(28);

    fill(255);
    for (int i = pn-1; i >= 0; i--) {
      Integer num = poles.get(i).getSize();
      text(code.get(num), posX, 70);
      posX -= 20;
    }
    text("0x", posX - 8, 70);
    printDec();
  }
}
