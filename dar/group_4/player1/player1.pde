import http.requests.*;

//  nccu202105.caerus.life/
// id /password   2O5gub^7
IntList  id_key; //  1-6
FloatList  id_time;  //  0 -  ......
StringList data = new StringList();
long timer = 0;
boolean showText = false;
int mode = 0;


void setup() {
  id_key = new IntList();
  id_time = new FloatList();
  size(800, 800);
  textSize(30);
}


void draw() {
  if (showText) {
    background(100);
  } else {
    background(0);
  }

  if (mode ==0) text("enter to start", 100, 100);

  if (mode ==1) {
    rect(map(millis()-timer, 0, 3000, 0, width), 10, 10, 10);

    if (millis()-timer > 3000) {
      showText = !showText;
      if (showText==false) {
        id_key.clear();
        id_time.clear();
        saveStrings(second()+"log.txt", data.array());
        sendToCloud();
        data.clear();
      }
      timer = millis();
      // id_key.clear();
      // id_time.clear();
    }

    text(millis()-timer, 10, 100);
    for (int i = 0; i< id_key.size(); i++) {
      if (millis()-timer > id_time.get(i)) {
        text(char(id_key.get(i)), 200, 40*i + 100);
        text(id_time.get(i), 300, 40*i + 100);
      }
    }
  }
}

void keyPressed() {
  if (keyCode == 10) {
    println("enter");
    if (mode==0) mode =1;
    timer = millis();
    return;
  }

  println(key);
  id_key.append(key);
  id_time.append(millis()-timer);
  data.append(key+","+(millis()-timer));
}
