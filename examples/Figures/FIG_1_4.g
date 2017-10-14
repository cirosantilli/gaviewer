// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_1_4()
// Created 20070445 LD
// Original title FIGspan
{
	batch init();
	batch pantilt();
	function factored_trivector();
	function factored_bivector();


//============================================================
	init(0);
	set_window_title("FIG(1,4)abcdef: The outer product and its interpretations");
	set_point_size(0.05);
	pantilt(0,0.6);

	a = (e3ga) e1,
	b = (e3ga) e1+e2,
	label(a,"\bold{a}");
	label(b,"\bold{b}");

	dynamic{scene:
		ab = alpha(red(dm3(factored_bivector(a,b))),0.5),
	};
	prompt(" FIG(1,4)a >> ");
	suspend;

//============================================================
	init(0);
	set_point_size(0.05);
	pantilt(0,0.6);

	a = (e3ga) e1,
	b = (e3ga) e1+e2,
	c = (e3ga) e3,
	label(a,"\bold{a}");
	label(b,"\bold{b}");
	label(c,"\bold{c}");

	dynamic{scene:
		abc = factored_trivector(a,b,c),
	};
	prompt(" FIG(1,4)b >> ");
	suspend;

//============================================================
	init(1);
	grey_canvas(1);
	set_point_size(0.05);
	pantilt(0,0.6);

	a = e1 + e0,
	b = e1+e2 + e0,
	label(a,"\eqn{a}");
	label(b,"\eqn{b}");
	dynamic{scene:
		ab = a^b,
	};
	prompt(" FIG(1,4)c >> ");
	suspend;

//============================================================
	init(1);
	set_point_size(0.05);
	pantilt(0,0.6);

	a = e1 + e0,
	b = e1+e2 + e0,
	c = e3 + e0,
	label(a,"\eqn{a}");
	label(b,"\eqn{b}");
	label(c,"\eqn{c}");
	dynamic{scene:
		abc = no_shade(yellow(a^b^c)),
	};
	prompt(" FIG(1,4)d >> ");
	suspend;

//============================================================
	init(2);
	set_point_size(0.05);
	pantilt(0,0.6);

	a = c3ga_point(e1),
	b = c3ga_point(e1+e2),
	c = c3ga_point(e3),
	label(a,"\eqn{a}");
	label(b,"\eqn{b}");
	label(c,"\eqn{c}");
	dynamic{scene:
		abc = ori(a^b^c),
	};
	prompt(" FIG(1,4)e >> ");
	suspend;

//============================================================
	init(2);
	set_point_size(0.05);
	pantilt(0,0.6);

	a = c3ga_point(e1),
	b = c3ga_point(e1+e2),
	c = c3ga_point(e3),
	d = c3ga_point(-e3),
	label(a,"\eqn{a}");
	label(b,"\eqn{b}");
	label(c,"\eqn{c}");
	label(d,"\eqn{d}");
	dynamic{scene:
		abc = ori(a^b^c^d),
	};
	prompt(" FIG(1,4)f >> ");
	suspend;

	prompt();
}



