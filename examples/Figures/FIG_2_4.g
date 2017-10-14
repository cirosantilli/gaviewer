// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_2_4()
// Created 20070425 LD
// Original title FIGbivectoradd()
// Creates figures FIGbivector2Da,b,c
// WARNING: uses conformal model in depictions
{
	batch init();
	function factored_bivector();

	init(0);
	set_window_title("FIG(2,4):  Imaging bivector addition in 2-D space");

	dynamic{problem2D: camori = 1;} // essentially 2D
	campos = 1.100000e-002*e1 + -1.430000e-001*e2 + 1.100000e+001*e3;

	tr = 0;
	a = 1.5 e1,
	b = hide(e2+e1/2),
	I2 = e1^e2;
	c = blue(-e1 -0.5 e2),
	d = blue(-( -0.5 e1 + e2));

	dynamic{ab:
		la = a/2; label(la,"\eqn{\bold{a}}");
		lb = a + b/2; label(lb,"\eqn{\bold{b}}");
		// lma = b+ a/2; label(lma,"\eqn{\bold{-a}}");
		// lmb = b/2; label(lmb,"\eqn{\bold{-b}}");
		lab = (a+b)/2;
		label(lab,"\eqn{\bold{a \op b}}");
		B = color(dm3(factored_bivector(a,b)),1,0.2,0.2,0.2), 
		// bivori = orient( (a+b)/2, a^b, sqrt(a a)/6, 1,0,0,1),
		Btan11 = red(vp(tv(a),no^b)),
		Btan12 = red(vp(tv(a+b),-no^a)),
		Btan13 = red(vp(tv(b),-no^b)),
	};
	dynamic{cd:
		lc = c/2; label(lc,"\eqn{\bold{c}}");
		ld = c+d/2 ; label(ld,"\eqn{\bold{d}}");
		lcd = (c+d)/2; label(lcd,"\eqn{\bold{c \op d}}");
	};
	dynamic{C:
		C = color(dm3(factored_bivector(c,d)),0.2,0.2,1,0.2), 
		Ctan11 = blue(vp(tv(c),no^d)),
		Ctan12 = blue(vp(tv(c+d),-no^c)),
		Ctan13 = blue(vp(tv(d),-no^d)),
	};
	prompt("FIG(2,4)a >> ");
	suspend;	

	d = - (c^d)/(c^b)  c;
	c = blue(b),
	dynamic{cd:
		ld = c+d/2 ; label(ld,"\eqn{\bold{\gamma c}}");
		lc = d+c/2; label(lc,"\eqn{\bold{-b}}");
		lcd = (c+d)/2; label(lcd,"\eqn{\bold{c \op d}}");
	};
	prompt("FIG(2,4)b >> ");
	suspend;	

	d = (d^c)/(a^c)  a;
	dynamic{cd:
		ld = d/2 ; label(ld,"\eqn{\bold{\alpha a}}");
		lc = d+c/2; label(lc,"\eqn{\bold{-b}}");
		lcd = (c+d)/2; label(lcd,"\eqn{\bold{c \op d}}");
	};
	prompt("FIG(2,4)c >> ");
	suspend;

	prompt();
}



