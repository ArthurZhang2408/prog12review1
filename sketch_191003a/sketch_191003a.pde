boolean upKey, downKey, leftKey, rightKey;
PImage shipimg;
void setup(){
  size(800, 600);
  shipimg = loadImage("ship.jpg");
}

void draw(){
  
}

void keyPressed(){
  if(keyCode == UP) upKey = true;
  if(keyCode == DOWN) downKey = true;
  if(keyCode == LEFT) leftKey = true;
  if(keyCode == RIGHT) rightKey = true;
}

void keyReleased(){
  if(keyCode == UP) upKey = false;
  if(keyCode == DOWN) downKey = false;
  if(keyCode == LEFT) leftKey = false;
  if(keyCode == RIGHT) rightKey = false;
}
