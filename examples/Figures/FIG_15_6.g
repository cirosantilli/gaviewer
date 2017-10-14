// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_15_6() {
// Original title FIGtangent()
// generate figure FIGtangent
	batch pantilt();
	batch init();

	set_window_title("FIG(15,6):  Tangents of elements [static figure]");

	init(2); // c3ga
	pantilt(pi,3 pi/4);
	set_gl_lines(1);
	campos = -5.390600e+000*e1 + -2.585000e-001*e2 + 1.390000e+001*e3;
		
	dynamic{ALL:
	c1 = e1;
	c2 = e2;
	slope = c2^c1;
	normal = slope/I3;
	r = 1;
	flatsize = 1.4;
	K = (no+r r ni/2)^slope;
	L = ori(-no^c1^ni);
	drawL[0] = green(  vp(tv(-0.5 c1),-no^c1)  );
	drawL[1] = green(  vp(tv( 0.5 c1),-no^c1) );
	drawL[2] = green(  vp(tv( 1.5 c1),-no^c1)  );
	P = no^slope^ni;
	S = -(no+ni/2)^e1^e2^e3;
	drawP = yellow(dm3(vp(tv(flatsize (c1-c2)), 4 flatsize flatsize no.P)));
	pon  = c3ga_point(-c2);
	ponf = no;
	poff = c3ga_point(normal);
	ptop = c3ga_point(normal);

	offset = -3 e2 + 3 e3;
	labeloffset = no+0.3 offset;

	lineoffset   = 0 offset;
	circleoffset = 1 offset;
	planeoffset  = 2 offset;
	sphereoffset = 3 offset;
	separation  = 3.5 e1;

//========================================================================
	// tangent of round
	TV[1][1] = tv(2 separation);
	p [1][1] = vp(TV[1][1],		pon		),
	el[1][1] = ori(vp(TV[1][1],	K		)),
	rs[1][1] = ori(vp(TV[1][1],	pon.gin(K)	)),
	lloc[1][1] = vp(TV[1][1],labeloffset);
	label(lloc[1][1], "\eqn{p \lc \hat{K}}");

	// tangent of plane flat
	TV[2][1] = tv(1 separation);
	p [2][1] = vp(TV[2][1], 			ponf	),
	el[2][1] = yellow(dm3(vp(TV[2][1], 	vp(tv(-normal/50),drawP) ))  ),
	rs[2][1] = ori(vp(TV[2][1],		ponf.gin(P))	),
	lloc[2][1] = vp(TV[2][1],labeloffset);
	label(lloc[2][1], "\eqn{p \lc \hat{\Pi}}");

	// tangent of line flat
	TV[3][1] = tv(3 separation);
	p [3][1] = vp(TV[3][1], 			ponf	),
	for(i=0;i<3;i=i+1) { drawL[3][1][i] = color(vp(TV[3][1] tv(normal/50),drawL[i]),0,1,0,0.7), };
	// el[2][1] = ori(vp(TV[3][1], 	L)  ),
	rs[3][1] = ori(vp(TV[3][1],		ponf.gin(L))	),
	lloc[3][1] = vp(TV[3][1],labeloffset);
	label(lloc[3][1], "\eqn{p \lc \hat{\Lambda}}");

	//tangent of sphere
	TV[4][1] = tv(0 separation);
	p [4][1] = vp(TV[4][1],		ptop		),
	el[4][1] = alpha(vp(TV[4][1],	S		),1),
	rs[4][1] = ori(vp(TV[4][1],	ptop.gin(S)	)),
	lloc[4][1] = vp(TV[4][1],labeloffset);
	label(lloc[4][1], "\eqn{p \lc \hat{\Sigma}}");
	};
	
}
