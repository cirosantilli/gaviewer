// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_16_10() {
// Created 20070426 LD
// Original title FIGeye()
// Creates figure FIGeye
	batch init();

	set_window_title("FIG(16,10): Imaging by the eye");

	init(1);
	set_point_size(0.02);
	cps = 0.5; // conformal weighting to draw points at nice size
	campos = 
	1.570000e+000*e1 + -3.340000e-002*e2 + 4.900000e+000*e3;
	camori = 
	9.885649e-001 + -1.967826e-002*e2^e3 + -1.494880e-001*e3^e1 + 2.336765e-003*e1^e2;

	f = 0;
	O = black(c3ga_point(e1)), label(O,"\eqn{o}");
	dynamic{eye:
		focus = green(c3ga_point(f)), label(focus,"\eqn{f}");
		eyeball = color( (O^focus)/(O^focus^ni) ,1,1,1,0.7),
		// axis = color( (O^focus^ni) ,1,1,1,0.2),
		// iris = color(eyeball.(dual(focus-15 O)), 0.3,0.3,0.8),
	};
	x = c3ga_point(0.8 e2 + 3 e1), label(x,"\eqn{x}");
	dynamic{ximaging:
		xray = color (O^x^ni, 0.9,0.9,0),
		xe   = red( ((focus^ni).xray)/xray ),
		label(xe,"\eqn{x_{e}}");
		cone = color( focus ^ (no.xe)/((no^ni).xe) ,0.8,0,0,0.5),
	};
	dynamic{imaging:
		ref = color( focus.(O^ni), 1,1,1,0.1 ),
		plane = no_shade( color( ref eyeball/ref, 0.3,0.3,1,0.4)),
		xp   = blue( plane.xray ),
		label(xp,"\eqn{x_{p}}");
		conp = color( focus ^ (no.xp)/((no^ni).xp) ,0,0,0.8,0.5),
	};
}




