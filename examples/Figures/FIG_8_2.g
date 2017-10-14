// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_8_2() {
// Created 20070425 LD
// Original title FIGdiffreflect1() 
// Creates FIGdiffreflect0
//
// Demonstrate the differentiation of versor reflection
// X is reflected in a mirror M to make rX
// The mirror is rotated over a line with parameters p and u, over an angle
// The exact result is rXA; the Taylor in the expenential gives rXApp
// rXApp is rX rotated around the projection of the mirror rotation axis.
	batch init();
	function factored_bivector();
	batch pantilt();
	function sLog();

	set_window_title("FIG(8,2): Changes in reflection of a rotating mirror");
	init(0);
	set_point_size(0);

	n = color(e3,0.8,0.8,0), label(n,"\bold{n}");
	m = e1+ e3, 

	x = -0.82*e1 + -0.24*e2 + 0.96*e3,
	label(x,"\bold{x}");
	ctrl_range(phi=0.6,-pi/2,pi/2);
	pantilt(0.88,-1.34);

	N = 6;
	dynamic{scene:
		m = alpha(blue(m/sqrt(m.m)),0.3), label(m,"\bold{m}");
		mphi = blue(m phi), label(mphi, "\bold{m} \phi");
		monn = (m^n)/n;
		moutn = (m^n)/I3;
		nxn = -n x /n, label(nxn,"\eqn{\bold{- n x n^{-1}}}");
		Mplane1 = no_shade(yellow(dm3(factored_bivector(2 moutn, 3 monn)))),
		Mplane2 = no_shade(yellow(dm3(factored_bivector(-2 moutn, 3 monn)))),
		R = exp(m/I3 phi/2);
		Rplane1 = no_shade(green(dm3(factored_bivector(2 R moutn/R, 3 R monn/R)))),
		Rplane2 = no_shade(green(dm3(factored_bivector(-2 R moutn/R, 3 R monn/R)))),
		b= blue( 2 phi (m ^ n)/n), 
		label(b, "\eqn{\bold{b = 2 \phi (m \op n)/n}}");

		
		Rn = R n/R;
		//actual rotated reflection
		Rx = color(-Rn x/Rn,0.5,0.5,0.5), 
		label(Rx,"true R[n[\bold{x}]]");
		// estimated rotated reflection
		rx = exp(-b I3/2) nxn exp(b I3/2), 
		label(rx,"est R[n[\bold{x}]]");
		Rmton = exp(-sLog(m/n)/2/N);
		Rxtorx = exp(sLog(nxn/rx)/2/N);
		a[0] = c3ga_point(mphi);
		b[0] = c3ga_point(rx);
		for(i=1;i<N+1;i=i+1) {
			a[i] = Rmton a[i-1]/Rmton;
			b[i] = Rxtorx b[i-1]/Rxtorx;
			aa[i] = alpha(dm2(a[i-1]^a[i]),0.5),
			bb[i] = color(dm2(b[i-1]^b[i]),1,0.5,0.5,1),
		};
		xonb = c3ga_point( (x.b)/b );
		con1 = color(dm2(no^xonb),1,0.5,0.5,1),
		con2 = color(dm2(xonb^c3ga_point(nxn)),1,0.5,0.5,1),
		con3 = color(dm2(xonb^b[0]),1,0.5,0.5,1),
		lbangle = 0.9 (nxn+rx)/2; label(lbangle,"2 \phi sin \psi");
		laangle = 0.9 (m+n)/2 phi; label(laangle,"\psi");
	};
}


