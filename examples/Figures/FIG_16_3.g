// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_16_3() 
// Created 20070427 LD
// Original title FIGsnail()
{
	batch init();
	batch vsnail();
	batch pantilt();
	function uLog();

	set_window_title("FIG(16,3):  Generation of a snail shell");

	init(2);
	set_sphere_sub_div(2);
	set_gl_lines(1);

	pantilt(0,pi/2,0);
	campos = 10 e3- 2 e2;

 	V = vp(tv(-5 e3),(1-e3/2 ni/2) exp(e1^e2 0.4) exp(-0.1 no^ni/2));
 	V = exp(uLog(V)/5);

	ctrl_range(pos,-5,5);
	pos = exp(1);
	p = vp(tv(pos e3),no);

	dynamic{A: A=vp(tv(pos e3),dual( no.((no+e2)^ni) ^e1),),};
	dynamic{p: p=vp(tv(pos e3+2 e2), (no-ni/200)),};
	dynamic{vsn: vsnail(V,A,p,200,0);};
	prompt("FIG(16,3) >> ");
	suspend;
	label(p);
	label(A);
	cld(p);
	cld(A);
	prompt();
}

batch vsnail(V,A,p,n,fade)
// adapted from vtrail 200603
// apply the versor V to A, n times 
// fade = 1: looking fainter with every step
// fade = 0: same strength
{ 
// label(A);
A[0] = alpha(A,0.99),
p[0] = p;
if (fade==1) {
	for (i=1;i<n+1;i=i+1) {
		A[i] = color(weight(vp(V,A[i-1])),0,0.5,0,1-i/n),
		p[i] = color(weight(vp(V,p[i-1])),0.5,0,0,1-i/n),
	};
} else {
	for (i=1;i<n+1;i=i+1) {
		A[i] = color(weight(vp(V,A[i-1])),0,0.5,0),
		p[i] = color(weight(vp(V,p[i-1])),0.5,0,0),
	};
}
}


