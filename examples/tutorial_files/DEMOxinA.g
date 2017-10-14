batch DEMOxinA() {
	function sq_weight();
	batch init_c3ga();

	init_c3ga();
	prompt("DEMOxinA >> ");
  	dynamic{camori: camori=1,};
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{REPRESENTATION : DIRECT VERSUS DUAL}}\" flag_2d flag_px flag_py");
  	a = no, label(a);
	b = c3ga_point(e1), label(b);
	c = c3ga_point(e2), label(c);
	x = c3ga_point(e1+e2), label(x,"\white{x}");
  	dynamic{circle = a^b^c, }; label(circle);
  	dynamic{test  =  x^a^b^c;}; 
	ctrl_range("squared weight of x^a^b^c" = 0,0,5);
  	dynamic{"squared weight of x^a^b^c" = sq_weight(x^a^b^c),};
	suspend;
  	
  	dynamic{dcircle = dual(circle),};
  	ctrl_range("squared weight of x.dual(a^b^c)" = 0,0,5);
  	dynamic{"squared weight of x.dual(a^b^c)" = sq_weight(x.dcircle),};

	// BUG check why thsi does not work properly
	// suspend;
	// cprint("Also in 3D !");
	// cld(camori);
	prompt();
}
