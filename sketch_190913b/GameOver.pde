void GameOver(){
  background(0);
  textSize(84);
  textAlign(CENTER, CENTER);
  fill(255);
  text("GAME OVER!", 300, 400);
  textSize(60);
  if(mouseX <= 450 && mouseX >= 150 && mouseY <= 650 && mouseY >= 550){
    fill(255);
    rect(150, 550, 300, 100);
    fill(0);
    text("RESTART", 300, 600);
  }else{
    fill(0);
    rect(150, 550, 300, 100);
    fill(255);
    text("RESTART", 300, 600);
  }
}
