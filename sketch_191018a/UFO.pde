class UFO extends GameObject{

  int timer;


  int shotTimer;


  int threshold;
  
  
  

  UFO(){
  
    lives = 1;
    
    
    
    shotTimer = 0;



    threshold = 180;
    
    size = 50;
    
    timer = 1200;
    location = new PVector(random(width), random(height));



    velocity = new PVector(0, random(1.5, 2));



    velocity.setMag( random(1, 2) );



    velocity.rotate( random(TWO_PI) );

  
  }
  
  void show(){
  
    image(ufoimg, location.x, location.y, size, size);
  
  }
  
  void act(){
    
  
    super.act();
    
    shotTimer ++;
    
    if (shotTimer >= threshold) { 



      myGameObjects.add(new UFObullet());



      shotTimer = 0;



    }
    timer--;

     if (timer == 0) {

        lives = 0; 

     }
     
     for(int i = 0; i < myGameObjects.size(); i ++){
     GameObject myObj = myGameObjects.get(i);



      if (myObj instanceof Bullet) {



        if (dist(myObj.location.x, myObj.location.y, location.x, location.y) < size/2 + myObj.size/2) {
          for(int j = 0; j < 8; j ++){
             myGameObjects.add(new Particle(location.x, location.y, size));
          }


          lives = 0;
          
          myShip.lives++;
          
          point += 1000;



          myObj.lives = 0;






        }



      }



    }
  
  }

}
