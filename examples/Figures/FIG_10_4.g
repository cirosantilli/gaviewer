// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_10_4() {
// Created 20070426 LD
// Original title FIGinterpolation() 
// related to GAblock3()
// INTERPOLATION OF ORIENTATIONS
    batch init();
    function gexp();
    function sLog();
    function unit();
    function factored_bivector();
    function factored_trivector();
    function GAorbiter();
    
    set_window_title("FIG(10,4): Interpolation of rotations");
    
    init(0);
    
	campos= 1.540000e-001*e1 + 5.940000e-001*e2 + 5.900000e+000*e3;
	camori = 8.232488e-001 + -1.973430e-001*e2^e3 + -5.133474e-001*e3^e1 + -1.406824e-001*e1^e2;

    ctrl_range(phi = pi/2, -pi,pi);
    nmax = 16;
    ctrl_range(n = 8, 1, nmax, 1);

    RA = 1; //gexp(-::I3 e1 pi/2/2);
    dynamic{Rotations:
    	RB = exp(-I3 e2 phi/2);
    	Rtot =  RB/RA;
    	R = red(exp(sLog(Rtot)/n)),
    } 

    u = 0.67*e1 + 0.97*e2 + 0.38*e3, label(u),
    v = e1+e3, label(v),
    
    // === initial orientation:
    dynamic{O[0] = blue( factored_bivector(RA u / RA, RA v / RA) ),};
    dynamic{RAu: RAu = RA (u+v)/RA; label(RAu,"\eqn{R_{A}[b]}");};
    
    
    // === final orientation:
    // dynamic{O[n] = green( factored_bivector(RB u / RB, RB v / RB) );};
    dynamic{RBu: RBu = RB (u+v)/RB; label(RBu,"\eqn{R_{B}[b]}");};
    
    
    dynamic{axisR = red( grade(unit(-sLog(R)/I3), 1) ),};
    
    
    dynamic{
    	Ri = RA;
    	for (i = 1; i < n+1; i = i + 1) {
        	Ri = R Ri;
        	ui = Ri u / Ri;
        	vi = Ri v / Ri;
	 	O[i] = color(factored_bivector(ui,vi), get_color(O[0]) * (n - i) / n + e2 * i / n),
    	};
    	for (i = n+1; i < nmax +1; i = i + 1) {
    		O[i] =0;
    	};
    };
}
