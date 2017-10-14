// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_11_10() {
// Original title FIGconic()
     batch init();

     set_window_title("FIG(11,10): Conics in the homogeneous model");

     init(1)
     set_point_size(0.05);
     set_sphere_sub_div(2);
     set_gl_lines(1);


	ctrl_range(eccentricity=1,-2,2);
	N= 41;
	I2 = e1^e2;
	 dynamic{scene:
		origin = black(e0),
	 	for(i=1;i<N+1;i=i+1) { 
			phi = 2 pi i/N; 
			scale = 1/ (1+ eccentricity cos(phi));
			r = exp(-I2 phi+0.01) e1 scale;
			t = r(I2 + eccentricity sin(phi) scale);
			p[i] = c3ga_point(e0 + r), // to affect its size
			l[i] = (e0+r)^t,
		};
	};
}

