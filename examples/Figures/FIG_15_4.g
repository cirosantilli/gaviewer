// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_15_4() {
// Created 20070427 LD
// Original title FIGflatplunge(), FIGflatpoint()
	batch init();

	set_window_title("FIG(15,4)ab:  Visualization of flats as plunge");

	init(2); // c3ga
	grey_canvas(1);
	set_point_size(0.05);
	camori = 9.997875e-001 + -4.998979e-003*e2^e3 + 1.999842e-002*e3^e1 + -9.999292e-005*e1^e2;
		
	u = (c3ga) e1,
	label(u,"\eqn{\bold{u}}");
	p = c3ga_point(e1),
	label(p,"\eqn{p}");
	dynamic{pu: pu= p ^ u ^ ni,};
	dynamic{labelforu: labelu = p+2 u; label(labelu,"\eqn{p \op \bold{u} \op \infty}");};
	prompt("FIG(15,4)a >> ");
	suspend;
//=================================================
	init(2); // c3ga
		
	a = alpha(blue(weight(dm2(ori(40 (no-ni/2))))),0.08),
	p = c3ga_point(e1+e3/2),
	dynamic{pa: pa= alpha(p.(a^ni),1),};
	label(p,"\eqn{p}");
	label(a,"\eqn{a \op \infty}");

	prompt("FIG(15,4)b >> ");
	suspend;
	prompt();
}
