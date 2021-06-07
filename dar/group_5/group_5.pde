int mode = 0;  //  0: standby, 1: start game, 2: end.

int x = 100, y=100;
// int x1=,y1=;
int x0=279, y0=127;
int x1=446, y1=134;
int x2=387, y2=347;
void setup() {
  size(1024, 768);
  background(0);
  draw_up();
}

void draw() {
  //background(0);

  stroke(255);
  line(width/2, height/2, x, y);
}
int index = 0;

void mousePressed() {
  text(mouseX+","+mouseY, width/2, height/2);
  x=mouseX;
  y=mouseY;
  point(mouseX, mouseY);
  println("int x"+index+"="+mouseX+",y"+index+"="+mouseY+";");
  index++;
}
void mouseMoved() {
  //point(mouseX, mouseY);
}

void draw_up() {
  stroke(255);

  line(x0, y0, x1, y1);
}
void draw_down() {
}

void draw_left() {
}

void draw_right() {
}
