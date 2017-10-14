// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_2_14()
// Created 20070425 LD
// Original title FIGsingularity()
// Creates figures FIGsing1,2,3
{
	batch init();
	batch pantilt();
	function factored_trivector();

	set_window_title("FIG(2,14)abc: Sampling a vector field and summing trivectors [static figure]");

	init(2);
	grey_canvas(1);
	set_point_size(0.05);
	camori = 3.886198e-002 + -6.974701e-002*e2^e3 + -8.219889e-001*e3^e1 + 5.638788e-001*e1^e2;
	campos = 1.149600e+000*e1 + -1.077800e+000*e2 + 2.230000e+001*e3;


	dynamic{cube:
	cube =color(dm5(factored_trivector(2 e1, 2 e2, 2 e3)),1,1,0,0.8),
	}
	dynamic{points:
	for (i=0;i<3;i=i+1) {
		for (j=0;j<3;j=j+1) {
			for (k=0;k<3;k=k+1) {
				p[i][j][k] = c3ga_point(i e1 + j e2 + k e3),
			};
		};
	};
	};
	prompt("FIG(2,14)a >>");
	suspend;

	dynamic{vectors:
	for (i=0;i<3;i=i+1) {
		for (j=0;j<3;j=j+1) {
			for (k=0;k<3;k=k+1) {
				p[i][j][k] = c3ga_point(i e1 + j e2 + k e3),
				v[i][j][k] = ((i-1) e1 + (j-1) e2 + (k-1) e3);
				t[i][j][k] = vp(tv(i e1 + j e2 + k e3),no^v[i][j][k]),
			};
		};
	};
		o = 0; a = 1.05 p[0][0][2]; b = 1.05 p[0][0][1]; c =1.05 p[1][0][2]; 
		cmd("fgcolor 1 0 0 1 ");
		t1 = red(cmd("polygon \"triangle1\" 3 \"a\" \"b\" \"c\" "));
		cmd("fgcolor k ");
	p[1][1][1] = 0;
	t[1][1][1] = 0;
	}
	prompt("FIG(2,14)a >>");
	suspend;

	init(2);
	grey_canvas(1);
	set_point_size(0.05);
	camori = 3.886198e-002 + -6.974701e-002*e2^e3 + -8.219889e-001*e3^e1 + 5.638788e-001*e1^e2;
	campos = 1.149600e+000*e1 + -1.077800e+000*e2 + 2.230000e+001*e3;
	cube =hide(cube);

	r = 2;
	sphere = color(no-ni/2 r r,1,1,1,0.24),
	for (i=0;i<3;i=i+1) {
		for (j=0;j<3;j=j+1) {
			for (k=0;k<3;k=k+1) {
				p[i][j][k] = 0;
				v[i][j][k] = ((i-1) e1 + (j-1) e2 + (k-1) e3);
				s[i][j][k] = blue((e3ga) (r v[i][j][k]/norm(v[i][j][k]))),
			};
		};
	};
		o = 0; a = s[0][0][2]; b = s[0][0][1]; c =s[1][0][2]; 
		cmd("fgcolor 1 0 0 1 ");
		t1 = red(cmd("polygon \"triangle1\" 3 \"a\" \"b\" \"c\" "));
		cmd("fgcolor 1 0 0 0.7 ");
		t2 = red(cmd("polygon \"triangle2\" 3 \"a\" \"b\" \"o\" "));
		t3 = red(cmd("polygon \"triangle3\" 3 \"a\" \"o\" \"c\" "));
		t4 = red(cmd("polygon \"triangle4\" 3 \"o\" \"b\" \"c\" "));
		cmd("fgcolor k ");

	prompt("FIG(2,14)c >>");
	suspend;
	prompt();
}



