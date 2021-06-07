int x, y;
int fx, fy;
int px, py;//poison
String direct = "up";
int foodColor = 255;
int poisonColor = 50;
//public enum Direct {
//  Up, 
//    Down, 
//    Left, 
//    Right
//}
//Direct state = Direct.Up;

void setup() {
  frameRate(30);
  size(800, 800);
  //println(state);
  foodRandom();
  poisonRandom();
  x = width/2;
  y = height/2;
  background(0);
  textSize(32);
}

void draw() {
  background(0);
  fill(0, 255, 0);
  rect(x, y, 30, 30);
  fill(foodColor, 0, 0);
  rect(fx, fy, 50, 50);
  fill(poisonColor, poisonColor, poisonColor);
  rect(px, py, 30, 30);
  stroke(255);
  //line (fx, 0, fx, height);
  //line (0, fy, width, fy);
  stroke(0);
  
  drawLen();
  move();
  dashboard();
}
