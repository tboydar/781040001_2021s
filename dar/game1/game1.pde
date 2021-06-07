int x, y;
int fx, fy;
String direct = "up";
int foodColor = 255;

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
  x = width/2;
  y = height/2;
  background(0);
  textSize(32);
}

void draw() {
  background(0);
  fill(0, 255, 0);
  rect(x, y, 30, 30);
drawFood();
  stroke(255);
  line (fx, 0, fx, height);
  line (0, fy, width, fy);
  stroke(0);

  drawLen();
  move();
  dashboard();
}
