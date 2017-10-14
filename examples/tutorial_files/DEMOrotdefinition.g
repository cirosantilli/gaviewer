// inspired by old DEMOrotdefinition from GABLE
function unit();
batch init_e3ga();
batch DEMOrotdefinition() {
	
	init_e3ga();
	camori=1;
	prompt("DEMOrotdefinition >> ");
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{HOW TO DEFINE A ROTATION}}\" flag_2d flag_px flag_py");

	x = e1+e2/3, label(x);
	dynamic{B = alpha(white(ori(pi x^(x e1 e2))),0.5),};
	dynamic{I = white(ori(unit(B))),}; label(I);
	suspend;
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{HOW TO DEFINE A ROTATION} \\ Construct x \gp I}\" flag_2d flag_px flag_py");
	dynamic{xI = x.I,}; label(xI,"x \gp I");
	suspend;
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{HOW TO DEFINE A ROTATION} \\ Take an amount cos\phi of x and sin \phi of x \gp I \\ Rx = cos \phi x + sin \phi x \gp I = x exp(I \gp \phi)}\" flag_2d flag_px flag_py");
	dynamic{R = exp(-I pi/2/6);};
	dynamic{Rx = R x/R,}; label(Rx);

	dynamic{px = (Rx.x)/x;};
	dynamic{rx = (Rx^x)/x;};
	cmd("fgcolor black"); cmd("polygon line1 3 px Rx rx dynamic dm2"); 

	prompt();
}
