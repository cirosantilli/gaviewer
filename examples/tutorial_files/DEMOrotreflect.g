batch DEMOrotreflect()
// show that rotation is a double reflection
{
	batch init_e3ga();
	function unit();
	function pantilt();


	init_e3ga();
	prompt("DEMOrotreflect >>");

	camori = (1 + tan(pi/5) e2^e3)(1 + tan(pi/5) e1^e2);

        cmd("label title_ [5*e1+5*e2] \"ROTATION \gp AS \gp DOUBLE \gp REFLECTION\" flag_2d flag_px flag_py");
	x = e1+e3,		label(x);
	u = blue(e1),		label(u,"\blue{u}");
	v = blue(unit(e2+e1)),	label(v,"\blue{v}");
	dynamic{plane = alpha(yellow(10 unit(u^v)),0.5),};
	suspend;
	dynamic{x1 = u x/u,};
	cmd("label x_1 x1 \"u \gp x \gp u^{-1}\" flag_dynamic");
	cmd("fgcolor 1 0 0 0.5"); 
	cmd("polygon line1 2 x x1 dm2 dynamic");
	cmd("fgcolor black"); 
	suspend;
	dynamic{x2 = v x1/v,};
	cmd("label x_2 x2 \"v \gp (u \gp x \gp u^{-1})\gp v^{-1}\" flag_dynamic");
	cmd("fgcolor 1 0 0 0.5"); 
	cmd("polygon line2 2 x1 x2 dm2 dynamic");
	cmd("fgcolor black"); 
	suspend;

        cmd("label exp1 [5*e1+25*e2] \"\yellow{R = v \gp u}\" flag_2d flag_px flag_py");
	dynamic{R = yellow(exp(-u^v/2)),}
	dynamic{axis = yellow(u^v/2/(e1^e2^e3)),};
	// dynamic{R_label_loc = -u/10;};
	// cmd("label R_ R_label_loc \"\yellow{R}\" flag_dynamic");
	suspend;
	cmd("label x_2 x2 \"R \gp x \gp R^{-1}\" flag_dynamic");
	suspend;
	pantilt(0,0);
	prompt();
}
