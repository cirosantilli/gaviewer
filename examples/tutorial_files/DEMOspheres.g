batch DEMOspheres()
// consistency of direct and dual sphere representation
{
	batch init_c3ga();

	init_c3ga();
	camori = 1 + -0.2 e2^e3 + 0.1*e3^e1 + -0.3*e1^e2;
	campos = 50 e3;
	prompt("DEMOspheres >> ");

	a = c3ga_point(5 e3-1.4 e2 - 2(e1+e2+e3)), 	  	label(a);
	b = c3ga_point(5 e2- 1.5e3 - 2(e1+e2+e3)), 	  	label(b);
	c = c3ga_point(-2 e1+ e2 + 0.5 e3 - 2(e1+e2+e3)), 	label(c);
	d = c3ga_point(4 e1 + 2 e2 - 2(e1+e2+e3)), 	  	label(d);
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{SPHERE REPRESENTATION DEMO}}\" flag_2d flag_px flag_py");
	suspend;
	 
	// do the ba plane
	dynamic{ plane_ba = alpha(dual(b-a),1), };
	dynamic{ plane_ba_loc: plane_ba_loc = b-a;};
	a = yellow(a), label(a,"\yellow{a}");
	b = yellow(b), label(b,"\yellow{b}");
	label(plane_ba_loc,"\yellow{dual(b-a)}");
	suspend;

	// do the ca plane
	dynamic{ plane_ca = alpha(dual(c-a),1), };
	dynamic{ plane_ca_loc: plane_ca_loc = c-a;};
	b = red(b),  	label(b);
	c = yellow(c), 	label(c,"\yellow{c}");
	label(plane_ba_loc,"\black{dual(b-a)}");
	label(plane_ca_loc,"\yellow{dual(c-a)}");
	dynamic{ line_bcd = -dual(dual(plane_ba)^dual(plane_ca)),}
	dynamic{ line_acd = -dual(dual(plane_da)^dual(plane_ca)),}
	suspend;

	// do the da plane
	dynamic{ plane_da = alpha(dual(d-a),1), };
	dynamic{ plane_da_loc: plane_da_loc = d-a;};
	c = red(c), 	label(c);
	d = yellow(d), 	label(d,"\yellow{d}");
	label(plane_ca_loc,"\black{dual(c-a)}");
	label(plane_da_loc,"\yellow{dual(d-a)}");
	dynamic{ line_abd = -dual(dual(plane_da)^dual(plane_ba)),}
	dynamic{ center = no_weight(-dual(dual(line_abd)^dual(plane_ca))),}
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{SPHERE REPRESENTATION DEMO} \\ flat center\gp: C = -\gp dual(\gp (b-a) \op (c-a) \op (d-a)\gp )}\" flag_2d flag_px flag_py");

	suspend;
	// focus on the sphere
	label(c);
	d = red(d), label(d);
	a = red(a),
	label(plane_ba_loc," ");
	label(plane_ca_loc," ");
	label(plane_da_loc," ");

	dynamic{ sphere = color(a^b^c^d,1,0.8,0.8,0.8),}
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{SPHERE REPRESENTATION DEMO} \\ flat center\gp: C = -\gp dual(\gp (b-a) \op (c-a) \op (d-a)\gp ) \\ dual sphere\gp: a \ip C, \gp \gp \gp sphere:  dual(a \ip C) = a \op dual(C) \\ sphere\gp: a \op (b-a) \op (c-a) \op (d-a)\gp ) = a \op b \op c \op d}\" flag_2d flag_px flag_py");

	prompt();
}
