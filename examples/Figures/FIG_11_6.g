// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_11_6() {
    // basically GAblock4() with labels
    // LINE CROSSES LINE
// Created 20070426 LD
// Original title FIGlinecross() 
    batch init();
    function factored_bivector();
    function factored_trivector();

    set_window_title("FIG(11,6):  The meet of two skew lines");

    init(0);
    grey_canvas(1);
    set_point_size(0);

camori = 5.733040e-001 + 5.267897e-001*e2^e3 + -6.237504e-001*e3^e1 + 6.892435e-002*e1^e2;
campos = 3.269200e+000*e1 + 1.596200e+000*e2 + 1.760000e+001*e3;


p = -1.64*e1 + 0.06*e2 + 2.69*e3;
q = -0.64*e1 + -2.56*e2 + 7.55*e3;
u = 0.67*e1 + -0.85*e2 + -0.24*e3;
v = 0.11*e1 + 1.00*e2 + -0.05*e3;

    p = blue(p), label(p,"\eqn{\bold{p}}");
    u = blue(u), label(u,"\eqn{\bold{u}}");
    dynamic{pu: pu = blue((c3ga)(c3ga_point(p)^u^ni)), lL = p+3 u; label(lL,"\eqn{L}");};
    
    q = green(q), label(q,"\eqn{\bold{q}}");
    v = green(v), label(v,"\eqn{\bold{v}}");
    dynamic{qv: qv = green((c3ga)(c3ga_point(q)^v^ni)), lM = q+2 v; label(lM,"\eqn{M}");};

    dynamic{scene:
    	U = color((u^q^v / v^u), 0,0,1,0.5); 
	lU = U/2; label(lU,"\eqn{\bold{u \op q \op v}}");
	V = color((v^p^u / u^v), 0,0,1,0.5);
    	lV = V/3; label(lV,"\eqn{\bold{v \op p \op u}}");
    	i = (U - V); 
    	fBuv = color( factored_bivector(u,v),0.5,0,0,0.4),
    	fBuV = color( factored_trivector(u,V,v),0.5,0,0,0.2), 
    	fBvV = color( factored_trivector(u,U,v),0.5,0,0,0.2),

    // this is a cheat since I use CGA
    	P = (c3ga)(dual((no.qv)^ni^((u^v)/I3)).pu), 
	C = (no.P) ni (no.P)/2; 
	connect = red(C^(C.(i^ni))/(ni.C)/(ni.C)),
	ld = (e3ga)(no.P/((no^ni).P) +i/2); label(ld,"\eqn{\bold{d}}");

	// possible connections
	Uv = ( ((e0+U)^u).((e0+U)^u^v)).((e0+q)^v); Uv = Uv/(e0.Uv)-e0;
	Vu = ( ((e0+V)^v).((e0+V)^v^u)).((e0+p)^u); Vu = Vu/(e0.Vu)-e0;
	con1 = color(dm2((c3ga)(c3ga_point((e3ga)Uv)^c3ga_point((e3ga)U))),0.8,0,0,0.3),
	con2 = color(dm2((c3ga)(c3ga_point((e3ga)Vu)^c3ga_point((e3ga)V))),0.8,0,0,0.3),
	con3 = color(dm2((c3ga)(c3ga_point((e3ga)Vu)^c3ga_point((e3ga)(Vu+U-V)))),0.8,0,0,0.3),
	con4 = color(dm2((c3ga)(c3ga_point((e3ga)U)^c3ga_point((e3ga)(Vu+U-V)))),0.8,0,0,0.3),
	con5 = color(dm2((c3ga)(c3ga_point((e3ga)(Uv+Vu-V))^c3ga_point((e3ga)(Vu+U-V)))),0.8,0,0,0.3),
	con6 = color(dm2((c3ga)(c3ga_point((e3ga)(Uv+V-U))^c3ga_point((e3ga)(V)))),0.8,0,0,0.3),
	con7 = color(dm2((c3ga)(c3ga_point((e3ga)(Uv+V-U))^c3ga_point((e3ga)(Uv+Vu-U)))),0.8,0,0,0.3),
	con8 = color(dm2((c3ga)(c3ga_point((e3ga)(Uv+V-U))^c3ga_point((e3ga)(Uv)))),0.8,0,0,0.3),

    };
}
