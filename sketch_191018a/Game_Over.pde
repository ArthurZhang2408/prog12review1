void GameOver(){
  background(0);
  textSize(84);
  textAlign(CENTER, CENTER);
  fill(255);
  text("GAME OVER!", 400, 300);
  textSize(60);

  if(mouseX <= 550 && mouseX >= 250 && mouseY <= 500 && mouseY >= 400){
    
    noStroke();

    fill(255);

    rect(250, 400, 300, 100);

    fill(0);

    text("RESTART", 400, 450);

  }else{

    fill(255);

    text("RESTART", 400, 450);

  }
  
}
