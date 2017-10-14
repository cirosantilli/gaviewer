// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_4_1()
// Created 20070425 LD
// Original title FIGlinear()
{
	batch init();
	function rLog();

	set_window_title("FIG(4,1)ab: The defining properties of a linear transformation");

	init(0);
	set_point_size(0);
	set_gl_lines(1);

	a = red(e1),
	b = blue(e1+e2),

	// transformation
	Nstep = 25;
	f = 2; // multiplication factor
	dynamic{trans:
		na = sqrt(a a);
		nb = sqrt(b b);
		a2 = red(f a),
		b2 = blue(f b), 
		na2 = f f na;
		nb2 = f f nb;
		I2 = a^b/na/nb;
		label(a,"\eqn{\bold{x}}");
		label(a2,"\eqn{\bold{\alpha \ws{0.1} x}}");
		label(b,"f[\bold{x}]");
		label(b2,"f[\alpha \ws{0.1} \bold{x}]");
		
		Rlog = rLog((c3ga)((b/nb)(a/na)))/2;
		Slog = log(nb/na) no^ni/2;
		T = exp((Rlog + Slog)/Nstep);
		a[0] = c3ga_point(a);
		a2[0] = c3ga_point(a2);
		for(i=1;i<Nstep+1;i=i+1) {
			a[i] = T a[i-1]/T;
			aa[i] = color(dm2(10 a[i]^a[i-1]),0,0,0,0.3),
			a2[i] = T a2[i-1]/T;
			aa2[i] = color(dm2(10 a2[i]^a2[i-1]),0,0,0,0.3),
		};
	};
	prompt("FIG(4,1)a >> ");
	suspend;

	init(0);
	set_point_size(0);
	set_gl_lines(1);
campos = -3.990000e-001*e1 + 6.270000e-001*e2 + 1.140000e+001*e3;
camori = 5.740532e-001 + 8.605208e-002*e2^e3 + 5.098698e-001*e3^e1 + 6.348942e-001*e1^e2;

a = red(1.34*e1 + -1.38*e2 + -0.43*e3),
b = blue(0.94*e1 + 1.43*e2 + -0.11*e3),
c = red(-0.06*e1 + -1.39*e2 + 1.01*e3),
d = blue(-0.21*e1 + 0.65*e2 + 2.67*e3),

	// transformation
	Nstep = 25;
	dynamic{trans2:
		na = sqrt(a a);
		nb = sqrt(b b);
		nc = sqrt(c c);
		nd = sqrt(d d);
		Iab = a^b/na/nb;
		Icd = c^d/nc/nd;
		label(a,"\eqn{\bold{x}}");
		label(b,"f[\bold{x}]");
		label(c,"\eqn{\bold{y}}");
		label(d,"f[\bold{y}]");
		
		ac = red(a+c),
		nac = sqrt(ac ac);
		label(ac,"\eqn{\bold{x+y}}");

		bd = blue(b+d),
		nbd = sqrt(bd bd);
		label(bd,"f[\bold{x+y}]");

		Rablog = rLog((c3ga)((b/nb)(a/na)))/2;
		Sablog = log(nb/na) no^ni/2;
		Tab = exp((Rablog + Sablog)/Nstep);
		Rcdlog = rLog((c3ga)((d/nd)(c/nc)))/2;
		Scdlog = log(nd/nc) no^ni/2;
		Tcd = exp((Rcdlog + Scdlog)/Nstep);
		Raclog = rLog((c3ga)((bd/nbd)(ac/nac)))/2;
		Saclog = log(nbd/nac) no^ni/2;
		Tac = exp((Raclog + Saclog)/Nstep);

		a[0] = c3ga_point(a);
		c[0] = c3ga_point(c);
		ac[0] = c3ga_point(ac);
		for(i=1;i<Nstep+1;i=i+1) {
			a[i] = Tab a[i-1]/Tab;
			aa[i] = color(dm2(10 a[i]^a[i-1]),0,0,0,0.3),
			c[i] = Tcd c[i-1]/Tcd;
			cc[i] = color(dm2(10 c[i]^c[i-1]),0,0,0,0.3),
			ac[i] = Tac ac[i-1]/Tac;
			aac[i] = color(dm2(10 ac[i]^ac[i-1]),0,0,0,0.3),
		};
		Bac = color(factored_bivector(a,c),1,0,0,0.3),
		lBac = ac/2; label(lBac,"\bold{x \op y}");
		Bbd = color(factored_bivector(b,d),0,0,1,0.3),
		lBbd = bd/2-b/4; label(lBbd,"f[\bold{x \op y}]");

	};
	prompt("FIG(4,1)b >> ");
	suspend;

	prompt();


}
