void GameIP(){
  
  
  ufotimer++;
  if(ufotimer == 1260){
    myUFO = new UFO();
    myGameObjects.add(myUFO);
    ufotimer = 0;
  }
  
  imageMode(CENTER);

  image(bgimg, width/2, height/2);

  //myShip.show();

  //myShip.act();

  

  int i = 0;

  while (i < myGameObjects.size()) {

    GameObject myObj = myGameObjects.get(i);

    myObj.show();

    myObj.act();

    if (myObj.lives == 0) {

       myGameObjects.remove(i); 

    } else {

       i++;

    }

  }
  
  textSize(40);
  fill(255);
  //text("Lives: " + myShip.lives, 100, 50);
  text(point, 100, 50);
  if(point > highScore)highScore = point; 
  text("High Score: " + highScore, 600, 50);
  if(myGameObjects.size() == 1){
    asNum ++;
    repawn = true;
    for(int j = 0; j < asNum; j ++){

      myGameObjects.add(new Asteroid());

    }
  }
  showLives();
  if(repawn){
    
    timer ++;

    stroke( #07ccff);
    
    strokeWeight(3);
    
    noFill();
    
    ellipse(myShip.location.x, myShip.location.y, 150, 150);
    
    if(timer == 120) {
      
      repawn = false;
      
      timer = 0;
    
    }
    
  }
}

void showLives(){
  for(int i = 0; i < myShip.lives; i ++){
  
    image(shipimg, 50+50*i, 140, 40, 40);
  
  }
}
