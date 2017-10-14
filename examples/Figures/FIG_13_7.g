// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_13_7() {
// Demonstrate the differentiation of versor reflection
// X is reflected in a mirror M to make rX
// The mirror is rotated over a line with parameters p and u, over an angle
// The exact result is rXA; the Taylor in the expenential gives rXApp
// rXApp is rX rotated around the projection of the mirror rotation axis.
//
// Created 20070426 LD
// Original title FIGdiffreflect2() 
	batch init();
	function gin();
	function factored_bivector();
	batch pantilt();
	function sLog();

	set_window_title("FIG(13,7): Reflection in a rotating mirror");

	init(0);
	cmd("show scalar_controls");
	set_point_size(0.05);
	set_line_width(1.0);
	set_point_sub_div(1);
	set_gl_lines(1);

	camori = 6.264770e-001 + -3.597145e-001*e2^e3 + -2.740952e-001*e3^e1 + -6.348258e-001*e1^e2;
	campos = 2.460000e+001*e3;



	// mirror s and object X
	M = no_shade(color((c3ga) e1-ni/2,1,1,0,1)),
	X = c3ga_point(2.4 e1+0.4 e2 + 0.74 e3), label(X,"\eqn{\blue{X}}");
	// the scale of the variation
	ctrl_range(angle=0,-pi/2,pi/2);
	// we will rotate the mirror around a line L with direction u through p
	p = no, //label(p,"\eqn{p}");
	u = (e3ga) e1/2 + e2, //label(u, "\eqn{\bold{u}}");
	dynamic{u: u = u/sqrt(u.u),}; // unit vector, so angle is meaningful
	dynamic{L: L=color( angle p^u^ni,0,0.7,0,1) , A = dual(L); VA= exp(-A/2);};
	label(L, "\eqn{\Lambda}");
	
	N = 100;
	NN = 10;
	angle = 2 pi/(N+1);
	dynamic{
		// the new mirror MA
		MA: MA = color( VA M /VA,1,1,0,1);
		// the original reflection
		rX = M gin(X)/M, label(rX,"\eqn{\blue{X_{r}}}");
		// the exact answer with the changed M
		rXA = MA gin(X)/MA,
		//label(rXA,"\eqn{X'_{r}}");};
		// the first order versor approximation, and the axis it rotates around
		MAMA = M A/M -A, VMA = exp(MAMA/2); rXApp = VMA rX/VMA,
		// label(rXApp,"\eqn{X'_{r~}}");};
	
		MA[0] = M; 
		rXtrue[0] = rXA; 
		for(i=1;i<N;i=i+1) {
			MA[i] = hide(VA MA[i-1]/VA); 
			rXtrue[i]= red(MA[i] gin(X)/MA[i]), 
			rX[i] = red(dm2(rXtrue[i]^rXtrue[i-1])),
		};

		rXApp[0] = rX, 
		for(i=1;i<NN;i=i+1) { rXApp[i]= black(VMA rXApp[i-1]/VMA), };
		//rXA[i] = black(dm2(rXApp[i]^rXApp[i-1])),}; };

		XMAMA=black(X^MAMA),

		// this one for rounds
		sphere = color((X^M).L,1,1,1,0.3),
		// this one for flats
		fX = ((M.L).X).X; fX = fX/((no^ni).fX); 
		sph1 = color(((no.fX) (1+ no.fX ni/2)). (M.L),1,1,1,0.3),
	};
	prompt("FIG(13,7)a: feel free to drag X and other elements >> ");
	suspend;
	X = vp(tv(2 e2-  4 e3),no^(e1+e3)^ni),
	prompt("FIG(13,7)b: feel free to drag X and other elements >> ");
	suspend;
	prompt();
}

function gin(X) { return grade_involution(X);}

