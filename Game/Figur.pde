class Figur
{
  // Variablen des Objekts speichern
  int x1, y1, x2, y2;
  color c;

  Figur(int xZ1, int yZ1, int xZ2, int yZ2, color cZ)
  {
    // Variablen überschreiben
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
    rect(x1, y1, x2, x2);
  }
}
