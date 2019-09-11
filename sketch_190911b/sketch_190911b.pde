void setup(){
  size(600, 800);
}

void draw(){
  for (int i = 1; i < 100; i ++){
    yeet(i, i, i);
  }
}

void yeet(int size, int x, int y){
  textSize(size);
  text("Yeet", x, y);
}
