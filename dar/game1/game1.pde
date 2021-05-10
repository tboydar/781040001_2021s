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
  frameRate(1000);
  size(800, 800);
  //println(state);
  fx = (int)random(60, width-60);
  fy = (int)random(60, height-60);
  x = width/2;
  y = height/2;
  background(0);
}

void draw() {
  fill(0, 255, 0);
  rect(x, y, 30, 30);
  fill(foodColor, 0, 0);
  rect(fx, fy, 50, 50);
  stroke(255);
  line (fx, 0, fx, height);
  line (0, fy, width, fy);
  stroke(0);

  move();
}
