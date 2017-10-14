// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_10_2()
// Created 20070425 LD
// Original title FIGsp()
// Creates figure FIGsp5
{
	batch init();
	batch pantilt();
	function factored_bivector();
	function sLog();

	set_window_title("FIG(10,2): The angle between a vector and a bivector");


	init(0);
	set_point_size(0);

	camori = 7.312939e-001 + 5.975352e-001*e2^e3 + 2.180369e-001*e3^e1 + 2.462130e-001*e1^e2;
	campos = 6.564000e-001*e1 + 3.437000e-001*e2 + 3.700000e+000*e3;

	set_point_size(0);
	a = red(normalize(e1/2+e3)),
	b = green(e2),
	c = red(e1),
		label(a,"\center{\eqn{\bold{v}}}");
		label(b,"\center{\eqn{\bold{w}}}");
		label(c,"\left{\eqn{\bold{v \gp e^{w I_{3} \alpha}}}}"); 
	dynamic{scene:
		C = no_shade(color(dm3(factored_bivector(c,b)),0.2,0.2,1,0.8)),
		oriC = weight(no_shade(color(ori(vp(tv((b+c)/2+dual(C)/50),(no+ni/50)^b^c 2)),0,0,1,0.4))),
		p = unit((a.C)/C);
		R = exp(sLog(p/unit(a))/2/16);
		a[0] = a/2;
		for (i=1;i<17;i=i+1) {
			a[i] = R a[i-1]/R;
			aa[i] = black(dm2(20 c3ga_point(a[i-1])^c3ga_point(a[i]))),
		};
		barb1 = black(dm2(20 c3ga_point(1.1 a[14])^c3ga_point(a[16]))),
		barb2 = black(dm2(20 c3ga_point(0.9 a[14])^c3ga_point(a[16]))),

		lalpha = 0.7 a[6]; label(lalpha,"\eqn{\alpha}");
		lC = (b+c)/2; label(lC,"\center{\eqn{\bold{U}}}");
		};
}
