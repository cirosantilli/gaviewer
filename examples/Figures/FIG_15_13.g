// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_15_13() {
// Created 20070427 LD
// Original title FIGcontour()
	batch init();

	set_window_title("FIG(15,13): Construction of a contour circle");("FIG(15,13): Construction of a contour circle");

	init(2);
	camori = -0.33*e2^e3 + 0.07*e3^e1 + 0.03*e1^e2;

	s = no-ni/2;
	S = dual(s), label(S, "\eqn{\Sigma}");
	p = c3ga_point(2 e1), label(p, "\eqn{p}");
	dynamic{C: C= color(s.(s^dual(p^ni)),0,0.7,0),}; label(C,"\eqn{K}");
	dynamic{aide: aide= color(s^dual(p^ni),0.7,0.7,0.7,0.1),};

}
