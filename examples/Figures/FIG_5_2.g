// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_5_2()
// Created 20070425 LD
// Original title FIGmeetexample()
// Creates figuer FIGmeetjoin3
{
	batch init();
	batch pantilt();
	function factored_bivector();

	set_window_title("FIG(5,2): The meet of two oriented planes");
//---------------------------------------------------------

//---------------------------------------------------------
	init(0);
	pantilt(-1.93,-1.21);
	set_point_size(0);
	campos =  4.063000e-001*e1 + 1.391000e-001*e2 + 3.400000e+000*e3;


	dynamic{Es:
		E1 = e1, label(E1,"\eqn{\bold{e_{1}}}");
		E2 = e2, label(E2,"\eqn{\bold{e_{2}}}");
		E3 = e3, label(E3,"\eqn{\bold{e_{3}}}");
	};

	b1 = yellow(9/10 e1), label(b1,"\eqn{\bold{b_{1}}}");
	b2 = yellow(10/9 e2), label(b2,"\eqn{\bold{b_{1}}}");
	dynamic{B:
		B = no_shade(yellow(dm3(factored_bivector(b1,b2)))),
		lB = 0.9 (b1+b2); label(lB,"\eqn{\bold{B}}");
		Bori1 = no_shade(yellow(ori(vp(tv((b1+b2+(b1^b2)/I3/100)/2),no^b1^b2/10)))),
	// Bori2 = no_shade(yellow(ori(vp(tv((b1+b2-(b1^b2)/I3/100)/2),no^b1^b2)))),
	};
	a1 = green((e1+e2)/sqrt(2)), label(a1,"\eqn{\bold{a_{1}}}");
	a2 = green((e2+e3)/sqrt(2)), label(a2,"\eqn{\bold{a_{2}}}");
	dynamic{A:
		A = no_shade(green(dm3(factored_bivector(a1,a2)))),
		Aori1 = no_shade(green(ori(vp(tv((a1+a2+(a1^a2)/I3/100)/2),no^a1^a2/10)))),
		lA = 0.9 (a1+a2); label(lA,"\eqn{\bold{A}}");
		// Aori2 = no_shade(green(ori(vp(tv((a1+a2-(a1^a2)/I3/100)/2),no^a1^a2)))),
	};

	dynamic{M:
		M = blue(-(B.I3).A), 
		lM = M+e3/8; label(lM,"\eqn{\bold{M}}");
	};
}

