batch DEMOplunge() {

	batch init_c3ga();

	init_c3ga();
	prompt("DEMOplunge >> ");

	camori = (1 + 0.5 e2^e3) (1 + 0.5 e1^e2);
	a = c3ga_point(e1)-ni, label(a);
	b = c3ga_point(-3 e1)-ni/4, label(b);
	c = c3ga_point(2 e2)-ni/10, label(c);

	dynamic{pl:  plunge = ori(a^b^c), };
	cmd("label exp_ [5*e1+5+e2] \"\txt{\white{PLUNGE} \\ circle = a \op b \op c}\" flag_2d flag_px flag_py");
	suspend;
	d = no-e2, label(d);
	dynamic{sph: sphere = alpha(a^b^c^d,0.2), };
	cmd("label exp_ [5*e1+5+e2] \"\txt{\white{PLUNGE} \\  circle = a \op b \op c \\ sphere = a \op b \op c \op d}\" flag_2d flag_px flag_py");
	suspend;
	dynamic{li: line0 = (a^b^ni), };
	cmd("label exp_ [5*e1+5+e2] \"\txt{\white{PLUNGE} \\ circle = a \op b \op c \\ sphere = a \op b \op c \op d \\ line = a \op b \op \infty} \" flag_2d flag_px flag_py");
	suspend;
	dynamic{ sphere2: sphere2  = a^dual(b ^ ni), };
	cmd("label exp_ [5*e1+5+e2] \"\txt{\white{PLUNGE} \\ circle = a \op b \op c \\ sphere = a \op b \op c \op d \\ line = a \op b \op \infty \\ sphere = a \op dual(b \op \infty) } \" flag_2d flag_px flag_py");
	suspend;
	prompt();
}
