batch DEMOversor() {
	batch vtrail();
	batch init_c3ga();
	init_c3ga();
	prompt("DEMOversor >> ");

	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{VERSOR PRODUCTS} \\ translation: V = exp(-e1 \op \infty)} \" flag_2d flag_px flag_py");

	dynamic{vtrail(V,A,30),};
	dynamic{V: V = exp(-e1^ni/2);};
	A = no,
	suspend;

	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{VERSOR PRODUCTS} \\ line: x \op y \op \infty \\ rotation: V = exp(dual(line)/10) } \" flag_2d flag_px flag_py");
	x = no, y = c3ga_point(e1),
	dynamic{L: L = ori(black(x^y^ni)),};
	dynamic{V: V = exp(-dual(L)/10);};
	suspend;

	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{VERSOR PRODUCTS} \\ rigid body motion: V = exp( bivector + vector \op \infty) } \" flag_2d flag_px flag_py");
	dynamic{V: V = exp(-e1^ni/10) exp(-dual(L)/10);};
	suspend;

	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{VERSOR PRODUCTS} \\ screw: V = exp( -(y-x) \op  ni/3) exp(dual(x \op y \op \infty)/10) } \" flag_2d flag_px flag_py");
	dynamic{V: V = exp(-e1^ni/3) exp(-dual(L)/10);};

	prompt();
}
