// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_8_3() {
// Created 20070425
// Original title FIGdiffinverse() 
// Creates FIGdiffprojection
	batch init();

	set_window_title("FIG(8,3): The directional differentive of the spherical projection");

	init(0);
	set_point_size(0);
	campos = 5 e3;

	dynamic{unitpshere: unitsphere = white(no-ni/2),};

	x = 1.5 e1, label(x,"\bold{x}");
	a = blue((e1+e2)/2), label(a,"\bold{a}");
	dynamic{scene:
		unix =  x/sqrt(x.x), 
		label(unix,"\eqn{\bold{x/||x||}}");
		tana = vp(tv(x),no^a),
		ra = (a^x)/x;
		xra = x+ra;
		tanra = vp(tv(x),no^ra),
		xa = x+a, label(xa,"\bold{x+a}");
		unixa = (x+a)/sqrt((x+a).(x+a)),
		// label(unixa,"\eqn{\bold{(x+a)^{-1}}}");
		delunix = (a^x)/x/sqrt(x.x);
		xdelunix = unix+delunix;
		// label(xdelinvx,"\eqn{\bold{-x^{-1}a x^{-1}}}");
		tanrauni = vp(tv(unix),no^delunix),
	};
}

