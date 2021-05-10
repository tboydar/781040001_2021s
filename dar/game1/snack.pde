long foodTimer = 0;

void checkEat() {
  if (x > fx && x < fx+50  && y > fy && y < fy + 50) {
    foodColor = 100;
    foodTimer = millis();
  }
  if (foodColor == 100 & millis()-foodTimer > 1000) {
    foodColor = 255;
  }
}
void move() {
  if (direct =="up") y--;
  if (direct =="down") y++;
  if (direct =="left") x--;
  if (direct =="right") x++;

  if (y< 0-30)  // up
    y = height;
  if (y> height+30)  // down
    y = 0-30;
  if (x< 0-30)  // left
    x = width+30;
  if (x> width+30)  // right
    x = 0-30;
  checkEat();
}
void keyPressed() {
  println(key);  
  println(keyCode);
  if (keyCode ==37)  direct = "left";
  if (keyCode ==38)  direct = "up";
  if (keyCode ==39)  direct = "right";
  if (keyCode ==40)  direct = "down";
}
