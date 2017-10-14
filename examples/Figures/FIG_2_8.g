// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_2_8()
// Created 20070425 LD
// Original title FIGlineintersect() 
{
    batch init();
    function factored_bivector();

	set_window_title("FIG(2,8):  Intersecting lines in the plane [2D]");

    init(0);

    dynamic{camori =1;}; // this is a 2-D problem!
    campos = e2+10 e3;

    f = 1.1; // scale factor for labels, related to image size
    lo = 0.15 e1; // slide to the left for better positining

    p = blue(0.5 (-1.5 e1 + 3.2 e2)), 		
    u = blue((0.2 e2 + e1)),	
    label(u,"\blue{\eqn{\bold{u}}}");
    dynamic{pu: 
    	pu = blue((c3ga)(c3ga_point(p)^u^ni)),
    };
    
    q = green(0.8 (2.7 e1+ 1.7 e2)), v = green(e2/2 - e1),
    dynamic{qv: 
    	lv = v-lo; label(lv,"\green{\eqn{\bold{v}}}");
    	qv = green((c3ga)(c3ga_point(q)^v^ni)),
    };

    dynamic{scene:
    	lp = f p-lo/2; label(lp,"\blue{\eqn{\bold{p}}}");
    	lq = f q-lo; label(lq,"\green{\eqn{\bold{q}}}");
	lL = lp+u/2; label(lL,"\blue{\eqn{L}}");
	lM = lq+v/2; label(lM,"\green{\eqn{M}}");

    	// Uorg = color(factored_bivector(p,u), 0,0,1,0.2),
    	// lUorg = 0.6 (p+u); label(lUorg,"\blue{\eqn{\bold{U}}}");
    	V = red( (p ^ u / v ^ u) v ),
	lV = f(V-lo); label(lV,"\red{\eqn{\bold{\frac{p \op u}{v \op u}\gp v}}}");

    
    	// Vorg = color(factored_bivector(q,v), 0,1,0,0.2),
    	// lVorg = 0.6(q+v)-lo; label(lVorg,"\green{\eqn{\bold{V}}}");
    	U = red((q ^ v / u ^ v) u),
	lU = U; label(U,"\red{\eqn{\bold{\frac{q \op v}{u \op v}\gp u}}}");

    	i = (U + V), 
	li = f i-lo; label(li,"\red{\bold{x}}");

    // dynamic{fBup = color( factored_bivector(u,p),0.5,0,0,0.1), };
    // dynamic{fBvq = color( factored_bivector(v,q),0.5,0,0,0.1), };
    	fBuv = color( dm3(factored_bivector(u,v)),0.5,0.5,0.5,1),
	luv = 0.6(u+v)-lo; label(luv,"\black{\eqn{\bold{u \op v}}}");
    	fBuV = color( factored_bivector(u,V),0,0,1,0.3), 
    	lBuV = 0.7 (U+v); label(lBuV,"\green{\eqn{\bold{V = q \op v}}}");
    	fBvU = color( factored_bivector(v,U),0,1,0,0.3),
    	lBvU = 0.7(V+u)-2 lo; label(lBvU,"\blue{\eqn{\bold{U = p \op u}}}");

    };
    cprint("INTERACTION: p, u, q, v");
}
