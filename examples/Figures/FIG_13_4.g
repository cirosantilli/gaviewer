// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_13_4() {
// Created 20070426 LD
// Original title FIGchasles() 
	batch init();
	batch vtrail();
 
	set_window_title("FIG(13,4): Chasles' screw");

	init(0);
	campos = 20 e3;
	set_line_width(4);

ctrl_range(phi,0,pi, 0.01);
phi = 0.7;
dynamic{R: R = exp(e1^e2 phi/2),};
dynamic{I: I=grade(R,2); I=I/norm(I);};
tvec = e1+e2- e3, label(tvec,"\eqn{\bold{t}}");
dynamic{t: t= c3ga_point(tvec);};
dynamic{w: w = (tvec^I)/I,}; label(w,"\eqn{\bold{w}}");
dynamic{v: v = 1/(1-R R)  (tvec.I)/I,}; label(v,"\eqn{\bold{v}}");
dynamic{orgV: orgV = tv(tvec) R, };
dynamic{simV: simV = tv(w) vp(tv(v),R),};
A = vp(tv(2 e3),no^e2^e3);
dynamic{tanB: tanB= color(vp(tv(v), no^I),1,1,0,0.9),};
dynamic{simtrail: vtrail(simV,A),};
dynamic{orgtrail: vtrail(orgV,A),};
dynamic{lineaxis: lineaxis = black(vp(tv(v),no^w^ni)),};
dynamic{RvR: RvR =alpha(R v /R, 0.2),}; label(RvR, "\eqn{R \bold{v}/R");
dynamic{vR: vR =dm2(c3ga_point(v)^c3ga_point(RvR)),};
dynamic{wR: wR =dm2(c3ga_point(t)^c3ga_point(w)),};
dynamic{wt: wt= alpha(dm3(factored_bivector(w,(t-w))),0.3),};
dynamic{vRvR: vRvR= alpha(dm3(factored_bivector(RvR,(t-w))),0.3),};
set_point_size(0);
camori = 4.3e-001 + -4.7e-001*e2^e3 + 6.7e-001*e3^e1 + 3.5e-001*e1^e2;
suspend;
cprint(" ");
cprint("Now manually change A to any element of the conformal model.");
}
