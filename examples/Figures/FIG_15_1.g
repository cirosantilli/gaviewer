// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_15_1() {
// Created 20070427
// Original title FIGplunge() 
// Creates figures FIGplunge1,2
	batch init();

	set_window_title("FIG(15,1):  The meet and plunge of three spheres");

	init(2);
	set_point_size(0.05);

	camori =  -5.112520e-001 + -3.289257e-001*e2^e3 + 5.851560e-002*e3^e1 + 7.918366e-001*e1^e2;

 campos = -2.342000e-001*e1 + -2.290000e-001*e2 + 7.600000e+000*e3;

	a = alpha(c3ga_point(e1)-ni,0.7 ), label(a);
	b = alpha(c3ga_point(-e1/2+e2/5-0.4 e3)-ni/4,0.7 ), label(b);
	c = alpha(c3ga_point(-0.28*e1 + 1.04*e2 + -0.16*e3)-ni/10,0.7 ), label(c);

	dynamic{pl:  
		plunge = ori(a^b^c), 
		meetje = dual(plunge),
		ab = red(dual(a^b)),
		bc = red(dual(b^c)),
		ca = red(dual(c^a)),
	}; 
}
