// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_15_7() {
// Created 20070427
// Original title FIGfactorize() 
	batch init();

	set_window_title("FIG(15,7):  Factorization of rounds");
	
	init(2);
	set_gl_lines(1);
	set_point_size(0.1);

camori = 8.144210e-001 + 6.997161e-001*e2^e3;
campos = 8.350000e-002*e1 + -2.588500e+000*e2 + 2.150000e+001*e3;

	ctrl_range(rhosquared=1,-2,2);
	c = no, label(c);
	dynamic{lineding:
		pp = dm2(ori((c+rhosquared ni/2)^(c.(e1^ni)))),
		L = ori(pp^ni),
		s = pp/L,
	};
	
	p = c3ga_point(-3 e3), label(p);
	dynamic{plane:
		cir = (p+rhosquared ni/2)^(p.(e1^e2^ni)),
		pl = cir^ni,
		s1 = cir/pl,
	};
}
