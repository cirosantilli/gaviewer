// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_15_5() {
// Created 20070427
// Original title FIGlineorbits()
	batch init();

	set_window_title("FIG(15,5):  Orbits of a dual line versor [static figure]");

	init(2); // c3ga
	set_gl_lines(1);
	campos = 20 e3;
		
	u = e1;
	p = no;
	perp = e2;
	dynamic{L: L = ori(red(p^u^ni)),};
	M = 5;
	dynamic{orbits:
for(i=-7.5; i<8;i=i+1) {for (j=0;j<M;j=j+1) { t[i][j] = color(ori(dual(vp(tv(i u),c3ga_point(p+j perp)).L)),0,0.5+j/(M-1)/2,0),},},};
}
