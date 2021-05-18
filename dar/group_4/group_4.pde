// webcam  sample  
String[] data;

void setup() {

  data= loadStrings("https://vjinc.cloud/bankeetest/game4.txt");

  println(data);
  frameRate(1);
}

void draw() {

  data= loadStrings("https://vjinc.cloud/bankeetest/game4.txt");

  println(data[0]);
  if (data[0].indexOf("a")>-1)background(255, 0, 0);
  if (data[0].indexOf("b")>-1)background(0, 255, 0);
  if (data[0].indexOf("c")>-1)background(0, 0, 255);
  
}
