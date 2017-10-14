function idual(X) { return (X I5); }

batch DEMOclassification() {
	batch init_c3ga();

	init_c3ga();
	prompt("DEMOclassification >> ");

	camori = (1 - 0.2 e1^e3)(1-0.5 e2^e3);

	"dist" = 0;
	dynamic{a: a = idual(c3ga_point(("dist"/2+1) e1)-ni/2) , };
	dynamic{b: b = idual(c3ga_point(-("dist"/2+1) e1)-ni/2),};
	dynamic{meetje:  meetje = idual(dual(a)^dual(b)), };
	cmd("show scalar_controls");
	ctrl_range( "dist"=0, -5, 5);
	cmd("label exp_ [5*e1+5+e2] \"\txt{\white{CLASSIFICATION : TANGENTS AND ROUNDS} \\ The meet of a and b may be a \blue{tangent bivector, real or imaginary circle}. \\ These are all rounds, squaring to 0, positive or negative.}\" flag_2d flag_px flag_py");
	suspend;

	dynamic{a: a = ori(idual((c3ga_point(("dist"/2+1) e1)-ni/2)^e2)), };
	dynamic{b: b = ori(idual((c3ga_point(-("dist"/2+1) e1)-ni/2)^e2)),};
	dynamic{meetje:  I2=no^e1^e3^ni; meetje = (b/I2).a,};
	cmd("label exp_ [5*e1+5+e2] \"\txt{\white{CLASSIFICATION : TANGENTS AND ROUNDS} \\ The meet of a and b may be a \blue{tangent vector, real or imaginary point pair}. \\ These are all rounds, squaring to 0,  postiive or negative.}\" flag_2d flag_px flag_py");
	suspend;	
	dynamic{a: a = c3ga_point(("dist"/2) e1)^e3^ni, };
	dynamic{b: b = c3ga_point(-("dist"/2) e1)^e3^ni, };
	cmd("label exp_ [5*e1+5+e2] \"\txt{\white{CLASSIFICATION : ATTITUDES} \\ The meet of two parallel lines is a \blue{1-D attitude}. }\" flag_2d flag_px flag_py");
	suspend;
	dynamic{a: a = c3ga_point(("dist"/2) e1)^e2^e3^ni, };
	dynamic{b: b = c3ga_point(-("dist"/2) e1)^e2^e3^ni, };
	dynamic{meetje:  meetje = ori(idual(dual(a)^dual(b))), };
	cmd("label exp_ [5*e1+5+e2] \"\txt{\white{CLASSIFICATION : ATTITUDES} \\ The meet of two parallel planes is a \blue{2-D attitude}. }\" flag_2d flag_px flag_py");
	suspend;
	dynamic{a: a = ori( c3ga_point(("dist"/2) e1)^e2^ni), };
	dynamic{b: b = ori( c3ga_point(-("dist"/2) e1)^e3^ni), };
	dynamic{meetje:  meetje = dual(b).a,};
	cmd("label exp_ [5*e1+5+e2] \"\txt{\white{CLASSIFICATION : ATTITUDES} \\ The meet of two skew line is a \blue{0-D attitude (i.e. a scalar)}. }\" flag_2d flag_px flag_py");
	prompt();
}
