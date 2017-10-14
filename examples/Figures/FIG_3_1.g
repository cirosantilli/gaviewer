// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_3_1()
// Created 20070425 LD
// Original title FIGsp()
// Creates FIGsp1,2
{
	batch init();
	batch pantilt();
	function factored_bivector();
	function sLog();

	set_window_title("FIG(3,1)ab:  Computing the scalar product of 2-blades [static figure]");

	init(0);
	set_point_size(0);

	camori = 8.041523e-001 + 7.299368e-002*e2^e3 + 4.622116e-001*e3^e1 + 3.665672e-001*e1^e2;
	campos = -2.420000e-001*e1 + 1.640000e-001*e2 + 6.000000e+000*e3;

	a1 = red(e1), 
	a2 = red(e2),
	b1 = blue(1.5 e3+e1-e2);  b1 = blue(b1/norm(b1)),
	b2 = blue(e3),
	label(a1,"\center{\eqn{\bold{a_{1}}}}");
	label(a2,"\center{\eqn{\bold{a_{2}}}}");
	label(b1,"\center{\eqn{\bold{b_{1}}}}");
	label(b2,"\center{\eqn{\bold{b_{2}}}}");
	dynamic{scene: 
		A = no_shade(color(dm3(factored_bivector(a1,a2)),1,0.2,0.2,0.8)),
		oriA = weight(no_shade(color(ori(vp(tv((a1+a2)/2+dual(A)/50),(no+ni/50)^a1^a2 3)),1,0,0,0.4))),
		B = no_shade(color(dm3(factored_bivector(b1,b2)),0.2,0.2,1,0.8)),
		oriB = weight(no_shade(color(ori(vp(tv((b1+b2)/2-dual(B)/50),(no+ni/50)^b1^b2 2)),0,0,1,0.4))),
		mv = dual(A).B;
		ABline = no^mv^ni,
	};

	prompt("FIG(3,1)a >> ");
	suspend;
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
	init(0);
	set_point_size(0);

	camori = 8.041523e-001 + 7.299368e-002*e2^e3 + 4.622116e-001*e3^e1 + 3.665672e-001*e1^e2;
	campos = -2.420000e-001*e1 + 1.640000e-001*e2 + 6.000000e+000*e3;


	a1 = red(e1); 
	a2 = red(e2);
	b1 = blue(1.5 e3+e1-e2);  b1 = blue(b1/norm(b1));
	b2 = blue(e3);

	dynamic{scene: 
		A = a1^a2;
		B = b1^b2;
		mv = green(dual(A).B),
		dA = red(A/mv),
		dB = blue(B/mv),
		label(dA,"\center{\eqn{\bold{a}}}");
		label(dB,"\center{\eqn{\bold{b}}}");
		label(mv,"\center{\eqn{\bold{c}}}");
		drA = no_shade(color(dm3(factored_bivector(dA,mv)),1,0.2,0.2,0.8)),
		oriA = weight(no_shade(color(ori(vp(tv((dA+mv)/2+dual(A)/50),(no+ni/50)^a1^a2 3)),1,0,0,0.4))),
		drB = no_shade(color(dm3(factored_bivector(dB,mv)),0.2,0.2,1,0.8)),
		oriB = weight(no_shade(color(ori(vp(tv((dB+mv)/2+dual(B)/50),(no+ni/50)^b1^b2 2)),0,0,1,0.4))),
		ABline = no^mv^ni,
		// Aplane = color(no^A^ni,0.8,0,0,0.5),
		// Bplane = color(no^B^ni,0,0.8,0,0.5),
	};

	prompt("FIG(3,1)b >> ");
	suspend;

	prompt();
}
