class ship{
  int lives;
  PVector location;
  PVector velocity;
  PVector direction;
  
  ship(){
    lives = 3;
    location = new PVector(width/2, height/2);
    velocity = new PVector(0,0);
    direction = new PVector(0,-1);
  }
  
  void show(){
    pushMatrix();
    trans
    image(shipimg, 0, 0);
    popMatrix();
  }
}
