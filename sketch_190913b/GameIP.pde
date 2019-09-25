void GameIP() {
  background(255);
  fill(0);
  rect(0, 0, 300, 800);
  textSize(84);
  fill(255);
  textAlign(CENTER, CENTER);
  text("TRUE", 150, 75);
  fill(0);
  text("FALSE", 450, 75);
  textSize(35);
  text("Point: " + point, 450, 700);
  text("High Score: " + highscore, 450, 760);
  textSize(84);
  if (IP) {
    Length = 600;
    choice = int(random(0, 5));
    coin = int(random(0, 2));
    if (coin == 0) {
      switch (colors [choice]) {
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
    } else {
      do {
        eChoice = int(random(0, 5));
      } while (eChoice == choice);
      switch (colors [eChoice]) {
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
    }
      textAlign(CENTER, CENTER);
      text(colors [choice], 300, 500);
      IP = false;
  } else {
    fill(cColor);
    textAlign(CENTER, CENTER);
    text(colors [choice], 300, 500);
  }
}
