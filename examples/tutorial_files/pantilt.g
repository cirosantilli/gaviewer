batch pantilt(panstart,tiltstart) 
// make a switchable  pan/tilt control
{
  cmd(" show scalar_controls");
  ctrl_bool("  pan/tilt control ?" = 1);
  ctrl_range("pan" = panstart,-pi,pi);
  ctrl_range("tilt" = tiltstart,-pi,pi);
  dynamic{if ("  pan/tilt control ?") 
       camori = (e3ga) (1-tan("tilt"/2)e2^e3) (1-tan("pan"/2)e1^e2);};
}



