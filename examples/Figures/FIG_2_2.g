// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_2_2()
// Created 20070425 LD
// Original title FIGvectors()
// Generated figure names FIGvectoradda,b
{
	batch init();
	function factored_bivector();

	init(0);
	set_window_title("FIG(2,2):  Imagining vector addition");

	campos =  9.630000e-001*e1 + 6.025000e-001*e2 + 5.100000e+000*e3;
	camori = 9.945479e-001 + -1.042803e-001*e1^e2;
	set_gl_lines(0);

	set_point_size(0);

	//------------------------------------------------------
	tr = 0;
	a = 1.5 e1,
	b = e2+e1/2,
	I2 = e1^e2;
	label(a,"\eqn{\bold{a}}");
	label(b,"\eqn{\bold{b}}");
	dynamic{scene:
		ab = a+b, 
		label(ab,"\eqn{\bold{a+b}}");
		Bol1 = tr+ -e1/5-e2/3; label(Bol,"O");
		biv1 = color(dm3(factored_bivector(a,b)),1,0.2,0.2,0.2), 
	};

}
