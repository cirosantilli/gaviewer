// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_5_1()
// Created 20070425 LD
// Original title FIGmeetjoin()
// Creates FIGmeetjoin1,2
{
	batch init();
	batch pantilt();
	function factored_bivector();
	function factored_trivector();

	set_window_title("FIG(5,1)ab:The ambiguity of the magnitude of the intersection of two planes [static figure]");

	init(0);
	pantilt(-0.5,-1.1,0);
	set_point_size(0);
	campos =  e1 + 0.5 e2 + 6.0 e3;

	a = 1.5 e1; 
	b = (e1/4+e3);
	M = blue(e2), dynamic{lM: lM=1.1 M; label(lM,"\blue{\eqn{\bold{M}}}");};
	dynamic{Scene: 
		A = color(dm2(factored_bivector(a,M)),0.8,0,0,0.5),
		B = color(dm2(factored_bivector(M,b)),0,0.8,0,0.5),
		J = color(dm5(factored_trivector(a,M,b)),0.8,0.8,0,0.3),
		lA=(a+M+b/5)/2; label(lA,"\red{\eqn{\bold{A}}}");
		lB=(b+M-a/5)/2; label(lB,"\green{\eqn{\bold{B}}}");
		lJ=0.95 (a+b+M); label(lJ,"\eqn{\bold{J}}");
	};
	prompt("FIG(5,1)a >> ");
	suspend;
//---------------------------------------------------------
	a = a/2; 
	b = b/2;
	M = blue(2 M),
	prompt("FIG(5,1)b >> ");
	suspend;
	prompt();
}

