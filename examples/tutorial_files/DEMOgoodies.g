batch DEMOgoodies() {
	batch init_c3ga();

	init_c3ga();
	textinit();
	prompt("DEMOgoodies >> ");

	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{CONFORMAL GOODIES} \\ Q: Find sphere \eqn{s} with given circle \eqn{C} as equator.} \" flag_2d flag_px flag_py");
	a = no, label(a);
	b = c3ga_point(e1), label(b);
	c = c3ga_point(e1+e3), label(c);
	dynamic{C: C = a^b^c,};
	suspend;
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{CONFORMAL GOODIES} \\ Q: Find sphere \eqn{S} with given circle \eqn{C} as equator. \\ A: \eqn{S^{*} = (\infty \op C)/C } } \" flag_2d flag_px flag_py");
	dynamic{S: S=  dual( (ni ^ C)/C ) ,};
	suspend;

	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{CONFORMAL GOODIES} \\ Q: Find contour circle \eqn{C} on (dual) sphere \eqn{s} from point \eqn{a}.} \" flag_2d flag_px flag_py");
	b = c = 0; b_label = c_label=0;
	cld(C); C=0;
	cld(S); S=0;
	s = no-ni/2,
	a = c3ga_point(2 e1), 
	suspend;
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{CONFORMAL GOODIES} \\ Q: Find contour circle \eqn{C} on (dual) sphere \eqn{s} from point \eqn{a}. \\ A: \eqn{C^{*} =  s \op  (s \ip (a \op \infty)) } } \" flag_2d flag_px flag_py");
	dynamic{C: C = dual( s ^ (s . (a ^ ni) ) ),};
	suspend;
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{CONFORMAL GOODIES} \\ Q: Find contour circle \eqn{C} on (dual) sphere \eqn{s} from point \eqn{a}. \\ A: \eqn{C^{*} =  s \op  (s \ip (a \op \infty)) } \\ H: Use \eqn{s \ip (a \op \infty)} } \" flag_2d flag_px flag_py");
	dynamic{S: S = alpha( s . (a ^ ni)  , 0.1),};

	prompt();
}
