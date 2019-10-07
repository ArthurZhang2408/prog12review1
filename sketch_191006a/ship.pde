class ship{
  int lives;
  PVector location;
  PVector velocity;
  PVector direction;
  
  ship(){
    lives = 3;
    location = new PVector(width/2, height/2);
    velocity = new PVector(0,0);
    direction = new PVector(0,-0.1);
  }
  
  void show(){
    pushMatrix();
    translate(location.x, location.y);
    rotate(direction.heading());
    image(shipimg, 0, 0);
    popMatrix();
    if(debug){
      stroke(0, 255, 0);
      line(100, 100, 100+velocity.x * 10, 100 + velocity.y * 10);
      stroke(255, 0, 0);
      line(100, 100, 100 + direction.x * 500, 100 + direction.y * 500);
    }
  }
  
  void act(){
    location.add(velocity);
    if(leftKey)direction.rotate(radians(-5));
    if(rightKey)direction.rotate(radians(5));
    if(upKey)velocity.add(direction);
    if (location.x < -shipsize / 2) location.x = width + shipsize / 2;
    if (location.x > width + shipsize / 2) location.x = -shipsize / 2;
    if (location.y < -shipsize / 2) location.y = height + shipsize / 2;
    if (location.y > width + shipsize / 2) location.y = -shipsize / 2;
  }
}
