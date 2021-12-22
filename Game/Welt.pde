// Interne Varariablen
int cCounter = 0;
boolean timerStatus = true;
int vTime = 0;
class Welt
{
  // Varariablen des Objekts speichern
  int x1, y1, x2, y2;
  color c;

  Welt(int xZ1, int yZ1, int xZ2, int yZ2, color cZ)
  {
    // Vars überschreiben
    x1 = xZ1;
    y1 = yZ1;
    x2 = xZ2;
    y2 = yZ2;
    c = cZ;
  }

  // "Figur" auf dem Screen erstellen
  void erzeugen()
  {
    fill(c);
    rect(x1, y1, x2, y2);
    time();
  }

  // Time-tracker (Zeit seit "launch")
  void time()
  {
    
    fill(0, 0, 0);
    textAlign(CENTER);
    textSize(30);
    if (timerStatus == true)
    {
      vTime = millis() - cCounter;
      // cTime tracks runtime
      int cTime = millis();
      text("Zeit: " + ((cTime-cCounter)/(1000*60))%60 + "m " + ((cTime-cCounter)/1000)%60 + "s", 100, 100);
     
    }
  }
  // Ausgabe der insgesamt verbrachten Zeit
  int getTime()
  {
    return vTime;
  }

  // Ausgabe vom Status des Timers
  boolean getStatus()
  {
    return timerStatus;
  }
}
