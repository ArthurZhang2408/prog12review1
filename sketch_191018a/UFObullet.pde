class UFObullet extends GameObject{

  int timer;



  UFObullet() {

    location = new PVector (myUFO.location.x, myUFO.location.y);

    velocity = new PVector (myShip.location.x - myUFO.location.x, myShip.location.y - myUFO.location.y);

    velocity.setMag(2);

    lives = 1;

    timer = 360;

    size = 10;
 
  }



  void show() {

    noFill();

    stroke(0, 255, 0);

    ellipse(location.x, location.y, size, size);

  }

  

  void act() {

     super.act();

     

     timer--;

     if (timer == 0) {

        lives = 0; 

     }

  }

}
