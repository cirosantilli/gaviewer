// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_7_7() {
// Created 20070425
// Original title FIGreflector() 
// inspired by old DEMOrotor from GABLE
	function unit();
	batch init();
	batch pantilt();

	set_window_title("FIG(7,7):  A reflector in action");
	
	init(0);
	campos = 4.600000e-003*e1 + 6.440000e-002*e2 + 2.300000e+000*e3;


	x = 0.28*e1 + 0.34*e2 + 0.22*e3, label(x,"\bold{x}");
	otherpart = e2+e3/2;
	dynamic{B: 
		B = yellow(ori(weight(x^otherpart))),
		locationB = unit(otherpart) 1.2 sqrt(-B.B)/ pi;
		Alocation = 1.2 A locationB /A;
	}; 

	dynamic{A: A = alpha(white(e1^e2),0.7),};
	dynamic{Ax: Ax = -A x/A,}; // minus for a reflection!
	label(Ax, "\bold{-A \gp x /A}");
	label(Alocation, "\white{\bold{A \gp B /A}}");
	label(locationB,"\white{\bold{B}}");
	dynamic{b:
		b = blue(B/I3),
		Ab = blue(A b/A), // no minus for normal vector!
		label(b,"\eqn{\bold{B^{*}}}");
		label(Ab,"\bold{A \gp B^{*}/A}");
		AB = yellow(ori(weight(Ab I3))), 
	};
	pantilt(-1.26,-1.21);
}
