void Intro(){

  background(255);

  noStroke();

  textSize(84);

  textAlign(CENTER, CENTER);

  fill(0);


  text("ASTEROID", 400, 250);

  textSize(60);

  if(mouseX <= 550 && mouseX >= 250 && mouseY <= 500 && mouseY >= 400){

    fill(0);

    rect(250, 400, 300, 100);

    fill(255);

    text("PLAY", 400, 450);

  }else{

    fill(0);

    text("PLAY", 400, 450);

  }

}
