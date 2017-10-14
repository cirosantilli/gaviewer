// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_7_6() {
// Created 20070425 LD
// Original title FIGrotsphere()
// Creates figure FIGrotsphere1,2
	batch init();
	function sLog();

	set_window_title("FIG(7,6):  A spherical triangle; Composition of rotations through concatenation of rotor arcs");

//======================================================
//======================================================
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
		rots = color((no-ni/2),1,1,1,0.9),
		// point labels
		A = green ((e3ga) (A/norm(A))),
		B = blue  ((e3ga) (B/norm(B))),
		C = red   ((e3ga) (C/norm(C))),
		// corner labels
		la = A + B/5 + C/5; la = la/norm(la);
		lb = B + C/5 + A/5; lb = lb/norm(lb);
		lc = C + A/5 + B/5; lc = lc/norm(lc);
		// side labels
		lA = B+C; lA = lA/norm(lA);
		lB = C+A; lB = lB/norm(lB);
		lC = A+B; lC = lC/norm(lC);
		// planes
		AB = color(ori((-rots.(no^A^B^ni))),1,0,0,0.6),
		BC = color(ori((rots.(no^B^C^ni))),0,1,0,0.3),
		CA = color(ori((rots.(no^C^A^ni))),0,0,0.5,0.6),
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

		pA2 = -(AB^ni)la/(AB^ni); 
		pA21 = 2 pA2 + la; pA21= pA21/norm(pA21);
		pA211 = 2 A + pA21; pA211= pA211/norm(pA211);
		pA212 = A + 2 pA21; pA212= pA212/norm(pA212);
		arA211 = red(dm2(100 c3ga_point(A)^c3ga_point(pA211))), 
		arA212 = red(dm2(100 c3ga_point(pA211)^c3ga_point(pA212))), 
		arA213 = red(dm2(100 c3ga_point(pA212)^c3ga_point(pA21))), 
		pA22 = pA2 + 2 la; pA22= pA22/norm(pA22);
		pA221 = 2 A + pA22; pA221= pA221/norm(pA221);
		pA222 = A + 2 pA22; pA222= pA222/norm(pA222);
		arA221 = red(dm2(100 c3ga_point(A)^c3ga_point(pA221))), 
		arA222 = red(dm2(100 c3ga_point(pA221)^c3ga_point(pA222))), 
		arA223 = red(dm2(100 c3ga_point(pA222)^c3ga_point(pA22))), 


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
		// vertex labels ===================
		label(A,"\eqn{v_{2}}");
		label(B,"\eqn{v_{0}}");
		label(C,"\eqn{v_{1}}");
		// side labels ===================
		label(lA,"\eqn{R_{1}}");
		label(lB,"\eqn{R_{2}}");
		label(lC,"\eqn{R_{2}R_{1}}");
		// angle labels ===================
		// 	label(la,"\alpha");
		// 	label(lb,"\beta");
		//	label(lc,"\gamma");
	};
}
