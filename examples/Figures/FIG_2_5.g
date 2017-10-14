// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_2_5()
// Created 20070425 LD
// Original title FIGouteradd()
{
	batch init();
	function factored_bivector();

	set_window_title("FIG(2,5)abcd:  Bivector addition in 3-D space");

//---------------------------------------------------------
//---------------------------------------------------------
	init(0);
	set_point_size(0);

camori = 8.231792e-001 + 5.353877e-001*e2^e3 + 1.539027e-001*e3^e1 + 1.097723e-001*e1^e2;
campos = 3.634000e-001*e2 + 7.900000e+000*e3;



	a = red(3 e1), label(a,"\eqn{\bold{3 \gp e_{1}}}");
	b = yellow(e2), label(b,"\eqn{\bold{e_{2}}}");
	c = blue(e3), label(c,"\eqn{\bold{e_{3}}}");

	dynamic{scene1:
		A = no_shade(color(dm3(factored_bivector(a,b)),1,0.2,0.2,1)),
		oriA = black(ori(vp(tv((a+b)/2),(no+ni/20)^A))),
		// oriA = no_shade(color(ori(vp(tv((a+b)/2+unit(dual(A))/50),no^A/6)),1,0.2,0.2,1)),
		lA = 1.1 (a+b)/2; label(lA,"\eqn{\bold{3 \gp e_{1}\op e_{2}}}");

		C = no_shade(color(dm3(factored_bivector(c,b)),0.2,0.2,1,1)),
		oriC = black(ori(vp(tv((b+c)/2),(no+ni/20)^C))),
		// oriC = no_shade(color(ori(vp(tv((b+c)/2-unit(dual(C))/50),no^C/6)),0.2,0.2,1,1)),
		lC = 1.1 (b+c)/2; label(lC,"\eqn{\bold{e_{3}\op e_{2}}}");
	};

	prompt("FIG(2,5)a >> ");
	suspend;

	dynamic{scene2:
		AC = no_shade(color(dm3(factored_bivector(a+c,b)),1,1,0.2,1)),
		// oriAC = no_shade(color(ori(vp(tv((a+b+c)/2+unit(dual(AC))/50),no^AC/6)),1,1,0.2,1)),
		oriAC = black(ori(vp(tv((a+b+c)/2),(no+ni/20)^AC))),
		lAC = 1.1 (a+b+c)/2; label(lAC,"\eqn{\bold{(3 \gp e_{1}+ e_{3}) \op e_{2}}}");
	};
	prompt("FIG(2,5)b >> ");
	suspend;

//---------------------------------------------------------
	init(0);
	set_point_size(0);

camori = 8.231792e-001 + 5.353877e-001*e2^e3 + 1.539027e-001*e3^e1 + 1.097723e-001*e1^e2;
campos = 3.634000e-001*e2 + 7.900000e+000*e3;



	a = red(3 e1), label(a,"\eqn{\bold{3 \gp e_{1}}}");
	b = yellow(e2), label(b,"\eqn{\bold{e_{2}}}");
	c = blue(e3), label(c,"\eqn{\bold{e_{3}}}");

	dynamic{A:
		A = no_shade(color(dm3(factored_bivector(b,a)),1,0.2,0.2,1)),
		//oriA = black(ori(vp(tv((a+b)/2-unit(dual(A))/50),(no+ni/20)^A/6))),
		oriA = black(ori(vp(tv((a+b)/2),(no+ni/20)^A))),
		lA = 1.1 (a+b)/2; label(lA,"\eqn{\bold{e_{2} \op 3 \gp e_{1}}}");
	};
	dynamic{C:
		C = no_shade(color(dm3(factored_bivector(c,b)),0.2,0.2,1,1)),
		oriC = black(ori(vp(tv((b+c)/2),(no+ni/20)^C))),
		// oriC = no_shade(color(ori(vp(tv((b+c)/2-unit(dual(C))/50),no^C/6)),0.2,0.2,1,1)),
		lC = 1.1 (b+c)/2; label(lC,"\eqn{\bold{e_{3}\op e_{2}}}");

	};

	prompt("FIG(2,5)c >> ");
	suspend;

	a = hide(a);
	a_label = 0;
	ma = red(-3 e1), label(ma,"\eqn{\bold{-3 \gp e_{1}}}");
	dynamic{A:
		A = no_shade(color(dm3(factored_bivector(ma,b)),1,0.2,0.2,1)),
		oriA = black(ori(vp(tv((ma+b)/2),(no+ni/20)^A))),
		// oriA = no_shade(color(ori(vp(tv((-a+b)/2-unit(dual(A))/50),no^A/6)),1,0.2,0.2,1)),
		lA = 1.1 (ma+b)/2; label(lA,"\eqn{\bold{-3 \gp e_{1}\op e_{2}}}");
	};
	dynamic{AC:
		AC = no_shade(color(dm3(factored_bivector(ma+c,b)),1,1,0.2,1)),
		oriAC = black(ori(vp(tv((ma+c+b)/2),(no+ni/20)^AC))),
		// oriAC = no_shade(color(ori(vp(tv((-a+b+c)/2-unit(dual(AC))/50),no^AC/6)),1,1,0.2,1)),
		lAC = 1.1 (ma+b+c)/2; label(lAC,"\eqn{\bold{(-3 \gp e_{1}+ e_{3}) \op e_{2}}}");
	};
	prompt("FIG(2,5)d >> ");
	suspend;

	prompt();
}





