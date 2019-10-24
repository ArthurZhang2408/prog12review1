
boolean upkey, downkey, leftkey, rightkey, spacekey, debug, repawn;



PImage shipimg, asteroidimg, bgimg;



Ship myShip;



int shipsize = 100;



ArrayList<GameObject> myGameObjects;

final int menu = 0;

final int gameip = 1;

final int gameover = 2;

int mode;
  
    int timer = 0;







void setup() {

  

  mode = menu;

  

  repawn = false;

  

  debug = true;



  size(800, 600);



  imageMode(CENTER);



  shipimg = loadImage("ship.png");



  shipimg.resize(shipsize, shipsize);



  myShip = new Ship();

  

  bgimg = loadImage("bg.png");

  

  bgimg.resize(800, 600);



  myGameObjects = new ArrayList<GameObject>();





  

  myGameObjects.add(myShip);

  

  for(int i = 0; i < 5; i ++){

    

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
  
  if(repawn && mode == gameip){
    
    timer ++;

    stroke( #07ccff);
    
    strokeWeight(3);
    
    noFill();
    
    ellipse(myShip.location.x, myShip.location.y, 150, 150);
    
    if(timer == 120) {
      
      repawn = false;
      
      timer = 0;
    
    } 
  
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
