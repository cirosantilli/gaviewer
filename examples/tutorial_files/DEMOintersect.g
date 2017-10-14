batch DEMOintersect()
// the intersection demo from the tutorial section 1.3
{
	batch init_c3ga();

	init_c3ga();
	camori = 1 + 0.7 e2^e3;
	campos = 25 e3;
	prompt("DEMOintersect >> ");

	a = c3ga_point(0), 
	b = c3ga_point(e1), 
	c = c3ga_point(e2), 
	d = c3ga_point(e3), 
	cmd("label exp0 [5*e1+5*e2] \"\white{\txt{INTERSECTION DEMO (section 1.3)}}\" flag_2d flag_px flag_py");
	cmd("label a_ a \"a\" flag_dynamic");
	cmd("label b_ b \"b\" flag_dynamic");
	cmd("label c_ c \"c\" flag_dynamic");
	cmd("label d_ d \"d\" flag_dynamic");
	suspend;

	dynamic{ sphere = a^b^c^d,};
	dynamic{ circle = a^b^c,};
	dynamic{ plane  = a^b^c^ni,};
	suspend;

	dA = no-ni/2,
	cmd("label dA_ dA \"\red{dA}\" flag_dynamic");
	dynamic{ dAsphere = -dual(dA ^ dual(sphere)), };
	dynamic{ dAcircle = no_weight(-dual(dA ^ dual(circle))), };
	dynamic{ dAplane  = -dual(dA ^ dual(plane )), };

	prompt();
}
