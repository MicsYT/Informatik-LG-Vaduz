class Score
{
  // Ausgabe von der verbrachten Zeit in Minuten und Sekunden
  String getTimeSpent()
  {
    // GetVariable von Welt
    int time = w.getTime();
    return str((time/(1000*60))%60) + "m " + str((time/1000)%60) + "s";
  }

  // Ausgabe von dem erreichten Score
  String getScore()
  {
    return str(w.getTime());
  }
  
}
