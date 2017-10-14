// inspired by DEMOproj in GABLE
batch DEMOproj() {
    batch init_e3ga();
    function factored_bivector();

    init_e3ga();
    prompt("DEMOproj >> ");

    cprint("");
    cprint("");
    cprint(">> // PROJECTION, REJECTION");
    
    cprint(">> clf();");  
    
    cmd("label exp1_ [5*e1+5*e2] \"\txt{\white{PROJECTION AND REJECTION}}\" flag_2d flag_px flag_py"); 

    x = e1 + e2/2 + e3 , label(x,"\red{x}");
    A = green( e2/2 + e3/3 ), label(A);
    suspend;
    
    
    dynamic{pxA = green( (x . A) / A ),};
    label(pxA,"\eqn{x_{par}}");
    dynamic{rxA = green( (x ^ A) / A ),};
    label(rxA,"\eqn{x_{perp}}");
    cmd("label exp2_ [5*e1+25*e2] \"x_{par} = (x \ip A)/A\" flag_2d flag_px flag_py");
    cmd("label exp3_ [5*e1+45*e2] \"x_{perp} = (x \op A)/A\" flag_2d flag_px flag_py");
    
    cmd("fgcolor black"); cmd("polygon line1 3 pxA x rxA dynamic dm2"); 

    suspend;
    
    dynamic{fB: fB = alpha(dm3(factored_bivector(x,A)),0.6),};
    suspend;
    dynamic{xn: xn = 0.8 x + 0.2 rxA;};
    dynamic{fB1: fB1 = alpha(dm3(factored_bivector(xn,A)),0.2),};
    dynamic{fBloc: fBloc = (A+xn)/2;};
    label(fBloc,"x \op A");
    suspend;
    dynamic{xn: xn = 0.6 x + 0.4 rxA;};
    suspend;
    dynamic{xn: xn = 0.4 x + 0.6 rxA;};
    suspend;
    dynamic{xn: xn = 0.2 x + 0.8 rxA;};
    suspend;
    dynamic{xn: xn = rxA;};
    suspend;
    cmd("label exp4_ [5*e1+65*e2] \"\blue{x_{perp} \gp A = x_{perp} \ip A + x_{perp} \op A = x_{perp} \op A = x \op A}\" flag_2d flag_px flag_py");
    suspend;
    // The same applies to a bivector A, but not all drawmethods exist.
    cld(fB); cld(fB1); cld(fBloc); 
    remove(fB); remove(fB1); remove(fBloc); remove(fBloc_label);
    A = ori(e1^(e2-e3)),

    prompt(); 

}

