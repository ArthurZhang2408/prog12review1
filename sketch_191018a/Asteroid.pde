class Asteroid extends GameObject {







  Asteroid() {

  

  asteroidimg = loadImage("asteroid.png");



    lives = 1;



    size = 100;



    location = new PVector(random(width), random(height));



    velocity = new PVector(0, random(1.5, 2));



    velocity.setMag( random(1, 2) );



    velocity.rotate( random(TWO_PI) );



  }







  Asteroid(int s, float x, float y) {

  

  asteroidimg = loadImage("asteroid.png");



    lives = 1;



    size = s;



    location = new PVector(x, y);



    velocity = new PVector(0, 1);



    velocity.setMag( random(0, 2) );



    velocity.rotate( random(TWO_PI) );



  }







  void show() {



    stroke(0,255,0);



    noFill();



    //ellipse(location.x, location.y, size, size);

    

    image(asteroidimg, location.x, location.y, size, size);

  

  //asteroidimg = loadImage("aster.jpg");

    //asteroidimg.resize(size, size);



  }







  void act() {



    super.act();







    int i = 0;



    while (i < myGameObjects.size()) {



      GameObject myObj = myGameObjects.get(i);



      if (myObj instanceof Bullet) {



        if (dist(myObj.location.x, myObj.location.y, location.x, location.y) < size/2 + myObj.size/2) {
          for(int j = 0; j < 8; j ++){
          myGameObjects.add(new Particle(location.x, location.y, size));
          }


          lives = 0;
          
          if(size == 100)point += 10;
          else if(size == 50) point += 20;
          else if(size == 25) point += 50;
          else if(size < 25)point += 100;



          myObj.lives = 0;



          if (size > 15) {



            myGameObjects.add(new Asteroid(size/2, location.x, location.y));



            myGameObjects.add(new Asteroid(size/2, location.x, location.y));



          }



        }



      }







      i++;



    }



  }



}

//class Asteroid extends GameObject {







//  Asteroid() {



//    lives = 1;



//    size = 100;



//    location = new PVector(random(width), random(height));



//    velocity = new PVector(0, 1);



//    velocity.setMag( random(0, 2) );



//    velocity.rotate( random(TWO_PI) );



//  }







//  Asteroid(int s, float x, float y) {



//    lives = 1;



//    size = s;



//    location = new PVector(x, y);



//    velocity = new PVector(0, 1);



//    velocity.setMag( random(0, 2) );



//    velocity.rotate( random(TWO_PI) );



//  }







//  void show() {



//    stroke(0,255,0);



//    noFill();



//    ellipse(location.x, location.y, size, size);



//  }







//  void act() {



//    super.act();







//    int i = 0;



//    while (i < myGameObjects.size()) {



//      GameObject myObj = myGameObjects.get(i);



//      if (myObj instanceof Bullet) {



//        if (dist(myObj.location.x, myObj.location.y, location.x, location.y) < size/2 + myObj.size/2) {



//          lives = 0;



//          myObj.lives = 0;



//          if (size > 15) {



//            myGameObjects.add(new Asteroid(size/2, location.x, location.y));



//            myGameObjects.add(new Asteroid(size/2, location.x, location.y));



//          }



//        }



//      }







//      i++;



//    }



//  }



//}
