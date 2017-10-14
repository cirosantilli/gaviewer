batch init_gable();

    // GAblock5()
    // PROJECTION, REJECTION
batch GAblock5() {
    init_gable();
    clc();
    
    cprint("");
    cprint("");
    cprint(">> // PROJECTION, REJECTION");
    
    cprint(">> clf();");  
    
    clf();

    cprint(">> x = blue( e1 + e2/2 + e3 ),");
    x = blue( e1 + e2/2 + e3 ),
    
    cprint(">> A = green( e2 + e3/3 ), // a linear subspace");
    A = green( e2 + e3/3 ),
    
    prompt("GAblock >> ");
    cprint("");
    suspend;
    
    
    cprint(">> pxA = magenta( (x . A) / A ), // the projection of x onto A");
    pxA = magenta( (x . A) / A ),
    cprint(">> rxA = magenta( (x ^ A) / A ), // the rejection of x from A");
    rxA = magenta( (x ^ A) / A ),
    
    cprint(">> p_plus_r = pxA + rxA; // projection + rejection");
    p_plus_r = pxA + rxA;
    
    cmd("fgcolor black");
    cmd("polygon line1 3 pxA p_plus_r rxA dm2");

    cprint("");
    suspend;
    
    cprint(">> distxA = norm(rxA),");
    distxA = norm(rxA),
    cprint(">> tanglexA = rxA/pxA;");
    tanglexA = rxA/pxA;
    print(tanglexA);
    cprint(">> anglexA = atan(norm(tanglexA))*180/pi,");
    anglexA = atan(norm(tanglexA))*180/pi,
    
    cprint("");
    suspend;
    
    cprint(">> B = yellow( e1^A ), // A planar subspace (containing A)");
    B = yellow( e1^A ), // A planar subspace (containing A)
    
    cprint("");
    suspend;
    
    cprint(">> pxB = magenta( (x . B) / B ), // the projection of x onto B");
    pxB = red( (x . B) / B ),
    cprint(">> rxB = magenta( (x ^ B) / BA ), // the rejection of x from B");
    rxB = red( (x ^ B) / B ),
    
    cprint(">> p_plus_r2 = pxB + rxB; // projection + rejection");
    p_plus_r2 = pxB + rxB;
    
    cprint("cmd(\"polygon line2 3 pxB p_plus_r2 rxB dm2\");");
    cmd("polygon line2 3 pxB p_plus_r2 rxB dm2");    


    cprint("");
    suspend;
    
    cprint(">> distxB = norm(rxB),");
    distxB = norm(rxB),
    cprint(">> tanglexB = rxB/pxB;");
    tanglexB = rxB/pxB;
    print(tanglexB);
    cprint(">> anglexB = atan(norm(tanglexB))*180/pi,");
    anglexB = atan(norm(tanglexB))*180/pi,

    prompt(); // back to the standard prompt    
    cprint("");
    cprint("End of GAblock sequence.");    
}

