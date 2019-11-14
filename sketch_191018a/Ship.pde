class Ship extends GameObject {







  //1. Instance variables



  PVector direction;



  int shotTimer;



  int threshold;







  //2. Constructor(s)



  Ship() {



    lives = 3;



    shotTimer = 0;



    threshold = 10;







    location = new PVector(width/2, height/2);   



    velocity = new PVector(0, 0);



    direction = new PVector(0, -0.1);



  }







  //3. Behaviour functions



  void show() {



    pushMatrix();



    translate(location.x, location.y);



    rotate( direction.heading() );



    stroke(0,255,0);



    noFill();



    image(shipimg, 0, 0);



    popMatrix();



    if(debug){



      stroke(0, 255, 0);
      
      strokeWeight(1);



      line(100, 100, 100+velocity.x * 10, 100 + velocity.y * 10);



      stroke(255, 0, 0);



      line(100, 100, 100 + direction.x * 500, 100 + direction.y * 500);



    }



  }







  void act() {



    super.act();







    shotTimer++;







    if (upkey)    velocity.add(direction);



    if (downkey) velocity.sub(direction);



    if (leftkey) direction.rotate( -radians(2) );



    if (rightkey) direction.rotate( radians(2) );



    if (spacekey && shotTimer >= threshold) { 



      myGameObjects.add(new Bullet());



      shotTimer = 0;



    } for(int i = 0; i < myGameObjects.size(); i ++) {



      GameObject myObj = myGameObjects.get(i);



      if (myObj instanceof Asteroid) {



        if (dist(myObj.location.x, myObj.location.y, location.x, location.y) < (shipsize/2 + myObj.size/2 - 10) && !repawn) {



          lives--;

          

          repawn = true;

          

          

          

          if(lives <= 0){

          

            mode = gameover;

            

          }



        }



      }else if (myObj instanceof UFObullet) {



        if (dist(myObj.location.x, myObj.location.y, location.x, location.y) < (shipsize/2 + myObj.size/2 - 10) && !repawn) {



          lives--;

          

          repawn = true;
          if(lives <= 0){

          

            mode = gameover;

            

          }



        }
      }



  }
  }



}
