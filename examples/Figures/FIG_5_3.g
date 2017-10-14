// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_5_3()
// Created 20070425 LD
// Original title FIGmeetangle()
// Creates FIGmeetjoin4
{
	batch init();
	batch pantilt();
	function factored_bivector();
	function sLog();

	set_window_title("FIG(5,3): A line meeting a plane in the origin");

	init(0);
	pantilt(0.3,-1.2);
	campos = 1.100000e-002*e1 + 5.720000e-001*e2 + 1.100000e+001*e3;

	B = e1^e2;
	a = e1+2 e3, label(a,"\bold{a}");
	dynamic{scene:
		aB = (a.B)/B;
		R = exp(sLog(aB/norm(aB) norm(a)/a)/2/16);
		a[0] = a/norm(a);
		lB = -2 e1/pi; label(lB,"\bold{B}");
		for (i=1;i<17;i=i+1) {
			a[i] = R a[i-1]/R;
			aa[i] = green(dm4(20 c3ga_point(a[i-1])^c3ga_point(a[i]))),
		};
		aline = red(no^a^ni),
		Bplane = no_shade(color(ori(10 no^B),1,1,0.4)),
		aBmeet = (B/I3).a;
		ptmeet = color(no-aBmeet aBmeet ni/1000,0,1,0,1),
		label(0,"\eqn{\bold{B^{*}\lc a}}");
	};
}



