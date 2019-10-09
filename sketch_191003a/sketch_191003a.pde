boolean upKey, downKey, leftKey, rightKey, spaceKey;

PImage shipimg;

ship myShip;

int shipsize = 100;

boolean debug = true;

ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

void setup(){

  size(600, 600);

  shipimg = loadImage("ship.png");

  shipimg.resize(shipsize, shipsize);

  myShip = new ship();

  imageMode(CENTER);

}



void draw(){

  background(0);

  myShip.show();

  myShip.act();
  
  for(GameObject Bullet : gameObjects){
  
    Bullet.show();
    
    Bullet.act();
    
    if(!Bullet.alive()){
    
        gameObjects.remove(Bullet);
    
    }
  
  }
  
  //for(int i = 0; i < gameObjects.size(); i ++){
  
  //  GameObject bullet = gameObjects.get(i);
    
  //  bullet.show();
    
  //}

}



void keyPressed(){

  if(keyCode == UP) upKey = true;

  if(keyCode == DOWN) downKey = true;

  if(keyCode == LEFT) leftKey = true;

  if(keyCode == RIGHT) rightKey = true;

  if(key     == ' ') spaceKey = true;

}



void keyReleased(){

  if(keyCode == UP) upKey = false;

  if(keyCode == DOWN) downKey = false;

  if(keyCode == LEFT) leftKey = false;

  if(keyCode == RIGHT) rightKey = false;

  if(key     == ' ') spaceKey = false;

}
