class Particle extends GameObject{

  int timer;
  
  Particle(float x, float y, int s){
  
    lives = 1;



    location = new PVector(x, y);



    velocity = new PVector(0, 1);



    velocity.setMag(1.5);



    velocity.rotate( random(TWO_PI) );
    
    timer = int(random(20, 40));
    
    size = int(random((s/10-s/20), (s/10+s/20)));

  
  }
  
  void show(){
  
    fill(200);
    
    noStroke();
    
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
