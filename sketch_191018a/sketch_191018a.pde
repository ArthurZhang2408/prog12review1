
boolean upkey, downkey, leftkey, rightkey, spacekey, debug, repawn;



PImage shipimg, asteroidimg, bgimg, ufoimg;



Ship myShip;

UFO myUFO;



int shipsize = 100, highScore = 0;



ArrayList<GameObject> myGameObjects;

final int menu = 0;

final int gameip = 1;

final int gameover = 2;

int mode, point, timer, asNum, ufotimer;







void setup() {
  
  
  timer = 0;
  
  ufotimer = 0;
  
  asNum = 5;
  
  point = 0;
  

  mode = menu;

  

  repawn = true;

  

  debug = true;



  size(800, 600);



  imageMode(CENTER);



  shipimg = loadImage("ship.png");
  
  
  ufoimg = loadImage("ufo.jpg");



  shipimg.resize(shipsize, shipsize);



  myShip = new Ship();
  
  

  

  bgimg = loadImage("bg.png");

  

  bgimg.resize(width, height);



  myGameObjects = new ArrayList<GameObject>();





  

  myGameObjects.add(myShip);

  

  for(int i = 0; i < asNum; i ++){

    

    myGameObjects.add(new Asteroid());

    

  }



}







void draw() {

  if (mode == menu) {

    Intro();

  } else if (mode == gameip) {

    GameIP();

  } else if (mode == gameover) {

    GameOver();

  }
  
   
  
  
  

}







void keyPressed() {



  if (keyCode == UP)    upkey = true; 



  if (keyCode == DOWN)  downkey = true;



  if (keyCode == LEFT)  leftkey = true;



  if (keyCode == RIGHT) rightkey = true;



  if (key == ' ')       spacekey = true;



}







void keyReleased() {



  if (keyCode == UP)    upkey = false; 



  if (keyCode == DOWN)  downkey = false;



  if (keyCode == LEFT)  leftkey = false;



  if (keyCode == RIGHT) rightkey = false;



  if (key == ' ')       spacekey = false;



}

void mousePressed(){

  if (mode == menu) {

  if(mouseX <= 550 && mouseX >= 250 && mouseY <= 500 && mouseY >= 400){

    mode = gameip;

  }

  }else if (mode == gameover) {

    if(mouseX <= 550 && mouseX >= 250 && mouseY <= 500 && mouseY >= 400) {setup();}

  }

}
