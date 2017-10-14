batch DEMOloxodrome()
// demonstrate a fairly general conformal transformation
// see also Needham, Visual Complex Analysis, pg.166
{
   batch vtrail(); 
   batch init_c3ga();

   init_c3ga();
   prompt("DEMOloxodrome >> ");

   cmd("label exp_ [5*e1+5*e2] \"\txt{\white{LOXODROME} \\ V = exp(\eqn{\gp (o \op e_{1} + \infty \op e_{2})/10) }}\" flag_2d flag_px flag_py");
   dynamic{camori: camori=1;}; // for the 2D case -- delete for 3D
   A = (no-ni/10).(no^e1^e2^ni);
   label(A);
   V = exp((no^e1+ni^e2)/10);
   cprint("V = exp((no^e1+ni^e2)/10)");
   dynamic{vtrail(V,A,50),};
   a = pt(e1+e2)-ni/1000, b = pt(-e1-e2)-ni/1000,
   // special points at pt(e1+e2) and pt(-e1-e2)
   suspend;
   cprint("Now for 3D!");
   cld(camori);
   prompt();
  }
