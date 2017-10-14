// basic demo of the outer product construction
batch DEMOouter() {
	function factored_bivector();
	batch init_e3ga();

	init_e3ga();
	prompt("DEMOouter >> ");

	camori = 1;
	cmd("label exp_ [5*e1+5*e3] \"\txt{\white{OUTER PRODUCT} \\ Anti-comuutative combinaton of two vectors. \\ Signifies oriented amount of plane area.}\" flag_2d flag_px flag_py");
	
	u = e1, 	label(u,"\red{u}");
	v = e2-e1, 	label(v,"\red{v}");
	dynamic{uv_loc = (u+v)/2;}; label(uv_loc,"\white{u \op v}");
	dynamic{B: B = alpha(factored_bivector(u,v),0.5),}
	cprint("Drag the vectors by hand to reshape.");
	suspend;
	cmd("label exp_ [5*e1+5*e3] \"\txt{\white{OUTER PRODUCT} \\ Anti-comuutative combinaton of two vectors. \\ Signifies oriented amount of plane area. \\ It is reshapeable}\" flag_2d flag_px flag_py");
	dynamic{Bt: Bt = alpha(factored_bivector(u,vn),0.2),};
	dynamic{vn: vn = v+2 u 1/5;}; dynamic{uvn_loc: uvn_loc = (u+vn)/2;}; 
	label(uvn_loc,"u \op v");
	suspend;
	dynamic{vn: vn = v+2 u 2/5;}; dynamic{uvn_loc: uvn_loc = (u+vn)/2;}; 
	suspend;
	dynamic{vn: vn = v+2 u 3/5;}; dynamic{uvn_loc: uvn_loc = (u+vn)/2;}; 
	suspend;
	dynamic{vn: vn = v+2 u 4/5;}; dynamic{uvn_loc: uvn_loc = (u+vn)/2;}; 
	suspend;
	dynamic{vn: vn = v+2 u 5/5;}; dynamic{uvn_loc: uvn_loc = (u+vn)/2;}; 
	suspend;
	cmd("label exp_ [5*e1+5*e3] \"\txt{\white{OUTER PRODUCT} \\ Anti-commutative combinaton of two vectors. \\ Signifies oriented amount of plane area. \\ We will mostly denoted it as a circular area.}\" flag_2d flag_px flag_py");
	dynamic{bivector: bivector = dm1(ori(B)),};
	label(Bc,"\white{u \op v}");
	suspend;
	cmd("label exp_ [5*e1+5*e3] \"\txt{\white{OUTER PRODUCT} \\ By the way: all vectors having same outer product with u \\ are on a \green{line} parallel to \red{u} with moment \red{u \op v}.}\" flag_2d flag_px flag_py");
	dynamic{line0 = (c3ga)(ori(c3ga_point(v)^u^ni)),};
	prompt();
}
