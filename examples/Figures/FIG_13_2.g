// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_13_2() {
// Created 20070426 LD
// Original title FIGconformalels()
// Creates figure FIGsp6
	batch init();
	batch pantilt();

	set_window_title("FIG(13,2): Flat elements in the conformal model");

	init(2);
	set_point_size(0.1);
	set_line_width(4);
	pantilt(0,-1.3);
	campos = 20 e3;

	p = c3ga_point(-2 e2),
	q = c3ga_point(2 e2),
	r = c3ga_point(4 e1+2e2),
	s = c3ga_point(2 e3 - 4 e1),
	t = c3ga_point(-3 e2-2 e1+e3),
	label(p);
	label(q);
	label(r);
	label(s);
	label(t);
	dynamic{scene:
		A = alpha(no_shade(yellow(p^q^r^ni)),0.75),
		lA = (e3ga)((p- q+r)); label(lA,"\eqn{p \op q \op r \op \infty}");
		tA = dual(A);
		oA = color(ori(vp(1-tA/10, p^q^r)),0.7,0.7,0.2), // circle to indicate orientation
		L = ori(s^t^ni),
		lL = (e3ga)((t+s)/2); label(lL,"\eqn{s \op t \op \infty}");
		u = blue(dual(L).A),
		label(u, "\eqn{u \op \infty}");
	};
}





