// Interne Varariablen
int cCounter = 0;
boolean timerStatus = true;
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
      // cTime tracks runtime
      int cTime = millis();
      text("Zeit: " + ((cTime-cCounter)/(1000*60))%60 + "m " + ((cTime-cCounter)/1000)%60 + "s", 100, 100);
      if (movePlayer == false)
      {
        // cCounter speichert cTime wenn collision auftritt
        cCounter = cTime;
        // Timer wird "resettet"
        cTime = (millis() - cCounter);
        // cCounter (Time spent until fail) wird in der Konsole ausgegeben
        println(cCounter);
        // Timer wird gestoppt
        timerStatus = false;
      }
    }
  }

  // Ausgabe der insgesamt verbrachten Zeit
  int getTime()
  {
    return cCounter;
  }

  // Ausgabe vom Status des Timers
  boolean getStatus()
  {
    return timerStatus;
  }
}
