// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_16_8() {
// Created 20070427 LD
// Original title FIGhyperbolic()
	batch init();

	set_window_title("FIG(16,8):  Hyperbolic geometry");
	
	init(2); // c3ga
	set_gl_lines(1);
	set_point_size(0.02);
		
	dynamic{infinity:
		inf = white(no-ni/2),
	};
	dynamic{Basis:
		//ep = white(no-ni/2),
		camori = 1;
		I = no^e1^e2^ni;
	};

	p = c3ga_point(e1/2),
	q = green(c3ga_point(e1/2+e2/3)),
	r = c3ga_point(-0.7 e1);
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

	// for the example in the book with the random inf 
	// I used
	// p = 0.70*e1 + 1.00*no + 0.24*ni
	// q = 0.50*e1 + 0.33*e2 + 1.00*no + 0.18*ni
	// r = -1.00*e1 + 1.00*e2 + 1.00*no + 1.00*ni
	// cprint("Change the definition of "inf" in the Dynamic menu to get other geometries.");
}

