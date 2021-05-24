void foodRandom() {
  fx = (int)random(60, width-60);
  fy = (int)random(60, height-60);
}

void drawFood() {
  fill(foodColor, 0,0);
  rect(fx, fy, 50, 50);
}
