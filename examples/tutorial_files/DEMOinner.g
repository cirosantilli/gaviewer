// inspired by old DEMOinner from GABLE
batch DEMOinner() {
	function init_e3ga();
	
	init_e3ga();
	prompt("DEMOinner >> ");
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{INNER PRODUCTS} \\ Of vectors . . .}\" flag_2d flag_px flag_py");

	v = e1, label(v);
	w = (e1+e2)/sqrt(2), label(w);

	dynamic{ip0: ip0 = black(weight(v.w no)), if (v.w < 0) { label(ip0,"\white{-}");} else {label(ip0,"\white{+}");};};
	cprint("Vary v,w and study the inner product");
	suspend;
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{INNER PRODUCTS} \\ Of vectors . . . the result is a scalar (0-dimensional subspace)}\" flag_2d flag_px flag_py");

	suspend;
	clf();
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{INNER PRODUCTS} \\ Of vector x and bivector B . . .}\" flag_2d flag_px flag_py");
	B = ori(e1^e2), label(B);
	x = (e1+e2+e3),  label(x);
	suspend;
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{INNER PRODUCTS} \\ Of vector x and bivector B. . . the part of B least like x}\" flag_2d flag_px flag_py");
	dynamic{ip0: ip0 = x.B,};
	label(ip0,"\eqn{x \ip B}");
	cprint("Vary x and study the inner product in 3D!");
	cprint("Note that x.B is part of B least like x");

	prompt();
}
