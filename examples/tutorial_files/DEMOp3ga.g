function proj(x,O,I) { return no_weight(dual(I).(O^x));}

// simple demonstration of projection in the p3ga model
batch DEMOp3ga()
{
	batch init_p3ga();

	init_p3ga();
	O = e0, label(O); 					// pinhole camera 
	I = no_shade(alpha(p3ga_point(e1)^e2^e3,0.5)),    // image plane
	
	x = p3ga_point(2*e1+e2),  label(x);
	y = p3ga_point(2*e1+e3),  label(y);
	dynamic{ linexy  = x^y,}
	dynamic{ xp    = proj(x,O,I),}
	dynamic{ yp    = proj(y,O,I),}
	dynamic{ xr    = alpha(O^x,0.3),}
	dynamic{ yr    = alpha(O^y,0.3),}
	dynamic{ linep = proj(linexy,O,I),}

  cmd("label exp_ [5*e1+5*e2] \"\txt{\white{P3GA MODEL:} \\ points are \red{grade 1} \\ lines are \blue{grade 2} \\ planes are \green{grade 3}}\" flag_2d flag_px flag_py");
	default_model(c3ga);
}


