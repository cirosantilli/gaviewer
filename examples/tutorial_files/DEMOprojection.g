batch DEMOprojection() {
	batch init_c3ga();
	init_c3ga();
	prompt("DEMOprojection >> ");

	dynamic{PX: PX = (X.P)/P, label(PX);};
	dynamic{carrier: carrier = alpha( dual(P)^X, 0.1),};
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{CONFORMAL PROJECTION} \\  projection : \eqn{(X\ip P)/P} \\ plunger : \eqn{ X \op dual(P) }\\ flat point on plane} \" flag_2d flag_px flag_py");
	X = no^ni, label(X);
	P = dual(e1-ni), label(P);
	suspend;
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{CONFORMAL PROJECTION} \\  projection : \eqn{(X\ip P)/P} \\ plunger : \eqn{ X \op dual(P) }\\ flat point on line} \" flag_2d flag_px flag_py");
	P = dual((e1-ni)^e2), label(P);
	suspend;
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{CONFORMAL PROJECTION} \\  projection : \eqn{(X\ip P)/P} \\ plunger : \eqn{ X \op dual(P) }\\ line on plane} \" flag_2d flag_px flag_py");
	a = no, b = c3ga_point(e1), 
	label(a);label(b);
	P = dual(e1-ni), label(P);
	dynamic{X: X = a^b^ni, label(X);}
	suspend;
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{CONFORMAL PROJECTION} \\  projection : \eqn{(X\ip P)/P} \\ plunger : \eqn{ X \op dual(P) }\\ line on sphere} \" flag_2d flag_px flag_py");
	P = dual(no-ni), label(P);
	suspend;
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{CONFORMAL PROJECTION} \\  projection : \eqn{(X\ip P)/P} \\ plunger : \eqn{ X \op dual(P) }\\ circle on sphere} \" flag_2d flag_px flag_py");
	c = c3ga_point(e2), label(c);
	dynamic{X: X = a^b^c, label(X);}
	suspend;
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{CONFORMAL PROJECTION} \\  projection : \eqn{(X\ip P)/P} \\ plunger : \eqn{ X \op dual(P) }\\ circle on plane} \" flag_2d flag_px flag_py");
	P = dual(e1-ni), label(P);
	suspend;
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{CONFORMAL PROJECTION} \\  projection : \eqn{(X\ip P)/P} \\ plunger : \eqn{ X \op dual(P) }\\ tangent vector on sphere} \" flag_2d flag_px flag_py");
	a = b = c = a_label = b_label = c_label = 0;
	cld(X); X = 0;
	X = no^e1, label(X);
	P = dual(no-ni), label(P);
	suspend;
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{CONFORMAL PROJECTION} \\  projection : \eqn{(X\ip P)/P} \\ plunger : \eqn{ X \op dual(P) }\\ tangent bivector on sphere} \" flag_2d flag_px flag_py");
	X = no^e1^e2, label(X);
	prompt();
}
