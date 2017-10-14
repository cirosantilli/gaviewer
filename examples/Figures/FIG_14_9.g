// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_14_9() {
// a small robot kinematics example of animation 
// to start:
// >> dynamic{puma(atime);}
// >> start_animation(); 
//
// Created 20070426 LD
// Original title FIGpuma() 
	batch FIGpuma_init();
	function puma();

	set_window_title("FIG(14,9):  Forward kinematics of a robot arm");

	FIGpuma_init(); 
	set_gl_lines(1);

	dynamic{puma(atime);}; 
	prompt("FIG(14,9) >> "); 
	suspend; 
	start_animation(); 
	cprint("=== TO RE-ANIMATE, SELECT 'Dynamic->Start/resume animation' ===");
	prompt(); 
}


batch FIGpuma_init()
{
	batch init();
	init(2);

	camori = 7.7e-001 + 6.3e-001*e2^e3 + 2.2e-001*e3^e1 + 2.0e-001*e1^e2;
	campos = 3.643400e+000*e1 + 4.673400e+000*e2 + 2.890000e+001*e3;
	set_gl_lines(1);

	::Njoints = 6;

	default_model(c3ga);
	grey_canvas(1);

	T[1] = 6.60 e3; 		R[1] = e1^e2;
	T[2] = 4.31 e1+1.49 e2;		R[2] = e3^e1;
	T[3] = -0.20 e3;		R[3] = e3^e1;
	T[4] = 4.33 e1;			R[4] = e2^e3;
	T[5] = 0;			R[5] = e3^e1;
	T[6] = 0.56 e1+0.1111 e2;  	R[6] = e2^e3;

	ne1=red(no^e1), ne2=white(no^e2), ne3=blue(no^e3),

	a[0] = no; limb[0]=tv(0);
	for(i=1;i < ::Njoints+1;i=i+1) {
		limb[i] = limb[i-1] tv(T[i]);		// limb location
 		::axis[i] = -limb[i-1] R[i]/limb[i-1]/2;// limb dual axis
		a[i] = limb[i] a[0] /limb[i];   	// limb point
        	::b[i] = show(color(limb[i-1] no^R[i] /limb[i-1],0.3,0.3,0.3,0.3));// limb bivector
 		::shape[i] = dm2(no_weight(color(a[i-1]^a[i],0.3,0.3,0.3))),
							// limb shape   
	}

	clc();

	// 'animate_what' controls which joints are moving
	// it is set dynamically, using the ctrl_bool variables 
	// 'joint 1' ... 'joint 6' 
	ctrl_bool("joint 1" = 1);
	ctrl_bool("joint 2" = 1);
	ctrl_bool("joint 3" = 1);
	ctrl_bool("joint 4" = 1);
	ctrl_bool("joint 5" = 1);
	ctrl_bool("joint 6" = 1);
	dynamic{::animate_what = 1 "joint 1" + 2 "joint 2" + 4 "joint 3" 
		+ 8 "joint 4" + 16 "joint 5" + 32 "joint 6";}
}

function puma(e3ga t) {	
	if (t == 0.0) { // do initialization:
		for(i=1;i < ::Njoints+1;i=i+1) ::t[i] = 0.0;
	}

	// change these functions for variation of motion

	if (bit_and(::animate_what, pow(2,1-1))) { ::t[1] = 0.1 sin(t); }
	if (bit_and(::animate_what, pow(2,2-1))) { ::t[2] = 0.25 (1-cos(t)); }
	if (bit_and(::animate_what, pow(2,3-1))) { ::t[3] = 0.5 (1-cos(t)); }
	if (bit_and(::animate_what, pow(2,4-1))) { ::t[4] = -sin(t); }
	if (bit_and(::animate_what, pow(2,5-1))) { ::t[5] = -sin(t); }
	if (bit_and(::animate_what, pow(2,6-1))) { ::t[6] = t; }
   	
        // the dynamic shape generation

	M[0] = 1;
	for(i=1;i < ::Njoints+1;i=i+1) {
  		M[i]        = M[i-1] exp(::axis[i] ::t[i]);
  		::dshape[i] = show(dm2(no_weight(M[i] ::shape[i] /M[i]))); 
  		::db[i]     = show(M[i] ::b[i] /M[i]); 
	}

	if (t > 2 pi) stop_animation();

	return 0;
}


