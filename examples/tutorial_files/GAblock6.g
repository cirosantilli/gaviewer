batch init_gable();

    // GAblock6()
    // MEET, JOIN 
batch GAblock6() {
    init_gable();
    clc();
    
    cprint("");
    cprint("");
    cprint(">> // MEET, JOIN ");
    
    cprint(">> clf();");  
    
    clf(); 

    cprint(">> A = blue( e2 ^ (e1 + e3) ),");
    A = blue( e2 ^ (e1 + e3) ),
    cprint(">> B = green( e1 ^ (e2 + e3 / 3) ),");
    B = green( e1 ^ (e2 + e3 / 3) ),
    
    prompt("GAblock >> ");
    cprint("");
    suspend;

    cprint(">> cAB = A . B,");
    cAB = A . B,
    
    cprint(">> pAB = cyan( cAB / B ),");
    pAB = cyan( cAB / B ),
    
    cprint(">> rAB = magenta( A - pAB ),");
    rAB = magenta( A - pAB ),

    prompt(); // back to the standard prompt    
    cprint("");
    cprint("End of GAblock sequence.");    
}

