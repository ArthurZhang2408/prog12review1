String [] colors = {"RED", "ORANGE", "YELLOW", "GREEN", "BLUE", "BLACK", "WHITE"};
color red = #DF151A;
color orange = #E86100;
color yellow = #FFFF00;
color blue = #0000FF;
color green = #00DA3C;
color black = #000000;
color white = #FFFFFF;
color cColor;
String isRight = "y";
int eChoice;
int choice;
int coin;
int mode;
int point = 0;
int highscore;
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

void mouseReleased(){
  if (mode == menu) {
    mode = gameip;
  } else if (mode == gameip) {
    if (mouseX < 300) {
      if(coin == choice){
        isRight = "y";
        point ++;
      }else {
        mode = gameover;
        point = 0;
      }
    } else {
      if (coin == choice){
        mode = gameover;
        point = 0;
      }else{
        isRight = "y";
        point ++;
      }
    }
  } else if (mode == gameover) {
    mode = menu;
  }
  if (point > highscore) highscore = point; 
}
