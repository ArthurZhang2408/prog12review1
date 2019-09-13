int mode;
final int intro = 0;
final int game = 1;
final int gameover = 2;
void setup(){
  size(800, 600);
  mode = intro;
}

void draw(){
  if (mode == intro){
    intro();
  }else if (mode == game){
    game();
  }else if (mode == gameover){
    gameover();
  }else {
    println("Mide error! Mode was " + mode);
  }
}

void mouseReleased(){
  if (mode < 2) mode = mode + 1;
  else if (mode == 2) mode = 0;
}
