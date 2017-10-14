    // basically GAblock4() with labels
    // LINE INTERSECTS LINE
batch DEMOlineintersect() {
    batch init_e3ga();
    function factored_bivector();

    init_e3ga();
    prompt("DEMOlineintersect >> ");
    dynamic{camori =1;}; // this is a 2-D problem!
    campos = e2+10 e3;
    cprint("");
    cprint("");
    cprint(">> // LINE INTERSECTS LINE");

    cmd("label exp_ [5*e1+5*e2] \"\txt{\white{LINE INTERSECTION}}\" flag_2d flag_px flag_py");
    
    p = blue(e2), u = blue(0.2 e2 + e1),
    cmd("label p_ p \"\blue{p}\" flag_dynamic");
    cmd("label u_ u \"\blue{u}\" flag_dynamic");
    dynamic{pu: pu = blue((c3ga)(c3ga_point(p)^u^ni)),};
    suspend;
    
    q = green(e1+e2), v = green(e2/2 - e1),
    cmd("label q_ q \"\green{q}\" flag_dynamic");
    cmd("label v_ v \"\green{v}\" flag_dynamic");
    dynamic{qv: qv = green((c3ga)(c3ga_point(q)^v^ni)),};
    suspend;

    dynamic{U = color((q ^ v / u ^ v) u, 0,0,1,0.5),};
    label(U,"\blue{U}");
    cmd("label exp_ [5*e1+5*e2] \"\txt{\white{LINE INTERSECTION}} \\ \eqn{U = \frac{q \op v}{u \op v} \gp u \\ V = \frac{p \op u}{v \op u} \gp v} \" flag_2d flag_px flag_py");
    
    dynamic{V = color( (p ^ u / v ^ u) v , 0, 1, 0, 0.5),};
    label(V,"\green{V}");

    dynamic{i = (U + V),}; label(i,"\red{U+V}");
    suspend;

    // dynamic{fBup = color( factored_bivector(u,p),0.5,0,0,0.1), };
    // dynamic{fBvq = color( factored_bivector(v,q),0.5,0,0,0.1), };
    dynamic{fBuv = color( factored_bivector(u,v),0.5,0,0,0.4), };
    dynamic{fBuV = color( factored_bivector(u,V),0.5,0,0,0.2), };
    dynamic{fBvV = color( factored_bivector(v,U),0.5,0,0,0.2), };

    prompt(); // back to the standard prompt
    
}
