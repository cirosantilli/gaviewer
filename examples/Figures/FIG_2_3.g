// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_2_3()
// Created 20070425 LD
// Original title FIGbivectors()
// Generated figures FIGbivectora,b,c,d,e,f()
// WARNING: uses conformal model in depictions
{
	batch init();
	function factored_bivector();
	batch orient();

//------------------------------------------------------
	init(0);
	set_window_title("FIG(2,3)abcdef:  Bivector representations");

	camori = 9.337110e-001 + 2.343759e-001*e2^e3 + 2.700963e-001*e3^e1 + 1.731097e-002*e1^e2;
	campos = 1.101600e+000*e1 + 4.254000e-001*e2 + 7.700000e+000*e3;

	tr = 0;
	a = 1.5 e1,
	b = (e2+e1/2),
	I2 = e1^e2;
	dynamic{scene:
		la = grade(a/2 + a/I2/sqrt(a a)/20,1); label(la,"\eqn{\bold{a}}");
		lb = grade(b/2 - b/I2/5/sqrt(b b),1); label(lb,"\eqn{\bold{b}}");
		lab = (a+b)/2 + e3/5;
		label(lab,"\eqn{\bold{a \op b}}");
		biv1 = color(dm3(factored_bivector(a,b)),1,0.2,0.2,0.2), 
		bivori = orient( (a+b)/2, a^b, sqrt(a a)/6, 1,0,0,1),
	};

	prompt("FIG(2,3)a >> ");
	suspend;

//======================================================
	init(0);

	camori = 9.337110e-001 + 2.343759e-001*e2^e3 + 2.700963e-001*e3^e1 + 1.731097e-002*e1^e2;
	campos = 1.101600e+000*e1 + 4.254000e-001*e2 + 7.700000e+000*e3;

	tr = 0;
	a = 1.5 e1,
	b = hide(e2+e1/2),
	I2 = e1^e2;
	dynamic{scene:
		la = grade(a/2 + a/I2/sqrt(a a)/20,1); label(la,"\eqn{\bold{a}}");
		lb = grade(a + b/2 + b/I2/20/sqrt(b b),1); label(lb,"\eqn{\bold{b}}");
		lab = (a+b)/2 + e3/5;
		label(lab,"\eqn{\bold{a \op b}}");
		biv1 = color(dm3(factored_bivector(a,b)),1,0.2,0.2,0.2), 
		// bivori = orient( (a+b)/2, a^b, sqrt(a a)/6, 1,0,0,1),
		Btan21 = red(vp(tv(a),no^b)),
	};
	prompt("FIG(2,3)b >> ");
	suspend;
//======================================================
	init(0);

	camori = 9.337110e-001 + 2.343759e-001*e2^e3 + 2.700963e-001*e3^e1 + 1.731097e-002*e1^e2;
	campos = 1.101600e+000*e1 + 4.254000e-001*e2 + 7.700000e+000*e3;

	tr = 0;
	a = 1.5 e1,
	b = hide(e2+e1/2),
	I2 = e1^e2;
	dynamic{scene:
		la = grade(a/2 + a/I2/sqrt(a a)/20,1); label(la,"\eqn{\bold{a}}");
		lb = grade(a + b/2 + b/I2/20/sqrt(b b),1); label(lb,"\eqn{\bold{b}}");
		lma = b+ a/2 - a/I2/sqrt(a a)/5; label(lma,"\eqn{\bold{-a}}");
		lmb = b/2 - b/I2/3/sqrt(b b); label(lmb,"\eqn{\bold{-b}}");
		lab = (a+b)/2 + e3/5;
		label(lab,"\eqn{\bold{a \op b}}");
		biv1 = color(dm3(factored_bivector(a,b)),1,0.2,0.2,0.2), 
		// bivori = orient( (a+b)/2, a^b, sqrt(a a)/6, 1,0,0,1),
		Btan11 = red(vp(tv(a),no^b)),
		Btan12 = red(vp(tv(a+b),-no^a)),
		Btan13 = red(vp(tv(b),-no^b)),
	};
	prompt("FIG(2,3)c >> ");
	suspend;	
//======================================================
	init(0);

	camori = 9.337110e-001 + 2.343759e-001*e2^e3 + 2.700963e-001*e3^e1 + 1.731097e-002*e1^e2;
	campos = 1.101600e+000*e1 + 4.254000e-001*e2 + 7.700000e+000*e3;

	tr = 0;
	a = 1.5 e1,
	b = hide(e2+e1/2),
	I2 = e1^e2;
	dynamic{scene:
		c = a-b/2,
		lb = grade(c + b/2 + b/I2/20/sqrt(b b),1); label(lb,"\eqn{\bold{b}}");
		lc = grade(c/3 + c/I2/sqrt(c c)/20,1); label(lc,"\eqn{\bold{a-\frac{1}{2}b}}");
		// lma = b+ a/2 - a/I2/sqrt(a a)/5; label(lma,"\eqn{\bold{-a}}");
		// lmb = b/2 - b/I2/3/sqrt(b b); label(lmb,"\eqn{\bold{-b}}");
		lab = (c+b)/2 + e3/5;
		label(lab,"\eqn{\bold{a \op b}}");
		biv1 = color(dm3(factored_bivector(a,b)),1,0.2,0.2,0.1), 
		biv2 = color(dm3(factored_bivector(c,b)),1,0.2,0.2,0.3), 
		// bivori = orient( (a+b)/2, a^b, sqrt(a a)/6, 1,0,0,1),
		a = color(a,1,0,0,0.3),
		Btan11 = color(vp(tv(a),no^b), 1,0,0,0.3),
		Btan12 = color(vp(tv(a+b),-no^a), 1,0,0,0.3),
		Btan13 = color(vp(tv(b),-no^b), 1,0,0,0.3),
		Btan21 = color(vp(tv(c),no^b), 1,0,0,1),
		Btan22 = color(vp(tv(c+b),-no^c), 1,0,0,1),
		Btan23 = color(vp(tv(b),-no^b), 1,0,0,1),
	};
	prompt("this is FIGbivectord>>");
	suspend;
//======================================================
	init(0);

	camori = 9.337110e-001 + 2.343759e-001*e2^e3 + 2.700963e-001*e3^e1 + 1.731097e-002*e1^e2;
	campos = 1.101600e+000*e1 + 4.254000e-001*e2 + 7.700000e+000*e3;

	tr = 0;
	a = 1.5 e1;
	b = e2+e1/2;
	I2 = e1^e2;
	dynamic{scene:
		c = a-b/2,
		d = a/2+3 b/4; 
		ld = grade(c + d/2 + d/I2/20/sqrt(d d),1); label(ld,"\eqn{\bold{\frac{1}{2}a + \frac{3}{4}b}}");
		lc = grade(c/3 + c/I2/sqrt(c c)/20,1); label(lc,"\eqn{\bold{a-\frac{1}{2}b}}");
		// lma = b+ a/2 - a/I2/sqrt(a a)/5; label(lma,"\eqn{\bold{-a}}");
		// lmb = b/2 - b/I2/3/sqrt(b b); label(lmb,"\eqn{\bold{-b}}");
		lab = (c+d)/2 + e3/5;
		label(lab,"\eqn{\bold{a \op b}}");
		biv2 = color(dm3(factored_bivector(c,b)),1,0.2,0.2,0.1), 
		biv1 = color(dm3(factored_bivector(c,d)),1,0.2,0.2,0.3), 
		// bivori = orient( (a+b)/2, a^b, sqrt(a a)/6, 1,0,0,1),
		Btan21 = color(vp(tv(c),no^b), 1,0,0,0.3),
		Btan22 = color(vp(tv(c+b),-no^c), 1,0,0,0.3),
		Btan23 = color(vp(tv(b),-no^b), 1,0,0,0.3),
		Btan11 = color(vp(tv(c),no^d), 1,0,0,1),
		Btan12 = color(vp(tv(c+d),-no^c), 1,0,0,1),
		Btan13 = color(vp(tv(d),-no^d), 1,0,0,1),
	};
	prompt("FIG(2,3)e >> ");
	suspend;
//======================================================
	init(0);

	camori = 9.337110e-001 + 2.343759e-001*e2^e3 + 2.700963e-001*e3^e1 + 1.731097e-002*e1^e2;
	campos = 1.101600e+000*e1 + 4.254000e-001*e2 + 7.700000e+000*e3;

	tr = 0;
	a = 1.5 e1;
	b = e2+e1/2;
	ab = no_shade(color(ori(a^b),1,0.5,0.5,1)),
	lab = e3/5; label(lab,"\eqn{\bold{a \op b}}");
	prompt("FIG(2,3)f >> ");

	suspend;
	prompt(" >> ");
}

