// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_12_3() {
// Original title FIGepipole()
	batch init();

	set_window_title("FIG(12,3): The epipolar constraint");

	init(1);
	set_point_size(0);
	cps = 0.5; // conformal weighting to draw points at nice size
campos = -1.253600e+000*e1 + 2.078400e+000*e2 + 1.140000e+001*e3;
camori = 1.742050e-001 + 6.009753e-002*e2^e3 + 9.571828e-001*e3^e1 + 2.232533e-001*e1^e2;

	f = 2; // common focal length
	dynamic{base: base = e0; label(base,"\eqn{e_{0}}");};

	aloc = color(-2.26*e1 + 1.32*e2 + 0.92*e3, 0,0,1,0.5),
	bloc = color(3.74*e1 + 1.33*e2 + 0.77*e3, 0,0,1,0.5),
	fa = e1/4 + e3; fa = f fa/norm(fa);
	fb = e3-e1/2; fb = f fb/norm(fb);
	xvec = color(-0.16*e1 + 2.29*e2 + 6.48*e3, 0,0,1,0.5), 
	dynamic{scene:
		x = black(e0+xvec), lx = xvec+e2/3; label(lx,"\eqn{X}");
		a = red(e0+aloc), label(a,"\eqn{A}"); 
		la = aloc/2; label(la,"\eqn{\bold{a}}");
		b = green(e0+bloc), label(b,"\eqn{B}");
		lb = bloc/2; label(lb,"\eqn{\bold{b}}");
		baseline = dm2(c3ga_point(aloc)^c3ga_point(bloc)),
		aplane = red(no_shade(dm1(vp(tv(aloc+fa),2 no^(fa/I3))))),
		bplane = green(no_shade(dm1(vp(tv(bloc+fb),2 no^(fb/I3))))),
		favec = color(vp(tv(aloc),no^fa),0.8,0,0),
		fbvec = color(vp(tv(bloc),no^fb),0,0.8,0),
		//epiplane = color(x^a^b, 0.8,0.8,0.8,0.3),
	tmp_ = a; tmp_ = b; tmp_ =x ; 
	cmd("fgcolor 1 0 0 0.5 ");
	epi = red(cmd("polygon \"epiplane\" 3 \"a\" \"b\" \"x\" "));
	cmd("fgcolor k ");
		xaray = alpha(red(x^a),0.3),
		xbray = alpha(green(x^b),0.3),
		xavec = color(vp(tv(aloc),no^(x-a)),0.8,0,0,0.9),
		lxa = (e3ga)(aloc + 0.7 (x-a)); label(lxa,"R\eqn{_{A}[\bold{X}_{A}]}");
		xbvec = color(vp(tv(bloc),no^(x-b)),0,0.8,0,0.9),
		lxb = (e3ga)(bloc + 0.7 (x-b)+e1/2); label(lxb,"R\eqn{_{B}[\bold{X}_{B}]}");
	};
}



