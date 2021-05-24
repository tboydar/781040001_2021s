void foodRandom() {
  fx = (int)random(60, width-60);
  fy = (int)random(60, height-60);
}

void drawFood() {
  fill(0, foodColor, 0);
  rect(fx, fy, 50, 50);
}
