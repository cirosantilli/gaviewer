// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_10_3() {
// Created 20070425 LD
// Original title FIGrotsphere()
// Creates figure FIGrotsphere3
	batch init();
	function sLog();

	set_window_title("FIG(10,3): A spherical triangle");
//=========================================================================
	init(0);
	set_sphere_sub_div(4);
	set_point_size(0);
camori = 6.740374e-001 + -5.315500e-001*e2^e3 + -1.830545e-001*e3^e1 + -4.791861e-001*e1^e2;
	campos = 4.400000e+000*e3;

	A = (e3ga) red(0.88*e1 + 0.44*e2 + 0.19*e3);
	B = (e3ga) blue(e2),
	C = (e3ga) red( -0.11*e1 + 0.65*e2 + 0.75*e3);

	// transformation
	Nstep = 20;
	dynamic{SCENE:
		rots = alpha(white(no-ni/2),0.5),
		// point labels
		A = green ((e3ga) (A/norm(A))),
		B = blue  ((e3ga) (B/norm(B))),
		C = red   ((e3ga) (C/norm(C))),
		label(A,"\bold{a}");
		label(B,"\bold{b}");
		label(C,"\bold{c}");
		// side labels
		lA = B+C; lA = lA/norm(lA);
		lB = C+A; lB = lB/norm(lB);
		lC = A+B; lC = lC/norm(lC);
		label(lA,"\eqn{A}");
		label(lB,"\eqn{B}");
		label(lC,"\eqn{C}");
		labC = (A+B)/4; label(labC,"\bold{C}");
		lbcA = (B+C)/4; label(lbcA,"\bold{A}");
		lcaB = (C+A)/4; label(lcaB,"\bold{B}");
		// corner labels;
		la = A + B/5 + C/5; la = la/norm(la);
		lb = B + C/5 + A/5; lb = lb/norm(lb);
		lc = C + A/5 + B/5; lc = lc/norm(lc);
		 	label(la,"a");
		 	label(lb,"b");
		 	label(lc,"c");
		// planes
		AB = color(ori((rots.(no^A^B^ni))),1,0,0,0.6),
		BC = color(ori((rots.(no^B^C^ni))),0,1,0,0.6),
		CA = color(ori((rots.(no^C^A^ni))),0,0,0.5,0.6),
		ABdisk = color(0.99 pi (A^B)/norm(A^B),1,0,0,1),
		BCdisk = color(0.99 pi (B^C)/norm(B^C),0,1,0,1),
		CAdisk = color(0.99 pi (C^A)/norm(C^A),0,0,1,1),
		// tangent planes
		tA = (c3ga_point(A).dual(rots))^ni;
		tB = (c3ga_point(B).dual(rots))^ni;
		tC = (c3ga_point(C).dual(rots))^ni;
		// side arrows
		pA1 = -(CA^ni)la/(CA^ni); 
		pA11 = 2 pA1 + la; pA11= pA11/norm(pA11);
		pA111 = 2 A + pA11; pA111= pA111/norm(pA111);
		pA112 = A + 2 pA11; pA112= pA112/norm(pA112);
		arA111 = blue(dm2(100 c3ga_point(A)^c3ga_point(pA111))), 
		arA112 = blue(dm2(100 c3ga_point(pA111)^c3ga_point(pA112))), 
		arA113 = blue(dm2(100 c3ga_point(pA112)^c3ga_point(pA11))), 
		pA12 = pA1 + 2 la; pA12= pA12/norm(pA12);
		pA121 = 2 A + pA12; pA121= pA121/norm(pA121);
		pA122 = A + 2 pA12; pA122= pA122/norm(pA122);
		arA121 = blue(dm2(100 c3ga_point(A)^c3ga_point(pA121))), 
		arA122 = blue(dm2(100 c3ga_point(pA121)^c3ga_point(pA122))), 
		arA123 = blue(dm2(100 c3ga_point(pA122)^c3ga_point(pA12))), 

		pC = -(BC^ni)lc/(BC^ni); 
		pC1 = 2 pC  + lc; pC1= pC1/norm(pC1);
		pC11 = 2 C + pC1; pC11= pC11/norm(pC11);
		pC12 = C + 2 pC1; pC12= pC12/norm(pC12);
		arC11 = green(dm2(100 c3ga_point(C)^c3ga_point(pC11))), 
		arC12 = green(dm2(100 c3ga_point(pC11)^c3ga_point(pC12))), 
		arC13 = green(dm2(100 c3ga_point(pC12)^c3ga_point(pC1))), 
		pC2 = 2 lc + pC ; pC2= pC2/norm(pC2);
		pC21 = 2 C + pC2; pC21= pC21/norm(pC21);
		pC22 = C + 2 pC2; pC22= pC22/norm(pC22);
		arC21 = green(dm2(100 c3ga_point(C)^c3ga_point(pC21))), 
		arC22 = green(dm2(100 c3ga_point(pC21)^c3ga_point(pC22))), 
		arC23 = green(dm2(100 c3ga_point(pC22)^c3ga_point(pC2))), 

		pB2 = -(AB^ni)lb/(AB^ni); 
		pB21 = 2 pB2 + lb; pB21= pB21/norm(pB21);
		pB211 = 2 B + pB21; pB211= pB211/norm(pB211);
		pB212 = B + 2 pB21; pB212= pB212/norm(pB212);
		arB211 = red(dm2(100 c3ga_point(B)^c3ga_point(pB211))), 
		arB212 = red(dm2(100 c3ga_point(pB211)^c3ga_point(pB212))), 
		arB213 = red(dm2(100 c3ga_point(pB212)^c3ga_point(pB21))), 
		pB22 = pB2 + 2 lb; pB22= pB22/norm(pB22);
		pB221 = 2 B + pB22; pB221= pB221/norm(pB221);
		pB222 = B + 2 pB22; pB222= pB222/norm(pB222);
		arB221 = red(dm2(100 c3ga_point(B)^c3ga_point(pB221))), 
		arB222 = red(dm2(100 c3ga_point(pB221)^c3ga_point(pB222))), 
		arB223 = red(dm2(100 c3ga_point(pB222)^c3ga_point(pB22))), 

		RAB = exp(sLog(B/A)/2/Nstep);
		RBC = exp(sLog(C/B)/2/Nstep);
		RCA = exp(sLog(A/C)/2/Nstep);
		a[0] = c3ga_point(A);
		b[0] = c3ga_point(B);
		c[0] = c3ga_point(C);
		for(i=1;i<Nstep+1;i=i+1) {
			a[i] = RAB a[i-1]/RAB;	
			b[i] = RBC b[i-1]/RBC;	
			c[i] = RCA c[i-1]/RCA;	
			aa[i] = red  (dm2(100 a[i-1]^a[i])),
			bb[i] = green(dm2(100 b[i-1]^b[i])),
			cc[i] = blue (dm2(100 c[i-1]^c[i])),
		};
	};
}
