// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_16_13() {
// Created 20070428 LD
// Original title FIGhyperbolic()
	batch init();

	set_window_title("FIG(16,13): Metrical Mystery Tour");

	init(2); // c3ga
	set_line_width(1);
	set_gl_lines(1);
	set_point_size(0.02);
		
	dynamic{Basis:
		camori = 1;
		I = no^e1^e2^ni;
	};

	p = c3ga_point(0.70*e1);
	q = c3ga_point(e1/2 + e2/3);
	r = c3ga_point(e2-e1);
	label(p); label(q); label(r);

	dynamic{fr: fr = r^inf,};

	dynamic{Trail: 
		L = p^q^inf,
		T = exp(inf.L/2 );
		p[0] =p,
		for(i=1; i<10; i=i+1) {
			p[i] = (no_weight(T p[i-1]/T)),
			c[i] = black( (p[i].(p^inf)).I ),
		};
	};
	dynamic{infinity: inf = no-ni/2, };
	prompt("FIG(16,13)a >> ");
	suspend;
	dynamic{infinity: inf = ni, };
	prompt("FIG(16,13)b >> ");
	suspend;
	dynamic{infinity: inf = e1, };
	prompt("FIG(16,13)c >> ");
	suspend;
	dynamic{infinity: inf = no+e2+ni/2, };
	prompt("FIG(16,13)d >> ");
	suspend;
	dynamic{infinity: inf = no, };
	prompt("FIG(16,13)e >> ");
	suspend;
	dynamic{infinity: inf = no+ni/2, };
	prompt("FIG(16,13)f >> ");
	suspend;
	prompt();
}

