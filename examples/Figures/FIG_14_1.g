// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_14_1() {
// Original title FIGrounds()
// generate figure 
	batch pantilt();
	batch init();

	set_window_title("FIG(14,1):  Dual rounds in the conformal model Versors as multiple reflections [static figure]");
	
	init(2);
	cmd("cvcolor 1.0 1.0 1.0"); 
	pantilt(0.0,-pi/2+0.2);
	campos = 15 e3;

	scale = 4;
	dynamic{ALL:
	s = no - ni/2;
	p1 = scale scale  no^e1^e2;
	p1 = vp(tv(-scale/2 (e1+e2)),p1 );
	p2 = scale scale  no^e1^e3;
	p2 = vp(tv(-scale/2 (e1+e3)),p2 );
	labelloc = c3ga_point(-(scale+1)/2  e3);

	tva = tv(-(scale +1) e1);
	sa = alpha( vp(tva, s),1),
	labela = vp(tva, labelloc);
	label(labela,"(a)"),

	tvb = 1;
	sb     =  alpha( vp(tvb, s),0.7),
	p1b     = color(dm3(weight( vp(tvb, p1) )),1,0,0,0.7),
	cb     = vp(tvb,  s.(p1^ni) ),
	labelb = vp(tvb, labelloc);
	label(labelb,"(b)"),

	tvc = tv((scale +1) e1);
	sc      = alpha( vp(tvc, s), 1),
	p1c     = color(dm3(weight( vp(tvc, p1) )),1,0,0,1),
	p3c     = color(dm3(weight( vp(tvc, p2) )),1,0,0,0.7), // p2c is a function?
	ppc     = vp(tvc,  dual(s ^ dual(p1^ni) ^ dual(p2^ni) ) ) , // should be idual
	labelc = vp(tvc, labelloc);
	label(labelc,"(c)"),
	};
}
