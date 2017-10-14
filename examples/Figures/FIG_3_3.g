// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_3_3()
// Created 20070425 LD
// Original title FIGip()
{
	batch init();
	batch pantilt();

	set_window_title("FIG(3,3):  The contraction of a vector onto a 2-blade");

	init(0);
	pantilt(0.71,-1.1);
	campos = 4 e3 + e2/3;
	set_point_size(0);


	x = (e1+e3), label(x,"\eqn{\bold{x}}");
	A = ori(no_shade(yellow(dm1(e1^e2)))), 
	labelA = -e2/sqrt(pi); label(labelA,"\eqn{\bold{B}}");
	dynamic{xA: xA=x.A, labelxA = 1.2 xA+0.05 e3;};
	label(labelxA,"\eqn{\bold{x \lc B}}"); 

	dynamic{ cons: 
		px = c3ga_point((x.A)/A); 
		con1 = color(dm2(c3ga_point(x)^px),0.8,0,0,0.3),
		con2 = color(dm2(no^px),0.8,0,0,0.3),
	};
}



