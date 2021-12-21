float speed2_1 = 7.5;
float speed2_2 = 7.5;
float speed2_3 = 7.5;
float speed2_4 = 7.5;
float speed2_5 = 7.5;
class xObstacles1Level2
{
  // n = rectNummer
  // xn_1 = xVariable 
  // xn_2 = width
  // yn_1 = yVariable
  // yn_2 = height
  float x1_1 = wWindow, y1_1 = 50, x1_2 = 200, y1_2 = random(5, 100), 
        x2_1 = wWindow, y2_1 = 300, x2_2 = 300, y2_2 = random(5, 100), 
        x3_1 = wWindow, y3_1 = 100, x3_2 = 400, y3_2 = random(5, 100), 
        x4_1 = wWindow, y4_1 = 100, x4_2 = 400, y4_2 = random(5, 100), 
        x5_1 = wWindow, y5_1 = 100, x5_2 = 400, y5_2 = random(5, 100);


  // PreSet Color
  color c = color(100, 100, 100);

  // Alle "Obstacles"(rect()) auf dem Screen erstellen
  void erzeugen()
  {
    fill(c);
    rect(x1_1, y1_1, x1_2, y1_2);
    rect(x2_1, y2_1, x2_2, y2_2);
    rect(x3_1, y3_1, x3_2, y3_2);
    rect(x4_1, y4_1, x4_2, y4_2);
    rect(x5_1, y5_1, x5_2, y5_2);

    // Collision checken
    o1.pruefen();
    o1.bewegen();
  }

  // Collision-Check: |Rect - Figur|
  void pruefen()

  {
    // Collision-Detection
    if (
      (f.x1 + f.x2 < x1_1 || f.x1 > x1_1 + x1_2  ||  f.y1 + f.y2 < y1_1 || f.y1 > y1_1 + y1_2) &&
      (f.x1 + f.x2 < x2_1 || f.x1 > x2_1 + x2_2  ||  f.y1 + f.y2 < y2_1 || f.y1 > y2_1 + y2_2) &&
      (f.x1 + f.x2 < x3_1 || f.x1 > x3_1 + x3_2  ||  f.y1 + f.y2 < y3_1 || f.y1 > y3_1 + y3_2) &&
      (f.x1 + f.x2 < x3_1 || f.x1 > x4_1 + x4_2  ||  f.y1 + f.y2 < y4_1 || f.y1 > y4_1 + y4_2) &&
      (f.x1 + f.x2 < x3_1 || f.x1 > x5_1 + x5_2  ||  f.y1 + f.y2 < y5_1 || f.y1 > y5_1 + y5_2)
      )
    {
      movePlayer = true;
    } else
    {
      movePlayer = false;
    }
  }
  void bewegen() {
    if (movePlayer == true) {
      //Move erstes Objekt 
      x1_1 -= speed2_1;
      if (x1_1 <= -x1_2) {
        speed2_1 *= -1;
        y1_1 = int(random(0, hWindow));
      }
      if (x1_1 >= wWindow ) {
        speed2_1 *= -1;
        y1_1 = int(random(0, hWindow));
        speed2_1 = (0.01 * ((millis() - w.getTime()) / 1000));
      }

      x2_1 -= speed2_2;
      if (x2_1 <= -x2_2 ) {
        speed2_2 *= -1;
        y2_1 = int(random(0, hWindow));
      }
      if (x2_1 >= wWindow ) {
        speed2_2 *= -1;
        y2_1 = int(random(0, hWindow));
        speed2_2 = (0.01 * ((millis() - w.getTime()) / 1000));
      }

      x3_1 -= speed2_3;
      if (x3_1 <= -x3_2 ) {
        speed2_3 *= -1;
        y3_1 = int(random(0, hWindow));
      }
      if (x3_1 >= wWindow ) {
        speed2_3 *= -1;
        y3_1 = int(random(0, hWindow));
        speed2_3 = (0.01 * ((millis() - w.getTime()) / 1000));
      }

      x4_1 -= speed2_4;
      if (x4_1 <= -x4_2 ) {
        speed2_4 *= -1;
        y4_1 = int(random(0, hWindow));
      }
      if (x4_1 >= wWindow ) {
        speed2_4 *= -1;
        y4_1 = int(random(0, hWindow));
        speed2_4 = (0.01 * ((millis() - w.getTime()) / 1000));
      }

      x5_1 -= speed2_5;
      if (x5_1 <= -x5_2 ) {
        speed2_5 *= -1;
        y5_1 = int(random(0, hWindow));
      }
      if (x5_1 >= wWindow ) {
        speed2_5 *= -1;
        y5_1 = int(random(0, hWindow));
        speed2_5 = (0.01 * ((millis() - w.getTime()) / 1000));
      }

      println(speed2_1);
    }
  }
}
