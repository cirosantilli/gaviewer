// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_3_6()
// Created 20070425 LD
// Original title FIGproj()
// Creates FIGproj1
{
	batch init();
	batch pantilt();
	batch c3ag_point();

	set_window_title("FIG(3,6):  Projection onto a subspace");

	init(0);
	campos = 5.5 e3;
	pantilt(-2.2,-1.1);
	set_point_size(0);


	x = (e1+e3), 
	B = ori(no_shade(yellow(dm1(e1^e2)))), 
	labelB = -e2/sqrt(pi); label(labelB,"\eqn{\bold{B}}");
	dynamic{xB: 
		xB=x.B, 
		pxB = xB/B, 
		label(x,"\eqn{\bold{x}}");
		labelxB = xB;
		labelpxB = 1.2 pxB+0.05 e3;
		label(labelxB,"\eqn{\bold{x \lc B}}"); 
		label(labelpxB,"\eqn{\bold{(x \lc B)\lc B^{-1}}}");
	};
	Nstep = 15;
	dynamic{ cons: 
		PxB = c3ga_point(pxB);
		con1 = color(dm2(c3ga_point(x)^PxB),0.8,0,0,0.3),
		a[0] = PxB;
		R = exp(-B/sqrt(-B.B) pi/4/Nstep);
		for(i=1;i<Nstep+1;i=i+1) {
			a[i] = R a[i-1]/R,
			aa[i] = color(dm2(a[i-1]^a[i]),0.8,0,0,0.3),
		};
	};
}



