// Alle Objekte deklarieren
Figur f;
xObstacles1Level1 o1;
xObstacles1Level2 o2;
xObstacles1Level3 o3;
Welt w;
Score s;
Menu m;

// Movement-Variablen
boolean movePlayer = true;
float xVerschieben = 0, yVerschieben = 0;
// Menu-Variablen
boolean level_1 = false;
boolean level_2 = false;
boolean level_3 = false;
boolean reset_1  = false;
// Window-Variablen
int hWindow = 700, wWindow = 1000, hFigur = 100, wFigur = 100;

// Window-size setzen
void settings()
{
  size (wWindow, hWindow);
}

// Alle Objekte erzeugen
void setup()
{
  w  = new Welt(0, 0, 2000, hWindow, color(150, 150, 150));
  o1 = new xObstacles1Level1();
  o2 = new xObstacles1Level2();
  o3 = new xObstacles1Level3();
  f  = new Figur(100, hWindow-hFigur-100, wFigur, hFigur, color(255, 255, 255));
  s  = new Score();
  m  = new Menu();
}

// Loop Game
void draw()
{
  println(level_2);
  // Ebenen erzeugen
  background(255, 255, 255);
  m.erzeugen();
  if (mousePressed && level_1 == true)
  {
    background(255, 255, 255);
    w.erzeugen();
    o1.erzeugen();
    f.erzeugen();
  }
  if (mousePressed && level_2 == true)
  {
    background(255, 255, 255);
    w.erzeugen();
    o2.erzeugen();
    f.erzeugen();
  }
  if (mousePressed && level_3 == true)
  {
    background(255, 255, 255);
    w.erzeugen();
    o3.erzeugen();
    f.erzeugen();
  }


  // Checken ob der Move Legal ist
  if (movePlayer == true)
  {
    // Checken ob ein Key gedrückt wird
    if (keyPressed == true)
    {
      // Allen Key-Optionen wird eine Aktion zuordnen
      switch(key)
      {
      case 'w':
        // Check for top Border
        if (f.y1 > 10)
        {
          yVerschieben = -10;
        } else
        {
          yVerschieben = -f.y1;
        }
        break;
        // Check for left Border
      case 'a':
        if (f.x1 > 10)
        {
          xVerschieben = -10;
        } else
        {
          xVerschieben = -f.x1;
        }
        break;
        // Check for bottom Border
      case 's':
        if (f.y1 + f.y2 < hWindow - 10)
        {
          yVerschieben = 10;
        } else
        {
          yVerschieben = hWindow - f.y1 - f.y2;
        }
        break;
        // Check for right Border
      case 'd':
        if (f.x1 + f.x2 < wWindow - 10)
        {
          xVerschieben = 10;
        } else
        {
          xVerschieben = wWindow - f.x1 - f.x2;
        }
        break;
        // Ein nicht relevanter Key wird gedrückt
      default:
        break;
      }
      // Figur Wird bewegt
      f.x1 += xVerschieben;
      f.y1 += yVerschieben;
      // MoveVariable wid auf 0 gesetzt um ungewollte bewegungen zu verhindern
      xVerschieben = 0;
      yVerschieben = 0;
    }
  }
  // Move ist Illegal -> GameOver
  else
  {
    fill(0, 0, 0);
    textSize(30);
    textAlign(CENTER);
    text("YOU LOST! \n Time: " + s.getTimeSpent() + "\n SCORE:"+ s.getScore(), wWindow/2, hWindow/2);
    m.reset();
    if (reset_1 == true ) {
      m.erzeugen();
    }
  }
}
