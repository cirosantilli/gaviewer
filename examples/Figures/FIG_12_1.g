// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_12_1() {
// Created 20070426 LD
// Original title FIGplucker()
     batch init();
     function factored_bivector();

	set_window_title("FIG(12,1): Pluecker coordinates of a line in 3-D");

     init(1);
	camori = 7.772901e-001 + 4.646559e-001*e2^e3 + 2.463340e-001*e3^e1 + 3.453037e-001*e1^e2;

	p = 2 e1,
	q = p + e2,
	label(p,"\bold{p}");
	label(q,"\bold{q}");
	dynamic{scene:
		u = q-p,
		label(u,"\bold{q-p}");
		M = alpha(factored_bivector(p,u),0.5),
		M1 = alpha(factored_bivector(p,q),0.2),
		m = dual(M),
		label(m,"\eqn{\bold{p \cp q}}");
		lM = 0.7(p+q);
		label(lM,"\eqn{\bold{p \op q}}");
		L = (e0+p)^ u,
	};
}

