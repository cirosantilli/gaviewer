// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_15_8() {
// Original title FIGnest()
	batch init();

	set_window_title("FIG(15,8):  Affine combination of conformal points [static figure]");

	init(2); // c3ga
	dynamic{camori =1;};
	set_gl_lines(1);
		
	dynamic{STATIC_SCENE:
	p = red(c3ga_point(e1)),
	q = blue(c3ga_point(-e1)),
	J =16;
	for(j=0;j<2 J+1;j=j+1) 
		{jJ = j/J-1; t[j] = color(ori( e3.dual( (0.5-jJ) p + (0.5+ jJ) q) ),0.5-jJ/2,0,0.5+jJ/2),};
	t[J/2] = t[J/2+J] =0; // to eliminate the tangent bivectors at the points
	surroundcircle = e3.dual(p+q+(p.q) ni),	
		// {jJ = j/J-1; t[j] = color(ori( e3.dual( (0.5-jJ) p + (0.5+ jJ) q) ),0.5-jJ/2,0.5+jJ/2,0,(jJ jJ+1)/2),};
	};
}
