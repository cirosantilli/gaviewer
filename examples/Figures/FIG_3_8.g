// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_3_8()
// Created 20070425 LD
// Original title FIGdual()
// Created figure FIGdual2
{
	batch init();
	batch pantilt();

	set_window_title("FIG(3,8): Duality and the cross product"); 

	init(0);
	set_point_size(0);

	camori = 3.804228e-001 + 1.058806e-001*e2^e3 + -4.786059e-001*e3^e1 + -7.842220e-001*e1^e2;
	campos = -6.000000e-003*e1 + 1.800000e-001*e2 + 6.000000e+000*e3;

	a = show(color(e3,0.8,0.8,0,1)), label(a,"\eqn{\bold{a}}");
	dynamic{A = ori(no_shade(yellow(dm1(a I3)))),};
	dynamic{lA: labelA = -0.5 (e2.A)/A norm(A) /sqrt(pi); label(labelA,"\eqn{\bold{A = a^{*}}}");};

	x = (e1+e3/2), 
	dynamic{lx: lx = 1.1 x; label(lx,"\eqn{\bold{x}}");};
	dynamic{xA: xA=x.A, labelxA = 1.1 xA;};
	label(labelxA,"\eqn{\bold{x \lc A = a \cp x}}"); 
	dynamic{ cons: 
		px = c3ga_point((x.A)/A); 
		xp = c3ga_point(x);
		org = no;
		// create_polygon(con1,loop, org,px,xp);
		// set_object_fg_color(con1,0.8,0,0,0.3);
		con1 = color(dm2(c3ga_point(x)^px),0.8,0,0,0.3),
		con2 = color(dm2(no^px),0.8,0,0,0.3),
	};
}



