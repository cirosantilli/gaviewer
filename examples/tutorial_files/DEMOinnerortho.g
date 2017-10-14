batch init_c3ga();
	
batch DEMOinnerortho() {

	init_c3ga();
	prompt("DEMOinnerortho >> ");

	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{INNER PRODUCT DENOTES ORTHOGONALITY} \\ two circles} \" flag_2d flag_px flag_py");

	dynamic{camori: camori = 1;};

	A = (no-ni/2).dual((c3ga) e3), label(A);	
	B = (no-ni/4).dual((c3ga) e3), label(B);	
	cmd("show scalar_controls");
	ctrl_range("A . B" = 0,-2,2);
	dynamic{ "A . B" = A.B,};
	dynamic{AmB: AmB = (A/dual((c3ga) e3)).B,};
	dynamic{ if(abs("A . B") < 0.05) { label(AmB,"\red{\txt{inner product zero}}");}
		else { label(AmB," ");};
		}
	suspend;
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{INNER PRODUCT DENOTES ORTHOGONALITY} \\ two dual spheres} \" flag_2d flag_px flag_py");
	cld(camori);
	A = (no-ni/2), label(A);	
	B = (no-ni/4), label(B);	
	dynamic{AmB: AmB = (A^B)/dual(1),};

	suspend;
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{INNER PRODUCT DENOTES ORTHOGONALITY} \\ point and dual sphere} \" flag_2d flag_px flag_py");

	A = no,

	prompt();
}
