// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_16_12() {
//  generate a torus, and from that, a dupin quadric
// Original ttile FIGdupin() 
	batch init();

 	set_window_title("FIG(16,12): Dupin cycloid as the inversion of a torus in a sphere");
 
	init(2);
	set_gl_lines(1);
	camori = -4.066451e-001 + -9.056349e-001*e2^e3 + -1.048250e-001*e3^e1 + 5.896482e-002*e1^e2;

	cmd(" show scalar_controls");
	ctrl_range(r1=1,0.0001,5);
	ctrl_range(r2=2,0.0001,10);
	istep=20; 
	circlegrey = 0.8; cg = circlegrey;
	circlealpha = 0.7; ca = circlealpha;
	r1 = 0.8;

	dynamic{setup: seedpoint = vp(1-r1 e1^ni/2,no); seedcircle = vp(1-r2 e1^ni/2,(no+r1 r1 ni/2)^e1^e2);l=hide(no^(no-r2 r2 ni/2)^e2);};
	dynamic{torus: for(i=0;i<istep;i=i+1) { C1[i] = color(vp((1-r2 e1^ni/2) exp(-e1^e2 pi i/istep), seedpoint)^dual(l),0,cg,0,ca), C2[i] = color(vp( exp(-e1^e3 pi i/istep),seedcircle),0,cg,0,ca),};};
	s = white(alpha( -0.66*e1 + 0.00*e2 + -0.02*e3 + 1.00*no + -0.29*ni,0.2)),
	dynamic{dupin: for(i=0;i<istep;i=i+1) { dx[i] = red(s C1[i]/s), dy[i] = red(s C2[i]/s),};};
}
