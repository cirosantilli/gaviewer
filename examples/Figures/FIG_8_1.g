// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_8_1() {
// Created 20070425 LD
// Original title FIGdiffinverse() 
	batch init();

	set_window_title("FIG(8,1): Directional differentiation of a vector inversion");

	init(0);
	set_point_size(0);

	campos = 5 e3;
	dynamic{unitpshere: unitsphere = white(no-ni/2),};

	x = 1.5 e1, label(x,"\bold{x}");
	a = blue((e1+e2)/2), label(a,"\blue{\bold{a}}");
	dynamic{scene:
		invx =  1/x, 
		label(invx,"\eqn{\bold{x^{-1}}}");
		tana = vp(tv(x),no^a),
		ra = -x a/x;
		xra = x+ra;
		label(xra,"\blue{\eqn{\bold{-x a x^{-1}}}}");
		tanra = vp(tv(x),no^ra),
		xa = x+a, label(xa,"\bold{x+a}");
		invxa = 1/(x+a),
		label(invxa,"\eqn{\bold{(x+a)^{-1}}}");
		delinvx = -1/x a /x;
		xdelinvx = invx+delinvx;
		label(xdelinvx,"\blue{\eqn{\bold{-x^{-1}a x^{-1}}}}");
		tanrainv = vp(tv(invx),no^delinvx),
	};
}

