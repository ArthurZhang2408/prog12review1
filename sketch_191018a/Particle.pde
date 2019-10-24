class Particle extends GameObject{

  int timer;
  
  Particle(float x, float y){
  
    lives = 1;



    location = new PVector(x, y);



    velocity = new PVector(0, 1);



    velocity.setMag( random(0, 2) );



    velocity.rotate( random(TWO_PI) );

  
  }

} 
