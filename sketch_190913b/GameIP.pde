void GameIP(){
  background(255);
  fill(0);
  rect(0, 0, 300, 800);
  textSize(84);
  fill(255);
  textAlign(CENTER, CENTER);
  text("TRUE", 150, 75);
  fill(0);
  text("FALSE", 450, 75);
  if (isRight.equals("y")){
    choice = int(random(0, 5));
    coin = int(random(0, 2));
    if (coin == 0){
      switch (colors [choice]){
        case "RED":
        fill(red);
        cColor = red;
        break;
        case "ORANGE":
        fill(orange);
        cColor = orange;
        break;
        case "YELLOW":
        fill(yellow);
        cColor = yellow;
        break;
        case "GREEN":
        fill(green);
        cColor = green;
        break;
        case "BLUE":
        fill(blue);
        cColor = blue;
        break;
      }
      textAlign(CENTER, CENTER);
      text(colors [choice], 300, 500);
      isRight = "";
    }else {
      eChoice = int(random(0, 4));
      switch (colors [choice]){
        case "RED":
        String eColors [] = {"ORGANGE", "YELLOW", "GREEN", "BLUE"};
      }
    }
  }else if (isRight.equals("")){
    fill(cColor);
    textAlign(CENTER, CENTER);
    text(colors [choice], 300, 500);
  }
}

void swichColor(int i, String colors[], color a, color b, color c, color d, color e){
      switch (colors[i]){
        case i:
        fill(red);
        cColor = red;
        break;
        case "ORANGE":
        fill(orange);
        cColor = orange;
        break;
        case "YELLOW":
        fill(yellow);
        cColor = yellow;
        break;
        case "GREEN":
        fill(green);
        cColor = green;
        break;
        case "BLUE":
        fill(blue);
        cColor = blue;
        break;
      }
}

void swichColor(String Color, String colors[], color a, color b, color c, color d){
  
}
