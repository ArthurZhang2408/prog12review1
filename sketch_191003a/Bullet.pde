class bullet extends GameObject{
  
  
  bullet(){
    
    //location.x = myShip.location.x;
    
    //location.y = myShip.location.y;
    
    //velocity.x = myShip.velocity.x;
    
    //velocity.y = myShip.velocity.y;
    
    location = new PVector (myShip.location.x, myShip.location.y);
    
    velocity = new PVector (myShip.velocity.x, myShip.velocity.y);
    
    velocity.setMag(5);
    
  }
  
  
  void show(){
    
    fill(255, 0, 0);
    
    ellipse(location.x, location.y, 25, 25);
    
  }
  
  
  void act(){
  
      location.add(velocity);
  
  }
  
}
