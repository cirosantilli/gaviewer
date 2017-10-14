// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_7_2() {
// Created 20070425 LD
// Original title FIGrotreflect()
	batch init();
	function unit();
	function pantilt();
	function rLog();

	set_window_title("FIG(7,2):  A rotation in a plane parallel to I is two reflections in vectors in that plane");

	init(0);
	set_point_size(0);

	x = 0.85*e1 + -0.18*e2 + 1.19*e3,	
	label(x,"\bold{x}");
	u = blue(e1),		label(u,"\blue{\bold{a}}");
	v = blue(unit(e2+e1)),	label(v,"\blue{\bold{b}}");
	dynamic{u: u=blue(u/sqrt(u u)),};
	dynamic{v: v=blue(v/sqrt(v v)),};
	dynamic{pl: pl = no_shade(alpha(yellow(10 unit(u^v)),0.6)),};
	dynamic{x1: x1 = u x/u, x1loc = x1;}; 
	label(x1loc,"\eqn{\bold{a \gp x \gp a^{-1}}}");

	dynamic{x2: x2 = v x1/v, x2loc = 1.1 x2;};
	label(x2loc,"\eqn{\bold{b \gp (a \gp x \gp a^{-1})\gp b^{-1}}}");

	dynamic{R: R = no_shade(yellow(exp(-u^v/2))),};
	dynamic{axis: axis = yellow(u^v/2/(e1^e2^e3)),};
	pantilt(-1.3,-1.4);
	dynamic{projx: projx =c3ga_point(x^(u^v)/(u^v)); cx = c3ga_point(x); cx1 = c3ga_point(x1); cx2=c3ga_point(x2);};
	dynamic{con1:con1 = color(dm2(cx^cx1),0.5,0,0,0.3),};
	dynamic{con2:con2 = color(dm2(cx1^cx2),0.5,0,0,0.3),};
	dynamic{cpx: cpx = color(dm2(no^projx),0.5,0,0,0.3),};
	dynamic{cp1: cp1 = color(dm2(projx^cx),0.5,0,0,0.3),};
	dynamic{cp2: cp2 = color(dm2(projx^cx2),0.5,0,0,0.3),};
	// draw arcs
	dynamic{arcs:
	a1[0] = c3ga_point(u);
	a2[0] = cx;
	N=10;
	r1 = exp(rLog((c3ga) v/u)/2/N);
	r2 = exp(rLog((c3ga) v/u)/N);
	for(i=1;i<N+1;i=i+1) {
		a1[i] = c3ga_point(r1 a1[i-1]/r1);
		a2[i] = r2 a2[i-1]/r2;
		arc1[i] = show(color(dm2(a1[i]^a1[i-1]),0,0,0.5,0.3));
		arc2[i] = show(color(dm2(a2[i]^a2[i-1]),0.5,0,0,0.3));
	};
	};
	dynamic{luv: luv = unit(u+v)/2; label(luv,"\eqn{\phi/\scale{0.8}{2}}");};
	dynamic{lRx: lRx = (x+x2)/2; label(lRx,"\eqn{\phi}");};
	pantilt(-1.63,-1.17);
	prompt("FIG(7,2) >>");
	suspend;
	planesize = 1;
	dynamic{v: v=green(v/sqrt(v v)),};
	label(v,"\green{\bold{b}}");
	dynamic{plotuv: 
		plotu = color(planesize pi dual(u),0.3,0.5,1,1),
		plotv = color(planesize pi dual(v),0,1,0,1),
		connect = sqrt(planesize) unit(dual(u^v));
		connectline = show(color(dm2(c3ga_point(connect)^c3ga_point(-connect)),0.2,0.2,0.2,1)),
	}
	dynamic{x1: x1 = -u x/u, x1loc = 1.1 x1;}; 
	dynamic{x2: x2 = -v x1/v, x2loc = 1.1 x2;}; 
	label(x1loc,"\eqn{-\bold{a \gp x \gp a^{-1}}}");
	label(x2loc,"\eqn{\bold{-b \gp (-a \gp x \gp a^{-1})\gp b^{-1}}}");
	dynamic{pl: pl = no_shade(yellow(10 unit(u^v))),};

	prompt("FIG(7,2) alternative >>");
	suspend;
	prompt(" >> ");
}
