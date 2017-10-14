    // basically GAblock4() with labels
    // LINE CROSSES LINE
batch DEMOlinecross() {
    batch init_e3ga();
    function factored_bivector();
    function factored_trivector();

    init_e3ga();
    prompt("DEMOlinecross >> ");
    cprint("");
    cprint("");
    cprint(">> // LINE CROSSES LINE");

    cmd("label exp_ [5*e1+5*e2] \"\txt{\white{LINE CROSSING}}\" flag_2d flag_px flag_py");
    
    p = blue(e3-e2+e1), u = blue(e1),
    cmd("label p_ p \"\blue{p}\" flag_dynamic");
    cmd("label u_ u \"\blue{u}\" flag_dynamic");
    dynamic{pu: pu = blue((c3ga)(c3ga_point(p)^u^ni)),};
    suspend;
    
    q = green(e3/2+e1+e2), v = green(e2),
    cmd("label q_ q \"\green{q}\" flag_dynamic");
    cmd("label v_ v \"\green{v}\" flag_dynamic");
    dynamic{qv: qv = green((c3ga)(c3ga_point(q)^v^ni)),};
    suspend;

    cmd("label exp_ [5*e1+5*e2] \"\txt{\white{LINE CROSSING}} \\ \eqn{U = \frac{u \op q \op v}{v \op u}\\ V = \frac{v \op p \op u}{u \op v}} \" flag_2d flag_px flag_py");
    dynamic{U = color((u^q^v / v^u), 0,0,1,0.5),};
    label(U,"\blue{U}");
    dynamic{V = color((v^p^u / u^v), 0,0,1,0.5),};
    label(V,"\green{V}");

    dynamic{i = (U - V),}; label(i,"\red{U-V}");
    suspend;

    dynamic{fBuv = color( factored_bivector(u,v),0.5,0,0,0.4), };
    dynamic{fBuV = color( factored_trivector(u,V,v),0.5,0,0,0.2), };
    dynamic{fBvV = color( factored_trivector(u,U,v),0.5,0,0,0.2), };

    // this is a cheat since I use CGA
    dynamic{P = (c3ga)(dual((no.qv)^ni^((u^v)/I3)).pu); C = (no.P) ni (no.P)/2; connect = red(C^(C.(i^ni))/(ni.C)/(ni.C)),};

    prompt(); // back to the standard prompt
    
}
