batch DEMOpencil() 
{
	batch init_c3ga();

	init_c3ga();

	prompt("DEMOpencil >> ");
	cmd("label exp0_ [5*e1+5*e2] \"\txt{\white{PENCILS OF BLADES}}\" flag_2d flag_px flag_py");
	camori = 1 + 0.01 e1^e3;
   	
	p = pt(-e1), label(p);
	q = pt(e1),  label(q);
	// cmd("label p_ p \"\eqn{p}\" flag_dynamic");
	// cmd("label q_ q \"\eqn{q}\" flag_dynamic");
	cmd("label exp0_ [5*e1+5*e2] \"\txt{\white{PENCILS OF BLADES} \\ p-q is a dual plane}\" flag_2d flag_px flag_py");
	dynamic{dsphere: dsphere = p-q,};
	suspend;
	cmd("label exp0_ [5*e1+5*e2] \"\txt{\white{PENCILS OF BLADES} \\ p-q/2 is a dual sphere}\" flag_2d flag_px flag_py");
	dynamic{dsphere: dsphere = p-q/2,};
	suspend;
   
   
   	ctrl_range( lambda=0, -5, 5);// to force evaluation of the dynamic
   	dynamic{dsphere: dsphere = ((1-lambda)/2 p - (1+lambda)/2 q),}; 
	cmd("label exp0_ [5*e1+5*e2] \"\txt{\white{PENCILS OF BLADES} \\ \eqn{\frac{1-\lambda}{2} \gp p \gp - \gp \frac{1+\lambda}{2} \gp q} is a dual sphere \\ (real for \eqn{-1 < \lambda < 1 \gp) }}\" flag_2d flag_px flag_py");
	suspend;
   	dynamic{dsphere: dsphere = ori((1-lambda)/2 p - (1+lambda)/2 q),}; 
	suspend;
	cmd("label exp0_ [5*e1+5*e2] \"\txt{\white{PENCILS OF BLADES} \\ \eqn{\frac{1-\lambda}{2} \gp p \gp - \gp \frac{1+\lambda}{2} \gp q} is a spherical circle \\ if p and q are circles with two common points}\" flag_2d flag_px flag_py");
	cmd("cvcolor 0.4 0.4 0.4");
	a = pt(-e3+(e1+e2)/10), b = pt(e3-(e1+2 e2)/10), c = pt(e1); d = pt(e2+e1);
	dynamic{p = alpha(ori(a^b^c),0.5),};
	dynamic{q = alpha(ori(a^b^d),0.5),};
	suspend;
	dynamic{sphere = alpha(a^b^c^d,0.2),};
   	prompt();
}
