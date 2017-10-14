// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_4_2()
// Created 20070425 LD
// Original title FIGlinproj()
{
	batch init();
	function factored_bivector();

	set_window_title("FIG(4,2): Projection onto a line a in the b-direction");

//---------------------------------------------------------
//---------------------------------------------------------
	init(0);
	set_point_size(0);

	a = blue (2 e1-e2/3), label(a,"\eqn{\bold{a}}");
	b = blue (1.2 e2), label(b,"\eqn{\bold{b}}");
	x = red (3 e1+e2), label(x,"\eqn{\bold{x}}");

	dynamic{Scene:
		p = color((x^b)/(a^b) a,1,0,0,0.9),
		q = (x^a)/(b^a) b;
		label(p,"P[\bold{x}]");
		uv = no_shade(color(dm3(factored_bivector(p,q)),1,0.2,0.2,0.3)),
		px = black(dm2(c3ga_point(p)^c3ga_point(x))),
	};
}





