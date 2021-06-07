
void sendToCloud() {
  PostRequest post = new PostRequest("https://nccu202105.caerus.life/31log.php"); //make new POST request object directed to local server on port 8080

  post.addHeader("Content-Type", "application/x-www-form-urlencoded");

  String send ="";
  for (int i = 0; i<data.size(); i++) {
    println(data.get(i));
    send+= data.get(i)+"\n";
  }

  post.addData("dataIn", send ); //add data to request


  post.send(); //send request
  println("send to post");
  println(    );
  mode = 0;
}
