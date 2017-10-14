// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_6_2()
// Clear 20070425 LD
// Original title FIGratio()
{
	batch init();
	function rLog();

	set_window_title("FIG(6,2): Ratios of vectors [2D]");

	init(0);
	set_point_size(0);

	a = red(e1),
	b = red(e1+e2),
	c = color(2 e2-e1/4, 0.2,0.2,1),

	// transformation
	Nstep = 25;
	dynamic{trans:
		camori=1;
		na = sqrt(a a);
		nb = sqrt(b b);
		I2 = a^b/na/nb;
		label(a,"\bold{a}");
		label(b,"\bold{b}");
		label(c,"\bold{c}");
		x = color( (b/a) c, 0.2,0.2,1),
		label(x,"\bold{x}");
		
		Rlog = rLog((c3ga)((b/nb)(a/na)))/2;
		Slog = log(nb/na) no^ni/2;
		T = exp((Rlog + Slog)/Nstep);
		a[0] = c3ga_point(a);
		a2[0] = c3ga_point(c);
		for(i=1;i<Nstep+1;i=i+1) {
			a[i] = T a[i-1]/T;
			aa[i] = color(dm2(10 a[i]^a[i-1]),0,0,0,0.3),
			a2[i] = T a2[i-1]/T;
			aa2[i] = color(dm2(10 a2[i]^a2[i-1]),0,0,0,0.3),
		};
	};
}
