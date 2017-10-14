// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_3_5()
// Created 20070425 LD
// Original title FIGdual()
// Creates figure FIGdual1,3
// THIS CORRECTS THE FIGURE IN THE FIRST EDITION, WHICH HAS THE WRONG BIVECTOR ORIENTATION 20081019
{
	batch init();
	batch pantilt();
	function set_object_ol_color();

	set_window_title("FIG(3,5):  Duality of vectors an bivectors in 3-D");

	init(0);
	grey_canvas(1);
	set_point_size(0);

	camori = -1.081156e+000*e2^e3 + -8.617809e-001*e3^e1 + -9.004643e-001*e1^e2;
	campos = 1.800000e-001*e1 + 1.560000e-001*e2 + 6.000000e+000*e3;
campos = -1.200000e-002*e1 + 9.600000e-002*e2 + 6.000000e+000*e3;


	a = color(e3,0.8,0.8,0,1), label(a,"\eqn{\bold{a}}");
	dynamic{A = ori(no_shade(yellow(dm1(a/I3)))),};
	dynamic{lA: labelA = -0.5 (e1.A)/A norm(A) /sqrt(pi); label(labelA,"\eqn{\bold{a^{*}=A}}");};
	cmd("show controls");
	prompt("FIG(3,5)a >> (THIS CORRECTS THE FIGURE IN THE 1ST EDITION) ");
	suspend;

// make the figure for dual of dual
	a = hide(a); a_label=0;
	dynamic{na: na = color(-a,0.8,0.8,0,1), la = 1.1 na; label(la,"\eqn{\bold{A^{*} = \ws{0.1}-a}}");};
	dynamic{lA: labelA = -0.5 (e1.A)/A norm(A) /sqrt(pi); label(labelA,"\eqn{\bold{A}}");};

	prompt("FIG(3,5)b (you could type a=show(a) to interact) >> ");
	suspend;
	prompt();

}



