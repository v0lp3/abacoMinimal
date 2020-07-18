Abacus main;
AddBtn add;
ClearBtn clear;
void setup () {

  size(500, 500);
  main = new Abacus(2, 5);
  add = new AddBtn(width/2 - 55, height - 100, main);
  clear = new ClearBtn(width/2 + 55, height - 100, main);
}

void draw() {
  background(51);
  main.show();
  main.printNum();
  add.show();
  clear.show();
}
void mousePressed() {
  add.add();
  clear.clear();
}
