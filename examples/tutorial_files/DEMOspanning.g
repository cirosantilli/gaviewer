batch DEMOspanning() {
	function flat_tangent();
	batch init_c3ga();

	init_c3ga();
	prompt("DEMOspanning >> ");

	camori = (1 + 0.5 e2^e3) (1 + 0.5 e1^e2);
	a = c3ga_point(e1), label(a);
	b = c3ga_point(e2), label(b);
	c = c3ga_point(e3), label(c);
	d = c3ga_point(0),  label(d);

	dynamic{ci:  circle = ori(a^b^c), };
	cmd("label exp_ [5*e1+5+e2] \"\txt{\white{ORIENTED SPANNING} \\ circle = a \op b \op c}\" flag_2d flag_px flag_py");
	suspend;
	dynamic{sph: sphere = ori(a^b^c^d), };
	cmd("label exp_ [5*e1+5+e2] \"\txt{\white{ORIENTED SPANNING} \\ circle = a \op b \op c \\ sphere = a \op b \op c \op d}\" flag_2d flag_px flag_py");
	suspend;
	dynamic{li: line0 = ori(a^b^ni), };
	cmd("label exp_ [5*e1+5+e2] \"\txt{\white{ORIENTED SPANNING} \\ circle = a \op b \op c \\ sphere = a \op b \op c \op d \\ line = a \op b \op \infty} \" flag_2d flag_px flag_py");
	suspend;
	dynamic{pl: plane = a^b^c^ni, };
	dynamic{ oriplane  = color(dm6 (flat_tangent(plane) ),0.8,0.8,0.3),};
	cmd("label exp_ [5*e1+5+e2] \"\txt{\white{ORIENTED SPANNING} \\ circle = a \op b \op c \\ sphere = a \op b \op c \op d \\ line = a \op b \op \infty \\ plane = a \op b \op c \op \infty} \" flag_2d flag_px flag_py");
	suspend;
	c = hide(c);
	dynamic{fp: flat_point = ori(c^ni), };
	cmd("label exp_ [5*e1+5+e2] \"\txt{\white{ORIENTED SPANNING} \\ circle = a \op b \op c \\ sphere = a \op b \op c \op d \\ line = a \op b \op \infty \\ plane = a \op b \op c \op \infty \\ flat point = c \op \infty} \" flag_2d flag_px flag_py");
	suspend;
	a = hide(a); b = hide(b);
	dynamic{pp: point_pair = ori(a^b), };
	cmd("label exp_ [5*e1+5+e2] \"\txt{\white{ORIENTED SPANNING} \\ circle = a \op b \op c \\ sphere = a \op b \op c \op d \\ line = a \op b \op \infty \\ plane = a \op b \op c \op \infty \\ flat point = c \op \infty \\ point pair = a \op b} \" flag_2d flag_px flag_py");

	prompt();
}
