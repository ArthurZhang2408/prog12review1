void Intro(){
  background();
  noStroke();
  textSize(84);
  textAlign(CENTER, CENTER);
  fill(0);
  text("COLOR GAME", 300, 400);
  textSize(60);
  if(mouseX <= 450 && mouseX >= 150 && mouseY <= 650 && mouseY >= 550){
    fill(255);
    text("PLAY", 300, 600);
  }else{
    fill(2550);
    rect(150, 550, 300, 100);
    fill(0);
    text("PLAY", 300, 600);
  }
}
void background(){
  image(gif[currentPic], 0, 0, 600, 800);
  currentPic++;
  if(currentPic == gif.length) currentPic = 0;
}
