void Menu(){
  noStroke();
  background(255);
  textSize(84);
  textAlign(CENTER, CENTER);
  fill(0);
  text("COLOR GAME", 300, 400);
  textSize(60);
  if(mouseX <= 450 && mouseX >= 150 && mouseY <= 650 && mouseY >= 550){
    fill(0);
    rect(150, 550, 300, 100);
    fill(255);
    text("PLAY", 300, 600);
  }else{
    fill(2550);
    rect(150, 550, 300, 100);
    fill(0);
    text("PLAY", 300, 600);
  }
}
