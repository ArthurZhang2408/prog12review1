String [] colors = {"RED", "ORGANGE", "YELLOW", "GREEN", "BLUE", "BLACK", "WHITE"};
color red = #DF151A;
color orange = #DF151A;
color yellow = #FD8603;
color green = #F4F328;
color blue = #00DA3C;
color black = #000000;
color white = #FFFFFF;
String isRight = "";
int choice;
int mode;
final int menu = 0;
final int gameip = 1;
final int gameover = 2;

void setup() {
  size(600, 800);
  mode = menu;
}

void draw() {
  if (mode == menu) {
    Menu();
  } else if (mode == gameip) {
    GameIP();
  } else if (mode == gameover) {
    GameOver();
  } else {
    println("Mode error! Mode was " + mode);
  }
}

void mouseReleased() {
  if (mode == menu) {
    mode = gameip;
  } else if (mode == gameip) {
    if (mouseX < 300) {
    } else {
      mode = gameover;
    }
  } else if (mode == gameover) {
    mode = menu;
  }
}
