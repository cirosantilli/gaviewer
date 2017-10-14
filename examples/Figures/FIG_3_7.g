// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_3_7()
// Created 20070425 LD
// Original title FIGcp()
// Creates FIGcp1,2,3
{
	batch init();
	batch pantilt();
	function factored_bivector();

	set_window_title("FIG(3,7)abc:  Three uses of the cross product");
	init(0);
	pantilt(-1,-1);
	set_point_size(0);
	campos = -7.560000e-002*e1 + 2.604000e-001*e2 + 8.400000e+000*e3;

	a = e1, label(a,"\eqn{\bold{a}}");
	b = e2, label(b,"\eqn{\bold{b}}");
	dynamic{ab: 
		ab = no_shade(yellow(dm3(factored_bivector(a,b)))), 
		labelab= (a+b)/2; 
		acb = color(ab/I3,0.9,0.9,0),
		lacb = 1.1 acb;
	};
	label(labelab,"\eqn{\bold{a \op b}}");
	label(lacb,"\eqn{\bold{a \cp b}}");
	prompt("FIG(3,7)a >> ");
	suspend;

	init(0);
	grey_canvas(1);
	pantilt(-1,-1);
	set_point_size(0);
	campos = -7.560000e-002*e1 + 2.604000e-001*e2 + 8.400000e+000*e3;

	a = color(e3,0.8,0.8,0),
	label(a,"\eqn{\bold{a}}");
	x = 0.6 (e1+1.8 e3),
	label(x,"\eqn{\bold{x}}");
	dynamic{A:
		A = yellow(no_shade(ori(a I3))),
		lA = e1/sqrt(pi); label(lA,"\eqn{\bold{A}}");
	};
	dynamic{acx: 
		acx = (a^x)/I3; tacx = vp(tv(x),no^acx),
		labelacx = acx+x; label(labelacx,"\eqn{\bold{a \cp x}}");
		cir = color(ori(c3ga_point(x)^A),0.3,0.3,1,0.3),
		px = c3ga_point((x.a)/a);
		con1 = color(dm2(c3ga_point(x)^px),0,0,0.8,0.3),
		con2 = color(dm2(c3ga_point(a)^px),0,0,0.8,0.3),

	};
	prompt("FIG(3,7)b >> ");
	suspend;

	init(0);
	grey_canvas(1);
	pantilt(-1,-1);
	set_point_size(0);
	campos = -7.560000e-002*e1 + 2.604000e-001*e2 + 8.400000e+000*e3;

	a = (e1+ e3)/sqrt(2),
	label(a,"\eqn{\bold{a}}");
	b = color(e3,0,0.8,0),
	label(b,"\eqn{\bold{b}}");
	dynamic{ab:
		ab = blue((a^b)/I3), lab = 1.2 ab; label(lab,"\eqn{\bold{a \cp b}}");
		A = no_shade(color(dm3(factored_bivector(-a/I3/ab,ab)),0.9,0,0,0.4)),
		lA = (ab-a/I3/ab)/2; label(lA,"\eqn{\bold{A}}");
		B = no_shade(color(dm3(factored_bivector(ab,b/I3/ab)),0,0.9,0,0.4)),
		lB = (ab+b/I3/ab)/2; label(lB,"\eqn{\bold{B}}");
	};
	prompt("FIG(3,7)c >> ");
	suspend;

	prompt();
}



