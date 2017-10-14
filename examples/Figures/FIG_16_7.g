// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_16_7() {
// Created 20070427 LD
// Original title FIGcircleorbits()
	batch pantilt();
	batch init();

	set_window_title("FIG(16,7):  Conformal orbits [static figure]");
	
	init(2);
	set_gl_lines(1);
	pantilt(0,2);
	campos = 30 e3;

	u = e3;
	N = 6;
	M = 5;
	p =c3ga_point(e1);
	dynamic{L: L = ori(red(dual((no-ni/2) u))),};
	scalor = exp(no^ni);
	rotor  = exp(u/I3 pi/N);
	dynamic{orbits:
for(i=0; i<N; i=i+1) {for (j=1;j<M+1;j=j+1) { t[i][j] = color(ori(dual( vp(exp(no^ni j/4) exp(u/I3 pi i/ N),p).L)),0,0.5+j/(M)/2,0) ,},},};

}
