long foodTimer = 0;
long poisonTimer = 0;
int speed = 5;
int len = 0;
void drawLen() {
  fill(0, 200, 0);
  if (direct =="up") {
    for (int i = 0; i < len; i++) {
      rect(x, y+31+31*i, 30, 30);
    }
  }
  if (direct =="down") {
    for (int i = 0; i < len; i++) {
      rect(x, y-31-31*i, 30, 30);
    }
  }
  if (direct =="left") {
    for (int i = 0; i < len; i++) {
      rect(x+31+31*i, y, 30, 30);
    }
  }
  if (direct =="right") {
    for (int i = 0; i < len; i++) {
      rect(x-31-31*i, y, 30, 30);
    }
  }
}
void checkEat() {
  if (foodColor == 255 && x > fx && x < fx+50  && y > fy && y < fy + 50) {
    foodColor = 100;
    foodTimer = millis();
    score++; 
    len++;
  }
  if (foodColor == 100 & millis()-foodTimer > 500) {
    foodRandom();
    foodColor = 255;
  }
  
  //poison
    if (poisonColor == 50 && x > px && x < px+30  && y > py && y < py + 30) {
    poisonColor = 30;
    poisonTimer = millis();
    score--; 
    len--;
  }
  if (poisonColor == 30 & millis()-poisonTimer > 500) {
    poisonRandom();
    poisonColor = 50;
  }
}


void move() {
  if (direct =="up") y-=speed;
  if (direct =="down") y+=speed;
  if (direct =="left") x-=speed;
  if (direct =="right") x+=speed;

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
