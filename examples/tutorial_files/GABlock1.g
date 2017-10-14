function GAorbiter(); // just a function declaration
batch init_gable();

    // GAblock1()
    // ORTHOGONALIZATION
batch GAblock1() {
    init_gable();
    clc();
    
    cprint("");
    cprint("");
    cprint("// ORTHOGONALIZATION");
    
    cprint(">> clf();");
    clf();
    
    cprint(">> // the original vectors:");
    
    cprint(">> u = green( e1+e2 ),");
    u = green( e1+e2 ),
    
    cprint(">> v = green(0.3*e1 + 0.6*e2 - 0.8*e3),");
    v = green(0.3*e1 + 0.6*e2 - 0.8*e3),
    
    cprint(">> w = green( e1 -0.2*e2 + 0.5*e3 ),");
    w = green(e1 -0.2*e2 + 0.5*e3),
    
    prompt("GAblock >> ");
    cprint("");
    suspend;
    
    cprint(">> // and orthognalized:");
    cprint(">> u_p = red( u ),");
    u_p = red( u ),
    
    cprint(">> v_p = red( (v^u_p)/u_p ),");
    v_p = red( (v^u_p)/u_p ),
    
    cprint(">> w_p = red( (w^u_p^v_p)/(u_p^v_p) ),");
    w_p = red( (w^u_p^v_p)/(u_p^v_p) ),
    
    u = u; // hide u....
    
    prompt("GAblock >> ");
    cprint("");
    suspend;
    
    prompt(); // back to the standard prompt
    GAorbiter();
    
    cprint("");
    cprint("End of GAblock sequence.");
}
