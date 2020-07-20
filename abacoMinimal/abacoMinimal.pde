Abacus binary, exadecimal, decimal;
Button button1, button2, button3;
Abacus pool[];
int sel;
void setup () {

  size(500, 600);
  sel = 0;

  //Object pool
  pool = new Abacus[3];  
  pool[0] = new Binary();
  pool[1] = new Exadecimal();
  pool[2] = new Decimal();

  button1 = new AddBtn(width/2 - 110, height - 100, pool[sel]);
  button2 = new ClearBtn(width/2, height - 100, pool[sel]);
  button3 = new SwitchBtn(width/2 + 110, height - 100);
}

void draw() {
  background(51);
  pool[sel].show();
  button1.show();
  button2.show();
  button3.show();
  
}
void mousePressed() {
  button1.click();
  button2.click();
  if (button3.click()) {
    sel = (sel+1)%3;
    button1.setAbacus(pool[sel]);  
    button2.setAbacus(pool[sel]);
  }
}
