void GameIP(){
  
  
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
  
  textSize(84);
  fill(255);
  text("Lives: " + myShip.lives, 400, 300);
  text("Timer: " + timer, 450, 360);
}
