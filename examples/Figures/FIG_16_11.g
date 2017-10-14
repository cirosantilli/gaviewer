// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_16_11() {
// Created 20070427
// Original title FIGinversion()
	batch init();

	set_window_title("FIG(16,11): Reflection in a point pair");

	init(2); // c3ga
	set_gl_lines(1);
		
	dynamic{s: 
		s = alpha((no-ni/2)^e1^e3,0.25); 
		reflector = color(dm2(ori(-dual(s))),0.8,0.8,0.0),
	};
	dynamic{camori =1;};

	p = c3ga_point(-1.7 e1- 1.25 e2), label(p,"\red{\eqn{p}}");
	dynamic{sp: sp =  pow(-1,grade(p)) s p /s,};
	label(sp,"\eqn{\sigma \hat{p}\sigma^{-1}}");

	set_point_size(0.05);

	u = e1;
	dynamic{li: li = ori(p^u^ni),};
	label(li,"\eqn{\Lambda}");
	dynamic{sli: sli = ori( pow(-1,grade(li)) s li/s),};
	label(sli,"\eqn{\sigma \hat{\Lambda}\sigma^{-1}}");

	c = blue(ori(  vp(tv(-1.4 e1 - 0.6 e2),(no+ni/4)^e1^e2))),
	label(c, "\red{\eqn{K}}");
	dynamic{sc: sc = blue(ori(pow(-1,grade(c))  s c/s)),};
	label(sc,"\eqn{\sigma \hat{K}\sigma^{-1}}");

	pp = magenta(ori( vp(tv(e1+ 0.8 e2),(no+ni/4)^e1))),
	label(pp, "\red{\eqn{\Gamma}}");
	dynamic{pps: pps = magenta(ori( pow(-1,grade(pp)) s pp/s)),};
	label(pps,"\eqn{\sigma \hat{\Gamma}\sigma^{-1}}");
}
