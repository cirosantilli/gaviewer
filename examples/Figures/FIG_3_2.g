// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_3_2()
// Created 20070425 LD
// Modified 20070428 LD
// Original title FIGsp()
// Creates FIG3p3,4
{
	batch init();
	batch pantilt();
	function factored_bivector();
	function sLog();

	set_window_title("FIG(3,2)ab: From scalar product to contraction");

	init(0);
	set_point_size(0);
	camori = 7.707079e-001 + 5.423194e-001*e2^e3 + 2.314838e-001*e3^e1 + 2.414834e-001*e1^e2;
	campos = 6.240000e-001*e1 + 4.800000e-001*e2 + 6.000000e+000*e3;


	x = red(e1/2+e3),
	a = green(e2),
	b = blue(e1),
	label(x,"\center{\eqn{\bold{x}}}");
	label(a,"\center{\eqn{\bold{a}}}");
	dynamic{scene:
		A = no_shade(color(dm3(factored_bivector(x,a)),1,0.2,0.2,0.8)),
		oriA = weight(no_shade(color(ori(vp(tv((x+a)/2+dual(A)/50),(no+ni/50)^x^a 2)),1,0,0,0.4))),
		B = no_shade(color(dm3(factored_bivector(a,b)),0.2,0.2,1,0.8)),
		oriB = weight(no_shade(color(ori(vp(tv((a+b)/2+dual(A)/50),(no+ni/50)^a^b 2)),0,0,1,0.4))),
		M = unit(dual(B).A);
		x[0] = -unit(M/A)/2; xend = unit(M/B)/2;
		R = exp(sLog(xend/x[0])/2/16);
		brace1 = black(dm2(no^c3ga_point(x[0]))),
		brace2 = black(dm2(no^c3ga_point(xend))),
		for (i=1;i<17;i=i+1) {
			x[i] = R x[i-1]/R;
			xx[i] = black(dm2(20 c3ga_point(x[i-1])^c3ga_point(x[i]))),
		};
		lB = 1.1 (a+b)/2; label(lB,"\center{\eqn{\bold{B}}}");
		lA = 1.1 (x+a)/2; label(lA,"\center{\eqn{\bold{x \op a}}}");
	};

	prompt("FIG(3,2)a >> ");
	suspend;
//---------------------------------------------------------

	init(0);
	set_point_size(0);
	camori = 7.707079e-001 + 5.423194e-001*e2^e3 + 2.314838e-001*e3^e1 + 2.414834e-001*e1^e2;
	campos = 6.240000e-001*e1 + 4.800000e-001*e2 + 6.000000e+000*e3;


	set_point_size(0);
	x = red(e1/2+e3),
	a = green(e2),
	b = blue(e1),
		label(x,"\center{\eqn{\bold{x}}}");
		label(a,"\center{\eqn{\bold{a}}}");
		label(b,"\left{\eqn{\bold{a \lc B}}}");
	dynamic{scene:
		A = no_shade(color(dm3(factored_bivector(x,a)),1,0.2,0.2,0.8)),
		oriA = weight(no_shade(color(ori(vp(tv((x+a)/2+dual(A)/50),(no+ni/50)^x^a 2)),1,0,0,0.4))),
		B = no_shade(color(dm3(factored_bivector(a,b)),0.2,0.2,1,0.8)),
		oriB = weight(no_shade(color(ori(vp(tv((a+b)/2+dual(B)/50),(no+ni/50)^a^b 2)),0,0,1,0.4))),
		M = unit(dual(B).A);
		x[0] = -unit(M/A)/2; xend = unit(M/B)/2;
		R = exp(sLog(xend/x[0])/2/16);
		brace1 = black(dm2(no^c3ga_point(x[0]))),
		brace2 = black(dm2(no^c3ga_point(xend))),
		for (i=1;i<17;i=i+1) {
			x[i] = R x[i-1]/R;
			xx[i] = black(dm2(20 c3ga_point(x[i-1])^c3ga_point(x[i]))),
		};
		lB = 1.1 (a+b)/2; label(lB,"\center{\eqn{\bold{B}}}");
	};

	prompt("FIG(3,2)b >> ");
	suspend;
	prompt();
}





