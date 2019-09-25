String [] colors = {"RED", "ORANGE", "YELLOW", "GREEN", "BLUE", "BLACK", "WHITE"};
color red = #DF151A;
color orange = #E86100;
color yellow = #FFFF00;
color blue = #0000FF;
color green = #00DA3C;
color black = #000000;
color white = #FFFFFF;
color cColor;
boolean IP = true;
int eChoice;
int choice;
int coin;
int mode;
int point = 0;
int highscore;
int Length;
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
    stroke(red);
    strokeWeight(10);
    line(10, 600, Length - 9, 600);
    noStroke();
    Length = Length - 10;
    if(Length <= 0) mode = gameover;
  } else if (mode == gameover) {
    GameOver();
  } else {
    println("Mode error! Mode was " + mode);
  }
}

void mouseReleased(){
  if (mode == menu) {
    mode = gameip;
    IP = true;
  } else if (mode == gameip) {
    if (mouseX < 300) {
      if(coin == 0){
        IP = true;
        point ++;
      }else {
        mode = gameover;
        point = 0;
      }
    } else {
      if (coin == 0){
        mode = gameover;
        point = 0;
      }else{
        IP = true;
        point ++;
      }
    }
  } else if (mode == gameover) {
    mode = menu;
  }
  if (point > highscore) highscore = point; 
}
