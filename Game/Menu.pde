class Menu
{
  // Variablen des Objekts speichern
  float x1_1 = wWindow / 3,   y1_1 = hWindow / 7, x1_2 = wWindow / 3, y1_2 = hWindow / 7, 
        x2_1 = wWindow / 3,   y2_1 = hWindow / 7 * 3, x2_2 = wWindow / 3, y2_2 = hWindow / 7, 
        x3_1 = wWindow / 3,   y3_1 = hWindow / 7 * 5, x3_2 = wWindow / 3, y3_2 = hWindow / 7, 
        x4_1 = wWindow / 20,  y4_1 = hWindow / 7 * 4, x4_2 = wWindow / 3, y4_2 = hWindow / 7;

  //Variablen mit Farben benennen
  color c1 = color(0, 0, 0), c2 = color(255, 255, 255);

  //Rechtecke werden erstellt
  void erzeugen()
  {
    background(255,255,255);
    fill(c2);
    rect(x1_1, y1_1, x1_2, y1_2);
    rect(x2_1, y2_1, x2_2, y2_2);
    rect(x3_1, y3_1, x3_2, y3_2);
    //Level Beschriftung
    fill(c1);
    textSize(30);
    textAlign(CENTER);
    text("Level 1", wWindow /2, hWindow * 1.5 / 7);
    text("Level 2", wWindow /2, hWindow * 3.5 / 7);
    text("Level 3", wWindow /2, hWindow * 5.5 / 7);
    m.pruefen();
  }
  //Pruefung für die Maus
  void pruefen() {
    if (
      (mouseX > x1_1 && mouseX < x1_1 + x1_2  &&  mouseY > y1_1 && mouseY < y1_1 + y1_2)
      )
    {
      level_1 = true;
    } else
    {
      level_1 = false;
    }
    if (
      (mouseX > x2_1 && mouseX < x2_1 + x2_2  &&  mouseY > y2_1 && mouseY < y2_1 + y2_2)
      )
    {
      level_2 = true;
    } else
    {
      level_2 = false;
    }
    if (
      (mouseX > x3_1 && mouseX < x3_1 + x3_2  &&  mouseY > y3_1 && mouseY < y3_1 + y3_2)
      )
    {
      level_3 = true;
    } else
    {
      level_3 = false;
    }
      
     if (
      (mouseX > x4_1 && mouseX < x4_1 + x4_2  &&  mouseY > y4_1 && mouseY < y4_1 + y4_2)
      )
    {
      reset_1 = true;
      }
      else
    {
      reset_1 = false;
    }
  }
  void reset() 
  {
      fill(c2);
    rect(x4_1, y4_1, x4_2, y4_2);
    fill(c1);
    textSize(30);
    textAlign(CENTER);
    text("Menu", wWindow / 5 , 450);
   
  }
}
