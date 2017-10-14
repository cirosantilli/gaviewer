// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_7_8() {
// Created 20070425 LD
// Original title FIGrotseries()
// show the Taylor series of rotation
	batch init();
	function unit();
	function pantilt();

	set_window_title("FIG(7,8)ab:  The rotor product in Euclidean spaces as a Taylor series");

	init(0);
	set_point_size(0);
	camori =1;
	campos =-5.895000e-001*e1 + 2.222200e+000*e2 + 1.050000e+001*e3;

	x = 2 e1,		
	I = e1^e2;

	ctrl_range(phi=2,-pi,pi);
	NN = 9;
	end[0] = no;
	dynamic{scene:
		a[0] = x;
		R = exp(-I phi/2);
		Rx = R x/R,
		for (i=1;i<NN+1;i=i+1) {
			a[i]= hide(phi (a[i-1].I)/i);
			end[i] = i i vp(tv(a[i-1]),end[i-1]);
			l[i] = i i vp(tv(a[i-1]/2),end[i-1]);
			aa[i] = dm2(end[i-1]^end[i]),
		};
		lRx = Rx/2; label(lRx,"\eqn{\bold{R x/R}}");
		label(l[1],"\eqn{\bold{x}}");
		label(l[2],"\eqn{\bold{x \lc B}}");
		label(l[3],"\eqn{\bold{(x \lc B)\lc B/2!}}");
		label(l[4],"\eqn{\bold{((x \lc B)\lc B) \lc B/3!}}");
		label(l[5],"\eqn{\bold{(((x \lc B)\lc B) \lc B)\lc B/4!}}");
		b[0] = c3ga_point(x);
		Rj = exp(-I phi /16/2);
		for(j=1;j<16+1;j=j+1) {
			b[j] = (c3ga)( Rj b[j-1] /Rj);
			bb[j] = red(dm2(100 b[j-1]^b[j])),
		};
	};

	prompt("FIG(7,8)a >>");
	suspend;

	init(0);
	set_point_size(0); 
	
	campos = -8.470000e-001*e1 + 1.408000e+000*e2 + 1.100000e+001*e3;
	
	pantilt(-0.54,-1.05);

	I = e1^e2;
	c = (-e1.I); label(c,"\bold{B}");
	pl  =no_shade(yellow(10 I)),
	x = 0.92*e1 + 1.41*e2 + 2.54*e3,

	ctrl_range(phi=2,-pi,pi);
	NN = 9;
	end[0] = no;
	dynamic{scene:
		a[0] = x;
		R = exp(-I phi/2);
		Rx = R x/R,
		rejx = (x^I)/I;
		for (i=1;i<NN+1;i=i+1) {
			a[i]= hide(phi (a[i-1].I)/i);
			end[i] = i i vp(tv(a[i-1]),end[i-1]);
			l[i] = i i vp(tv(a[i-1]/2),end[i-1]);
			aa[i] = dm2(end[i-1]^end[i]),
		};
		lRx = Rx/2; label(lRx,"\eqn{\bold{R x/R}}");
		label(l[1],"\eqn{\bold{x}}");
		label(l[2],"\eqn{\bold{x \lc B}}");
		label(l[3],"\eqn{\bold{(x \lc B)\lc B/2!}}");
		label(l[4],"\eqn{\bold{((x \lc B)\lc B) \lc B/3!}}");
		label(l[5],"\eqn{\bold{(((x \lc B)\lc B) \lc B)\lc B/4!}}");
		b[0] = c3ga_point(x);
		Rj = exp(-I phi /16/2);
		for(j=1;j<16+1;j=j+1) {
			b[j] = (c3ga)( Rj b[j-1] /Rj);
			bb[j] = red(dm2(100 b[j-1]^b[j])),
			cc[j] = alpha(red(dm2(vp(tv(-rejx),bb[j]))),0.5),
		};
	};

	dynamic{lines:
		rx = c3ga_point((x^I)/I);
		rxline1 = alpha(red(dm2(100 no^rx)),0.5),
		rxline2 = alpha(red(dm2(100 rx^c3ga_point(x))),0.5),
		rxline3 = alpha(red(dm2(100 rx^c3ga_point(Rx))),0.5),
		px = c3ga_point((x.I)/I);
		pxline1 = alpha(red(dm2(100 no^px)),0.5),
		pxline2 = alpha(red(dm2(100 px^c3ga_point(x))),0.5),
		pRx = c3ga_point((Rx.I)/I);
		pRxline1 = alpha(red(dm2(100 no^pRx)),0.5),
		pRxline2 = alpha(red(dm2(100 pRx^c3ga_point(Rx))),0.5),
	};
	prompt("FIG(7,8)b >>");
	suspend;
	prompt();
}
