    // basically GAblock7() with labels
    // MEET AND JOIN DECOMPOSED
batch DEMOmeet1() {
    batch init_e3ga();
    function factored_bivector();

    init_e3ga();

    cprint("");
    cprint("");
    cprint(">> // MEET AND JOIN DECOMPOSED ");
    cmd("label exp1_ [5*e1+5*e2] \"\txt{MEET  AND JOIN DECOMPOSED}\" flag_2d flag_px flag_py"); // why doesn't this work?
    
    cprint(">> clf();");  
    
    clf(); 

    cprint(">> A = e2^(e1+e3)/2;");
    A = e2^(e1+e3)/2;
    cprint(">> B = e1^(e2+e3/2)/2;");
    B = e1^(e2+e3/2)/2;
    cprint(">> M = black( A & B ),");
    dynamic{M = black( A & B ),};      // WHY? scale with 0.5 for clearer drawings
    dynamic{cmd("label M_ M \"\black{M}\" flag_dynamic");};
    
    cprint(">> // draw A decomposed:");
    cprint(">> fA = blue( factored_bivector(A / M, M) )");
    dynamic{fA = blue( factored_bivector(A / M, M) ),};
    dynamic{fAM = hide(A/M); cmd("label fA_ fAM \"\blue{A}\" flag_dynamic");};
    // why doesn't it hide it by itself?
    cprint(">> // draw B decomposed:");
    cprint(">> fB = green( factored_bivector(M,1/M * B) )");    
    dynamic{fB = green( factored_bivector(M,1/M * B) ),};
    dynamic{fBM = hide(1/M*B); cmd("label fB_ fBM \"\green{B}\" flag_dynamic");};

    prompt("GAblock7 >> ");
    cprint("");
    suspend;

    cprint(">> // draw projection decomposed:");
    cprint(">> fP = cyan( factored_bivector(project(A, B) / M, M) )");    
    dynamic{fP = cyan( factored_bivector(project(A,B)/M, M) ),};
    cprint(">> // draw rejection decomposed:");
    dynamic{fpAB = hide(project(A, B) / M); cmd("label fpAB_ fpAB \"\cyan{proj}\" flag_dynamic");};
    cprint(">> fR = magenta( factored_bivector((A - project(A, B)) / M, M) )");
    dynamic{fR = magenta( factored_bivector( (A - project(A, B)) / M , M) ),};
    dynamic{frAB = hide((A - project(A, B)) / M); cmd("label frAB_ frAB \"\magenta{rej}\" flag_dynamic");};
    
    prompt("GAblock >> ");
    cprint("");
    suspend;

    cprint(">> // draw the join:");
    cprint(">> J = yellow(A | B)");
    dynamic{J = yellow(A | B),};

    prompt(); // back to the standard prompt    
    cprint("");
    cprint("End of GAblock sequence.");    
    cprint("You can now redefine A and B by hand to experiment");
    cprint("For instance: A = 3 e1^e3;  <-- end with semicolon!");
}


