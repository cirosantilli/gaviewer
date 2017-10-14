// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_16_2() {
// Created 20070426 LD
// Original title FIGreflect() 
// Generates figure FIGreflect2
	batch pantilt(); 
	batch init();

	set_window_title("FIG(16,2):  Reflection in a sphere");

// ===================================================================
	init(2);
	grey_canvas(1);

	pantilt(-0.6,-1.53);
	campos = -9.800000e-001*e1 + -1.300000e+000*e2 + 2.010000e+001*e3;
	set_gl_lines(1);
	set_line_width(2);

	u = yellow( (e3ga) (e1-e3)); 
	n = hide(-1.37*e1 + -1.08*e2 + -1.73*e3);

 	x  = c3ga_point(-4.21*e1 + -2.18*e2 + -0.47*e3),
        y =  c3ga_point(-3.51*e1 + -2.45*e2 + -2.08*e3),

	dynamic{p: p = alpha(white(y.(c3ga_point(n)^ni)),0.9),}; label(p,"\eqn{\sigma}");
	dynamic{L: L = color(ori(x^u^ni),0.8,0.8,0), lL = x - 2 u;}; 
	label(lL,"\eqn{\Lambda}");
	dynamic{Lprime: Lprime = color(ori( pow(-1,grade(p) grade(L)) p L/p ),0.8,0.5,0),}; 
	label(Lprime,"\eqn{\sigma \gp \hat{\Lambda} \gp /\sigma}"); 
}

