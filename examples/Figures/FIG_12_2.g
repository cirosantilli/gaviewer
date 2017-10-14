// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_12_2() {
// Created 20070426 LD
// Original title FIGcamera()
	batch init();
	batch pantilt();

	set_window_title("FIG(12,2): A pinhole camera");

	init(1);
	set_point_size(0);
	cps = 0.5; // conformal weighting to draw points at nice size
	campos = 0.9*e1 + 0.9e-001*e2 + 9*e3;
	camori = 7.563294e-001 + -8.068016e-002*e2^e3 + -6.442194e-001*e3^e1 + -8.023636e-002*e1^e2;

	f = 2;
	dynamic{camera:
	fh = f/2;
	pinhole = black(cps e0), 
	label(0,"\eqn{e_{0}}");
	boxp = no_shade(yellow(dm3(vp(tv(-fh e1 -fh e2 -  f e3),  f f no^e1^e2)))),
	box1 = color(dm3(vp(tv(-fh e2 -fh e1) ,- f f no^e1^e3)),1,1,1,0.2),
	box2 = color(dm3(vp(tv(-fh e2 -fh e1) ,  f f no^e2^e3)),1,1,1,0.2),
	box3 = color(dm3(vp(tv(+fh e2 -fh e1) ,- f f no^e1^e3)),1,1,1,0.2),
	box4 = color(dm3(vp(tv(-fh e2 +fh e1) , f f no^e2^e3)),1,1,1,0.2),
	box5 = color(dm3(vp(tv(-fh e1 -fh e2), ( f f no^e1^e2))),1,1,1,0.2),
	fvec = color(-f e3,0.8,0.8,0), lf = fvec/2+e2/4; label(lf,"\eqn{\bold{f}}");
	imcenter = c3ga_point(fvec); 
	};

	plane = (e0-f e3)^e1^e2;
	x = e1/3+e2/2+3 e3, label(x,"\eqn{x}");
	dynamic{xim: 
		lx=x/2; label(lx, "\eqn{\bold{x}}");
		X = cps (e0+ x), 
		Xray = color(e0^X,1,0,0,0.3), 
		lXray = 1.5 x; label(lXray,"\eqn{e_{0}\op x = e_{0}\op\bold{x}}");
		xp = dual(Xray).plane; xp = xp/(e0.xp); 
		dxp = cps xp, label(xp,"\eqn{\gp\frac{x}{\bold{f^{-1}} \ip x} }"); 
		con2 = color( dm2(imcenter^c3ga_point((xp^e0)/e0)), 1,0,0,0.3),
	};
}
