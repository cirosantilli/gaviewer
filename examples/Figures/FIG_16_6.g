// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_16_6() {
// Created 20070427
// Original title FIGloxodrome()
// demonstrate a fairly general conformal transformation
// see also Needham, Visual Complex Analysis, pg.166
   batch vtrail(); 
   batch init();

   set_window_title("FIG(16,6):  Loxodromes");
   
   init(2)();
   set_gl_lines(1);

   prompt("FIG(16,6)a: drag A around >> ");

//   cmd("label exp_ [5*e1+5*e2] \"\txt{\white{LOXODROME} \\ V = exp(\eqn{\gp (o \op e_{1} + \infty \op e_{2})/10) }}\" flag_2d flag_px flag_py");
   dynamic{camori: camori=1;}; // for the 2D case -- delete for 3D
   A = (no-ni/100).(no^e1^e2^ni);
   label(A);
   V = exp((no^e1+ni^e2)/10);
   cprint("V = exp((no^e1+ni^e2)/10)");
   dynamic{vtrail(V,A,50),};
   a = pt(e1+e2)-ni/1000, b = pt(-e1-e2)-ni/1000,
   // special points at pt(e1+e2) and pt(-e1-e2)
   suspend;
   prompt("FIG(16,6)b: drag in 3D>> ");
   cld(camori);
   camori= 0.1 e1^e2 + 0.2 e2^e3;
   suspend;
   prompt();
  }
