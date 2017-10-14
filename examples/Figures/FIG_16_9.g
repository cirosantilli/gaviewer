// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_16_9() {
// Created 2000427 LD
// Original title FIGspherical()
	batch pantilt();
	batch init();

	set_window_title("FIG(16,9):  Spherical geometry");

	init(2);
	set_gl_lines(1);
	pantilt(1.05,1.93);

inf = white(alpha(no+ni/2,1)),
dynamic{Model:
	space = alpha(dual(no-ni/2),1);
	I  = c3ga_point(-e3)-ni;
	plane = white(I space /I);
	c1 = c3ga_point(3(e1+e2));
	c2 = c3ga_point(3(e1-e2));
	c3 = c3ga_point(3(-e1+e2));
	c4 = c3ga_point(3(-e1-e2));
	cmd("fgcolor 1 1 1 0.5 ");
	imt1 = cmd("polygon \"drawplane1\" 3 \"c1\" \"c2\" \"c3\"  ");
	imt2 = cmd("polygon \"drawplane2\" 3 \"c2\" \"c3\" \"c4\"  ");
	cmd("fgcolor k");
	};
p = c3ga_point(2 e1),
q = c3ga_point(1.7 e1+ 0.7 e2),
r = c3ga_point(0.7 e1+ 1.8 e2),
s = c3ga_point(1.7 e1+ 0.4 e2);
label(p); label(q); label(r);
dynamic{Scene:
	ptmp = hide((e3ga)((p.plane)/plane)); p = c3ga_point(ptmp), 
	qtmp = hide((e3ga)((q.plane)/plane)); q = c3ga_point(qtmp),
	rtmp = hide((e3ga)((r.plane)/plane)); r = c3ga_point(rtmp);
	stmp = hide((e3ga)((s.plane)/plane)); s = c3ga_point(stmp);
	Ip = I p/I ,
	Iq = I q/I,
	Ir = I r/I;
	fr = (r ^ inf),
	Ifr = dm2( I fr/I),
	C = p^q^inf,
	IC = I C/I,
	T = exp(inf.C/20);
	sC[0] = black((s.(p^inf)).plane), 
	for(i=1;i<6;i=i+1) {
		sC[i]  = black(T sC[i-1]/T),
		IsC[i] = black(I sC[i]/I), 
	};
};	
//  a fun thing to try
// V = exp((2 e1 e2 + 0.5 inf e2 - no^ni/2 )/20); K[0] = sC[0], 
// for(i=1;i<100;i=i+1) { K[i] = V K[i-1]/V, IK[i] = I K[i]/I,};

ctrl_bool("show_inversion_sphere"=0);
dynamic{inversion_sphere:
	Is = c3ga_point(-e3) - ni;
	if("show_inversion_sphere") { Is = show(color(Is,1,1,0,0.3));} else {Is = hide(Is);}; 
	}
}

