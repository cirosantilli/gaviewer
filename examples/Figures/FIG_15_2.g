// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_15_2() {
// Created 20070427
// Creates figures FIGplunge1,2
	batch init();

	set_window_title("FIG(15,2):  The plunge of diverse elements");

	init(2);
	set_point_size(0.05);
	set_gl_lines(1);

	camori = 9.989877e-001 + -4.498481e-002*e2^e3;

	a = c3ga_point(2 e2- 2 e1), label(a);
	b = c3ga_point(e1+e2)-ni/10, label(b);
	c = e2, label(c);

	dynamic{pl:  
		plunge = ori(c^b^a), 
	}; 
}
