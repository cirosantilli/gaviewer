// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_16_1() {
// Created 20070427
// Original title FIGinversion()
	batch init();

	set_window_title("FIG(16,1):  Inversion in a sphere");

	init(2); // c3ga
	set_gl_lines(1);
		
	s = alpha(no-ni/2,0.25),

	p = c3ga_point(2 e1-e2), label(p,"\red{\eqn{p}}");
	dynamic{sp: sp = - s p/ s,};
	label(sp,"\eqn{\sigma \hat{p}\sigma^{-1}}");
	dynamic{center: center = black(-s ni/s), }

	set_point_size(0.05);

	u = e1;
	dynamic{li: li = ori(p^u^ni),};
	label(li,"\eqn{\Lambda}");
	dynamic{sli: sli = ori(- s li s),};
	label(sli,"\eqn{\sigma \hat{\Lambda}\sigma^{-1}}");

	c = blue(ori(  vp(tv(e1/3 + e2),(no+ni/4)^e1^e2))),
	label(c, "\red{\eqn{K}}");
	dynamic{sc: sc = blue(ori(- s c s)),};
	label(sc,"\eqn{\sigma \hat{K}\sigma^{-1}}");

	pp = magenta(ori( vp(tv(e1+2 e2),(no+ni/4)^e1))),
	label(pp, "\red{\eqn{\Gamma}}");
	dynamic{pps: pps = magenta(ori( s pp s)),};
	label(pps,"\eqn{\sigma \hat{\Gamma}\sigma^{-1}}");
}
