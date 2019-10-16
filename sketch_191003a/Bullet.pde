class bullet extends GameObject{
  
  
  int timer;
  
  bullet(){
    
    //location.x = myShip.location.x;
    
    //location.y = myShip.location.y;
    
    //velocity.x = myShip.velocity.x;
    
    //velocity.y = myShip.velocity.y;
    
    
    
    timer = 60;
    
    lives = 1;
    
    location = new PVector (myShip.location.x, myShip.location.y);
    
    velocity = new PVector (myShip.velocity.x, myShip.velocity.y);
    
    velocity.setMag(10);
    
  }
  
  
  void show(){
    
    stroke(255);
    
    noFill();
    
    ellipse(location.x, location.y, 10, 10);
    
  }
  
  
  void act(){
    
      super.act();
  
      location.add(velocity);
      
      timer --;
      
      if (timer == 0) {
      
        lives = 0;
        
      }
  
  }
  
}
