// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_1_1()
//	Created 20070425 LD
// 	Original name: 	FIGexample
{
	batch init();

	set_window_title("FIG(1,1): Example of the use of geometric algebra");

	init(2);
	set_point_size(0.05);
	set_gl_lines(1);
	camori = 9.446621e-001 + -7.493832e-002*e2^e3 + 3.068076e-001*e3^e1 + 8.869505e-002*e1^e2;
	campos = -3.036100e+000*e1 + -7.560000e-002*e2 + 3.410000e+001*e3;


	ctrl_range(phi=0.9,-3.14,3.14);

	c1 = c3ga_point( -0.52*e1 + 3.76*e2 + -5.90*e3 ), 
	c2 = c3ga_point( -2.43*e1 + 1.73*e2 + -2.42*e3 ), 
	c3 = c3ga_point( 0.14*e1 + 2.17*e2 + -4.42*e3 ), 

	label(c1,"\eqn{c_{1}}");
	label(c2,"\eqn{c_{2}}");
	label(c3,"\eqn{c_{3}}");

	dynamic{C: 
		C = ori(c1^c2^c3), label(C,"\eqn{C}");
	};

	u = (e3ga) -0.38*e1 + 0.92*e2 + -0.09*e3;
	a = c3ga_point(-1.96*e1 + 0.92*e2 + 2.56*e3);
	dynamic{L: 
		u = (e3ga) (u/sqrt(u.u)), 
		L = ori(red(a^u^ni)), 
		label(L,"\eqn{L}");
	};

	normal = e2; 
	p = c3ga_point( 2.93*e1 + -1.36*e2 + -1.53*e3 ),
	label(p,"\eqn{p}");
	dynamic{pnor: 
		pvec = (p.I3)/I3;
		pnor = red(vp(tv(pvec),no^normal)),
		normend = p+normal;
		label(normend,"\eqn{\bold{n}}");
	};

	dynamic{pl: 
		pl = alpha(no_shade(yellow((p.(normal^ni)))),1),
		label(pl,"\eqn{\pi = p\lc(\bold{n}\infty)}");
	};

	dynamic{M: M = magenta(ori(-pl L/pl)), label(M,"\eqn{M}");};
	
	NT = 10;
	dynamic{RL: 
		RL = exp(-L I5 phi/2); 
		RLt = exp(-L I5 phi/2/NT); 
		C[0] = C;
		for (i=1;i<NT+1;i=i+1) {C[i] = alpha(weight(vp(RLt,C[i-1])),0.2),};
		RLC = ori(RL C/RL),
		label(RLC,"\eqn{R \gp C/R}");
	};
	dynamic{RM: 	
		RC = blue(ori(-pl C/pl)),
		label(RC,"\eqn{-\pi \gp C/\pi}");
		RM = pl RL/pl;
		RMt = pl RLt/pl;
		RC[0] = RC;
		for (i=1;i<NT+1;i=i+1) {RC[i] = alpha(blue(weight(vp(RMt,RC[i-1]))),0.2),};
		RMC = blue(ori(RM RC/RM)),
	};
	prompt();
}




