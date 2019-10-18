abstract class GameObject{

  int lives;

  PVector location;

  PVector velocity;

  PVector direction;

  

  GameObject(){
    
  }
  
  
  void show(){
  
  }
  
  
  void act(){
  
    location.add(velocity);

    if (location.x < -shipsize / 2) location.x = width + shipsize / 2;

    if (location.x > width + shipsize / 2) location.x = -shipsize / 2;

    if (location.y < -shipsize / 2) location.y = height + shipsize / 2;

    if (location.y > height + shipsize / 2) location.y = -shipsize / 2;
  
  }
  
  
  boolean alive(){
  
    return true;
  
  }
  
}
