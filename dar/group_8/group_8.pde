

String  []  randomText = {"apple", "banana", "those", "you"};


void setup() {
  println(randomText);
  println(randomText.length);
  frameRate(3);
  size(1024, 768);
  textSize(100);
}

void draw() {
  background(0);
  int num = (int)random(randomText.length);
  println(num);
  text(randomText[num], width/2, 100);
  text(input, 100, 100);
  if (input.indexOf(randomText[num])>-1)
    ellipse(100, 300, 30, 30);
  //if (input.indexOf("you")>-1) {
  //  ellipse(100, 300, 30, 30);
  //}
}
void mousePressed() {
  input ="";
}


String input ="";
void keyPressed() {
  println(key);
  input = input + key;
  println("input:"+input);
  println(keyCode);
}
