// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_2_6()
// Created 20070425 LD
// Original title FIGtrivector()
// Creates figures FIGtriv1,21,22,23
{
	batch init();

	set_window_title("FIG(2,6):  The associativity of the outer product [static figure]");

	init(0);
	set_point_size(0);
        camori = 7.718872e-001 + 5.332700e-001*e2^e3 + 2.011027e-001*e3^e1 + 2.817285e-001*e1^e2;
        campos = 1.447000e+000*e1 + 8.505000e-001*e2 + 1.510000e+001*e3;

	s = 2;
	dynamic{ALL:
	l1 = s(e1/2 - (e2+e3)/20); label(l1,"\eqn{\bold{a}}");
	l2 = s(e1+ e2/2 - (-e1+e3)/20); label(l2,"\eqn{\bold{b}}");
	l3 = s(e1+ e2 + e3/2 - (-e1-e2)/20); label(l3,"\eqn{\bold{c}}");

	cube1 = color(dm3(vp(tv(s (e3)),no^e1^e2 s s)) ,1,1,0,1),
	cube3 = color(dm3(vp(tv(s (e1)),-no^e2^e3 s s)) ,1,1,0,1),
	cube4 = color(dm3(vp(tv(s (0)),-no^e2^e3 s s)) ,1,1,0,1),
	cube2 = color(dm3(vp(tv(s (0)),no^e1^e3 s s)) ,1,1,0,1),
	cube5 = color(dm3(vp(tv(s (e2)),no^e1^e3 s s)) ,1,1,0,1),
	cube6 = color(dm3(vp(tv(s (0)),no^e1^e2 s s)) ,1,1,0,1),

	tan1 = red(vp(1,s no^e1)),
	tan2 = red(vp(tv(s e1),s no^e2)),
	tan3 = red(vp(tv(s (e2+e1)),s no^e3)),
	};

	prompt("save this as figure FIGtriv1 >>>");
	prompt("FIG(2,6)a >> ");
	suspend;

	dynamic{ALL:
	cube1 = color(dm3(vp(tv(s (e3)),no^e1^e2 s s)) ,1,1,0,0.2),
	cube3 = color(dm3(vp(tv(s (e1)),-no^e2^e3 s s)) ,1,1,0,0.2),
	cube4 = color(dm3(vp(tv(s (0)),-no^e2^e3 s s)) ,1,1,0,0.2),
	cube2 = color(dm3(vp(tv(s (0)),no^e1^e3 s s)) ,1,1,0,0.2),
	cube5 = color(dm3(vp(tv(s (e2)),no^e1^e3 s s)) ,1,1,0,0.2),
	cube6 = color(dm3(vp(tv(s (0)),no^e1^e2 s s)) ,1,1,0,0.2),


	pla = color(dm3(vp(tv(s (e1)),-no^e1^e2 s s)) ,1,1,0,1),
	tan1 = red(vp(1,s no^e1)),
	tan2 = red(vp(tv(s e1),s no^e2)),
	tan3 = red(vp(tv(s (e2+e1)),s no^e3)),
	lc = s(e1 + e2 +e3)/2 - 0.3 s (e1+e2-e3/5); 
	// text_init();
	label(lc,"\eqn{\bold{(a \op b) \op c}}");
	};

	prompt("FIG(2,6)a >> ");
	suspend;

	dynamic{ALL:
	pla = color(dm3(vp(tv(s (e2)),no^e1^e3 s s)) ,1,1,0,1),
	tan1 = red(vp(tv(s(e2+e3)),s no^e1)),
	tan2 = red(vp(tv(0),s no^e2)),
	tan3 = red(vp(tv(s (e2)),s no^e3)),
	// text_init();
	label(lc,"\eqn{\bold{b \op (c \op a)}}");
	};

	prompt("FIG(2,6)a >> ");
	suspend;

	dynamic{ALL:
	pla = color(dm3(vp(tv(s (e1)),-no^e2^e3 s s)) ,1,1,0,1),
	tan1 = red(vp(1,s no^e1)),
	tan2 = red(vp(tv(s e1),s no^e2)),
	tan3 = red(vp(tv(s (e2+e1)),s no^e3)),
	// text_init();
	label(lc,"\eqn{\bold{a \op (b \op c)}}");
	};

	prompt("FIG(2,6)a >> ");
	suspend;


	prompt();
}



