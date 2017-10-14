    // related to GAblock3()
    // INTERPOLATION OF ORIENTATIONS
batch DEMOinterpolation() {
    batch init_e3ga();
    function gexp();
    function sLog();
    function unit();
    function factored_bivector(a, b);
    function factored_trivector(a, b, c);
    function GAorbiter();
    
    init_e3ga();
    prompt("DEMOinterpolation >> ");
    cprint("");
    cprint("");

    cprint(">> // INTERPOLATION OF ORIENTATIONS");
    cmd("label exp_ [5*e1+5*e2] \"\txt{\white{INTERPOLATION OF ROTAITIONS} \\ Suppose we have two rotations with rotors RA and RB. \\ How do we smoothly interpolate between them?}\" flag_2d flag_px flag_py");
    
    cprint(">> RA = gexp(-I3 e1 pi/2/2);");  
    RA = 1; //gexp(-::I3 e1 pi/2/2);
    
    cprint(">> RB = gexp(-I3 e2 pi/2/2);");  

    RB = gexp(-::I3 e2 pi/2/2);
    
    cprint(">> Rtot =  RB/RA;");  
    Rtot =  RB/RA;
    suspend;
    
    cprint(">> n = 8; // we rotate in 8 steps");  
    n = 8;
    
    cprint(">> R = gexp(sLog(Rtot)/n),");  
    R = red(exp(sLog(Rtot)/n)),
    
    suspend;

    cprint(">> u = e1+e2-e3;");
    u = e1+e2-e3, label(u),
    
    cprint(">> v = e1+e3;"); 
    v = e1+e3, label(v),
    
    // === initial orientation:
    cprint(">> // The initial orientation: ");
    cprint(">> O[0] = blue( factored_bivector(RA u / RA, RA v / RA) ),");  
    dynamic{O[0] = blue( factored_bivector(RA u / RA, RA v / RA) ),};
    dynamic{RAu: RAu = RA (u+v)/RA; label(RAu,"\eqn{R_{A}[b]}");};
    
    cprint("");
    suspend;
    
    // === final orientation:
    cprint(">> // The final orientation: ");
    cprint(">> O[n] = green( factored_bivector(RB u / RB, RB v / RB) ),");  
    dynamic{O[n] = green( factored_bivector(RB u / RB, RB v / RB) ),};
    dynamic{RBu: RBu = RB (u+v)/RB; label(RBu,"\eqn{R_{B}[b]}");};
    
    cprint("");
    suspend;
    
    cprint(">> // Reorientation axis: ");
    cprint(">> axisR = red( grade(unit(-sLog(R)/I3), 1) ),");
    axisR = red( grade(unit(-sLog(R)/I3), 1) ),
    
    cprint("");
    suspend;
    
    cprint(">> Computing the interpolated orientations: ");
    
    cprint(">> ");
    
    cprint(">> Ri = RA;");
    cprint(">> for (i = 1; i < n; i = i + 1) {");
    cprint(">>     Ri = R Ri;");
    cprint(">>     ui = Ri u / Ri;");
    cprint(">>     vi = Ri v / Ri;");
    cprint(">>     O[i] = factored_bivector(ui, vi);");
    cprint(">> ");
    cprint(">>     // interpolate the color:");
    cprint(">>     c = get_color(O[0]) * (n - i) / n + get_color(O[n]) * i / n;");
    cprint(">>     O[i] = color(O[i], c),");
    cprint(">> }");
    
    cmd("tsmode text");
    cmd("label exp_ [5*e1+5*e2] \"\txt{\white{ROTATION INTERPOLATION}}\" flag_2d flag_px flag_py");
    cmd("tsmode equation");
    cmd("label exp2 [5*e1+25*e2] \"\eqn{R_{\gp i} = exp(\gp log(R_{B}/R_{A}) \gp i/n)} \" flag_2d flag_px flag_py");
    // maybe do this with an animation later on
    dynamic{
    Ri = RA;
    for (i = 1; i < n; i = i + 1) {
        Ri = R Ri;
        ui = Ri u / Ri;
        vi = Ri v / Ri;
        // dynamic{O[i] = factored_bivector(ui, vi);
         // interpolate the color:
	 O[i] = color(factored_bivector(ui,vi), get_color(O[0]) * (n - i) / n + get_color(O[n]) * i / n),
    }
    };
            
    cprint("");
    suspend;
    
    prompt(); // back to the standard prompt
    GAorbiter();
    
    cprint("");
    cprint("End of DEMO sequence.");
}
