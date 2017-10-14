// demonstrate the transferability of the classical reflection formula
batch DEMOreflect() {

	batch pantilt(); 
	batch init_c3ga();

	init_c3ga();
	pantilt(0,-pi/2+0.02);
	campos = 20 e3;
	default_model(c3ga);
	prompt("DEMOreflect >> ");

	cmd("label exp0 [5*e1+5*e2] \"\txt{\white{REFLECTIONS CLASSICALLY} \\ unit normal n, incoming u \\ result u\' = u - 2 (u \ip n) n}\" flag_2d flag_px flag_py");

//	cmd("label exp_ [5*e+5*e2] \"\txt{\white{REFLECTIONS}}\" flag_2d flag_px flag_py");
	u = yellow( (e3ga) (e1-e3)) , label(u);
	n = (e3ga) e3, label(n);
	dynamic{nplane: nplane = alpha((c3ga)n,0.1), };
	dynamic{uprime: uprime =  color( - n u/n, 1,0.5,0),}; label(uprime,"u\'");
	suspend;
	cmd("label exp0 [5*e1+5*e2] \"\txt{\white{REFLECTIONS IN E3GA} \\ normal n, incoming u \\ result u\' = - n \gp u \gp n \\ (because u - 2 (u \ip n) n = u - u n n - n u n = - n u n)}\" flag_2d flag_px flag_py");
	suspend;
	cmd("label exp0 [5*e1+5*e2] \"\txt{\white{REFLECTIONS IN E3GA} \\ normal n, incoming u \\ result u\' = - n \gp u  \gp /n }\" flag_2d flag_px flag_py");
	suspend;
	cmd("label exp0 [5*e1+5*e2] \"\txt{\white{REFLECTIONS IN C3GA} \\ dual plane p, incoming line L = x \op u \op \infty \\ result L\' = - p \gp L  /p }\" flag_2d flag_px flag_py");
	suspend;
	cld(nplane); remove(nplane);
	x = yellow(no), label(x);
	y = alpha(red(no),0.5), label(y);
	dynamic{p: p = n + ni n.y,};
	dynamic{L: L = yellow(ori(x^u^ni)),}; label(L,"\yellow{L}");
	dynamic{Lprime: Lprime = color(ori( pow(-1,grade(p) grade(L)) p L/p ),1,0.5,0),}; 
	cmd("fgcolor 1 0.5 0"); label(Lprime,"L\' = p \gp L \gp /p"); cmd("fgcolor 0 0 0");
	suspend;
	cmd("label exp0 [5*e1+5*e2] \"\txt{\white{REFLECTIONS IN C3GA} \\ dual plane p, incoming line L = x \op u \op \infty \\ result L\' = - p \gp L  /p \\ \white{Same formula, generalized result.}\\ \white{No need to compute intersection point (p.L).}}\" flag_2d flag_px flag_py");
	cprint("DEMO hint: now could manually change L to ");
	cprint("dynamic{L: L = ori(x ^ u ^ (e1+e2+e3) ^ ni),}");
	cprint("Or even make L into a sphere. Or p!");

	prompt();
}

