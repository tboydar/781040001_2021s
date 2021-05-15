int score = 999;
void dashboard() {
  fill(255);
  text(score, 10, 50);
  if(len < 0){
    text("GAMOVER!", getX("GAMEOVER!"),height/2);
  }
}
float getX(String text) {
  return width /2 - textWidth(text) / 2;
}
