// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_12_5() {
// Created 20070426 LD
// Original title FIGeye()
// Creates figure FIGeye2
	batch init();

	set_window_title("FIG(12,5): The projection of the optical center onto all rays generates an eyeball");

	init(1);
	grey_canvas(1);
	set_point_size(0.02);
	cps = 0.5; // conformal weighting to draw points at nice size
	camori  = 9.932830e-001 + -1.490036e-002*e2^e3 + -1.147338e-001*e3^e1 + 1.721136e-003*e1^e2;
	campos = 9.734000e-001*e1 + -9.350000e-002*e2 + 3.900000e+000*e3;

	focus = green(c3ga_point(0)), label(focus,"\eqn{f}");
	O = black(c3ga_point(e1)), label(O,"\eqn{o}");
	dynamic{eye:
		fvector = green(O^(O.(focus^ni))), 
		fv = O^focus; label(fv,"\bold{f}");
		eyeball = color( (O^focus)/(O^focus^ni) ,1,1,1,0.3),
		// axis = color( (O^focus^ni) ,1,1,1,0.2),
		// iris = color(eyeball.(dual(focus-15 O)), 0.3,0.3,0.8),
	};
	vx = (0.5 e2+ 2 e1); label(vx,"\eqn{\bold{x}}"); // THIS IS A BIT OF A WEIRD DISPLACED ORIGIN. FIX?
	dynamic{ximaging:
		x = c3ga_point(vx),
		xray = color (O^x^ni, 0.9,0.9,0),
		xe   = red( ((focus^ni).xray)/xray ),
		label(xe,"\eqn{\bold{\frac{f^{-1} \ip x}{x}} }"); 
		cone = color( focus ^ (focus.xe)/(xe.(no^ni)), 0.8,0,0,0.5),
			// there seems to be an error in scale
	};
	dynamic{imaging:
		ref = color( focus.(O^ni), 1,1,1,0.1 );
		plane = no_shade( color( ref eyeball/ref, 0.3,0.3,1,0.4)),
		xp   = blue( plane.xray ),
		label(xp,"\eqn{\bold{\gp\frac{x}{f^{-1} \ip x}} }"); 
		conp = color( focus ^ (focus.xp)/(xp.(no^ni)) ,0,0,0.8,0.5),
	};
}




