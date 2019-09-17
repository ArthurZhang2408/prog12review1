void GameIP(){
  background(255);
  fill(0);
  rect(0, 0, 300, 800);
  textSize(84);
  fill(255);
  textAlign(CENTER, CENTER);
  text("TRUE", 150, 75);
  fill(0);
  text("FALSE", 450, 75);
  if (isRight.equals("")){
    choice = int(random(0, 5));
  }
}
