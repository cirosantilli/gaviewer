// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_11_12() {
// introduction of homogeneous coordinates
// Created 20070426 LD
// Original title FIGhomproj()
     batch init();
     function factored_bivector();

	set_window_title("FIG(11,12): The orthogonal projection in the homogeneous model");
     init(1);

campos = 7.134000e-001*e1 + 1.357000e-001*e2 + 1.090000e+001*e3;
camori = -8.225997e-001 + -3.605259e-001*e2^e3 + 4.394753e-001*e3^e1 + -1.457051e-002*e1^e2;

	p = 2 e1,
	u = e3, 		label(u,"\bold{u}");
	x = e0- e3 -1.5 e1 - e2, label(x,"\eqn{x}");
	dynamic{scene:
     		e = black(e0),
		d = (p^u)/u,
		label(d,"\bold{d}");
		M = alpha(factored_bivector(d,u),0.5),
		L = (e0+d)u,
		lL = u+d; label(lL,"\eqn{\blue{L}}");
		Lid = L e0 I3, // inverse dual of L
		uid = (1/e0) . Lid,
		did = ((1/e0).(e0^Lid))/uid,
		MLid = alpha(factored_bivector(did,uid),0.5),
		xp = (x.L)/L,
		label(xp,"\eqn{(x \lc L)/L}");
		xxp = green(x^xp),
		lLi = (e3ga) (1.1 (did+uid)); 
		label(lLi,"\eqn{\blue{L^{-*}}}");
		mxLid = color(no_weight(meet(xxp,Lid)),1,0,0,0.3),
	};
}

