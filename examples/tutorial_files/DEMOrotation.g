// rotation demo: changing plane and magnitude in controlled manner
batch DEMOrotation()
{
  function vtrail();
  batch init_c3ga();
  init_c3ga(); 

  ctrl_range("angle" = 0,-pi,pi);
  ctrl_range("pan" = panstart,-pi,pi);
  ctrl_range("tilt" = tiltstart,-pi,pi);
  dynamic{pantilt1: total = (e3ga) (1-tan("tilt"/2)e2^e3) (1-tan("pan"/2)e1^e2);};
  dynamic{rotor: R = exp(-total e1^e2/total angle/2);};
  A = pt(e1);
  dynamic{vtrail(R,A,5),};
}
