// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_7_3() {
// Created 20070425 LD
// Original title FIGrotor() 
// inspired by old DEMOrotor from GABLE
	function unit();
	batch init();
	
	set_window_title("FIG(7,3):  A rotor in action");

	init(0);
	camori = 8.012532e-001 + 5.675968e-001*e2^e3 + -1.065244e-001*e3^e1 + -1.564599e-001*e1^e2;
	campos = 4.600000e-003*e1 + 6.440000e-002*e2 + 2.300000e+000*e3;

	I = white(ori(e1^e2));
	ctrl_range(phi=0,-2 pi,2 pi); phi = 1.26;
	dynamic{R: R = alpha(white( exp(I phi/2)),0.7),}; 
	x = 0.24*e1 + 0.35*e2 + 0.40*e3,
	label(x,"\bold{x}");
	prompt("FIG(7,3) rotate x >> ");
	suspend;
	dynamic{Rx: Rx = R x/R,}; 
	label(Rx, "\eqn{R \gp \bold{x} /R}");
	prompt("FIG(7,3) rotate x result >> ");
	suspend;

	otherpart = e2+e3;
	dynamic{A: 
		locationA = unit(otherpart) 1.2 sqrt(-A.A)/ pi;
		A = yellow(ori(weight(x^otherpart))),
	}; 
	label(locationA,"\white{\bold{A}}");
	prompt("FIG(7,3) rotate A >> ");
	suspend;
	dynamic{RA:
		RA = yellow(ori(weight(R A/R))), 
		Rlocation = 1.2 R locationA /R;
	};
	label(Rlocation, "\white{\eqn{R \gp \bold{A} /R}}");
	prompt();
}
