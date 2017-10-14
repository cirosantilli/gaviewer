// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_3_4()
// Created 20070425 LD
// Original title FIGdual()
// Creates figure FIGdual2D
{
	batch init();
	batch pantilt();
	function set_object_ol_color();

	set_window_title("FIG(3,4):  Duality of vectors in 2-D [2D]");

	init(0);
	grey_canvas(1);
	dynamic{camori=1;};
	cmd("show controls");
	campos = 1.542000e-001*e1 + 2.282000e-001*e2 + 5.800000e+000*e3;
	a = -e1+e2/4, label(a,"\eqn{\bold{a}}");
	I2 = no_shade(white(ori(e1^e2))),
	set_object_ol_color(I2,0.8,0.8,0.8);
	lI =(e1+e2)/2; label(lI,"\eqn{\bold{I_{2}}}");

	dynamic{scene2D:
		da = color(a/I2,0,0,1),
		lda = 1.1 da; label(lda,"\eqn{\bold{a^{*}}}");
		dda = color(da/I2,1,0,1),
		label(dda,"\eqn{\bold{(a^{*})^{*} =\ws{0.1} -a}}");
	};
}
