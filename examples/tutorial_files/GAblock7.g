batch init_gable();

    // GAblock7()
    // MEET AND JOIN DECOMPOSED
batch GAblock7() {
    init_gable();
    clc();
    
    cprint("");
    cprint("");
    cprint(">> // MEET AND JOIN DECOMPOSED ");
    
    cprint(">> clf();");  
    
    clf(); 

    cprint(">> A = e2^(e1+e3);");
    A = e2^(e1+e3);
    cprint(">> B = e1^(e2+e3/2);");
    B = e1^(e2+e3/2);
    cprint(">> M = black( 0.5 A & B ),");
    M = black( 0.5 A & B ),      // scale with 0.5 for clearer drawings
    
    cprint(">> // draw A decomposed:");
    cprint(">> fA = blue( factored_bivector(A / M, M) )");
    fA = blue( factored_bivector(A / M, M) ),
    cprint(">> // draw B decomposed:");
    cprint(">> fB = green( factored_bivector(M,1/M * B) )");    
    fB = green( factored_bivector(M,1/M * B) ),

    prompt("GAblock >> ");
    cprint("");
    suspend;

    cprint(">> // draw projection decomposed:");
    cprint(">> fP = cyan( factored_bivector(project(A, B) / M, M) )");    
    fP = cyan( factored_bivector(project(A, B) / M, M) ),
    cprint(">> // draw rejection decomposed:");
    cprint(">> fR = magenta( factored_bivector((A - project(A, B)) / M, M) )");
    fR = magenta( factored_bivector((A - project(A, B)) / M, M) ),
    
    prompt("GAblock >> ");
    cprint("");
    suspend;

    cprint(">> // draw the join:");
    cprint(">> J = yellow(A | B)");
    J = yellow(A | B),


    prompt(); // back to the standard prompt    
    cprint("");
    cprint("End of GAblock sequence.");    
}


