boolean upKey, downKey, leftKey, rightKey, spaceKey;
PImage shipimg;
ship ship;
int shipsize = 50;
boolean debug = true;
void setup(){
  size(600, 600);
  shipimg = loadImage("ship.png");
  shipimg.resize(shipsize, shipsize);
  ship = new ship();
  imageMode(CENTER);
}

void draw(){
  background(0);
  ship.show();
  ship.act();
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
