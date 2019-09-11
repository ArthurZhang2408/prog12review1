int x;
int xpos = 400;
boolean a = false;
void setup(){
  size(800, 600);
  x = 400;
}

void draw(){
  background(200);
  face(xpos, 100);
  face(xpos, 700);
  xpos = xpos-5;
  if (xpos < -200){
    xpos = 800;
  }
}

void face(int x, int y){
  pushMatrix();
  translate(x, y);
  //background(200);
  //ellipse(x, 300, 100, 100);
  //if (x == -50){
  //  a = true;
  //}else if (x == 850){
  //  a = false;
  //}
  //if (!a){
  //  x = x - 5; 
  //}else{
  //  x = x + 5;
  //}
  //fill(0);
  //ellipse(50, 60, 50, 30);
  //ellipse(150, 60, 30, 30);
  fill(255);
  ellipse(100, 100, 200, 200);
  ellipse(50, 60, 50, 50);
  ellipse(150, 60, 50, 50);
  ellipse(100, 150, 110, 50);
  popMatrix();
}
