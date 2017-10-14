// initialization of 2d orientation DEMOs
// for use in tutorial
batch init_c3ga();
batch clearall();

batch DEMOori2dinit() {

   init_c3ga();
   dynamic{ camori=1; };
   a = pt(e1),  label(a);
   b = pt(e2),  label(b);
   c = pt(-e1), label(c);
   d = pt(-e2), label(d);
   dynamic{plane  = no^e1^e2^ni,};      // fixed plane
   planetan  = yellow(dm6(-no^e1^e2)),  // denote plane orientation
}

// actual DEMOs 
batch DEMOori2d() {

	DEMOori2dinit();
	prompt("DEMOori2d >> ");
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{ORIENTATION IN 2D} \\ line: a \op b \op \infty}\" flag_2d flag_px flag_py");
	dynamic{ln : ln = ori(a^b^ni), }, label(ln);
	suspend;

	DEMOori2dinit();
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{ORIENTATION IN 2D} \\ line: a \op b \op \infty \\ mine: c \op d \op \infty \\ weight of normalized meet in slider}\" flag_2d flag_px flag_py");
	dynamic{ln: ln = ori(a^b^ni), }, label(ln);
	dynamic{mine:  mine = magenta(ori(c^d^ni)), }, label(mine);
  	dynamic{ common = (normalize(ln)/plane).normalize(mine), };
	cmd("show scalar_controls");
  	ctrl_range("weight of (mine & ln)" = 0,-1,1);
  	dynamic{ "weight of (mine & ln)" = (no^ni).common; };
	suspend;

	DEMOori2dinit();
	remove(d); remove(d_label);
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{ORIENTATION IN 2D} \\ line meets circle a \op b \op c}\" flag_2d flag_px flag_py");
  	ln = ori(no^e1^ni), label(ln, "\white{ln}");
  	dynamic{ circle = ori(a^b^c),  };
  	dynamic{ meet_cl: meet_cl = dm2(ori((ln/plane).normalize(circle))),};
	suspend;
	
	DEMOori2dinit();
	remove(d); remove(d_label);
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{ORIENTATION IN 2D} \\ circle meets circle \\ weight is zero when parallel}\" flag_2d flag_px flag_py");
  	dynamic{ circle1 = ori(a^b^c),  },
  	circle2   = yellow(ori(no^pt(e1+e2)^pt(e1-e2))),
  	dynamic{ common_cc = dm2(ori( (normalize(circle2)/plane).normalize(circle1) )),},
  	ctrl_range("sq_weight of (circle & circle)" = 0,0,1);
  	dynamic{ "sq_weight of (circle & circle)" = sq_weight(common_cc); };
  	cmd("show scalar_controls");

	prompt();
}
