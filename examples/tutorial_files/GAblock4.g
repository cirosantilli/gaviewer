batch init_gable();
function line();
    // GAblock4()
    // LINE INTERSECTS LINE
batch GAblock4() {
    init_gable();
    clc();

    cprint("");
    cprint("");
    cprint(">> // LINE INTERSECTS LINE");
    
    cprint(">> clf();");  
    
    clf(); 
    
    cprint(">> p = e2, u = 0.2 e2 + e1;");
    p = e2, u = 0.2 e2 + e1;
    
    cprint(">> q = e1, v = e2 - 2 e1;");
    q = e1, v = e2 - 2 e1;
    
    cprint(">> p1 = p - 2u; p2 = p + 2u;");
    p1 = p - 2u; p2 = p + 2u;
    
    cprint(">> line1 = blue(line(p1, p2))");
    line1 = blue(line(p1, p2)),
    
    cprint(">> ");
    q1 = q - 2v; q2 = q + 2v;
    
    cprint(">> line1 = green(line(q1, q2))");
    line2 = green(line(q1, q2)),
    
    // set foreground color back to it's default red:
    //cprint(">> cmd(\"fgcolor red\");");
    //cmd("fgcolor red"); 
    
    // set prompt and suspend execution
    prompt("Refer to the tutorial before continuing >> ");
    cprint("");
    suspend;

    cprint(">> U = magenta( (q ^ v / u ^ v) u ),"); 
    U = magenta( (q ^ v / u ^ v) u ),
    
    cprint(">> V = magenta( (p ^ u / v ^ u) v ),"); 
    V = magenta( (p ^ u / v ^ u) v ),
    
    cprint(">> fgcolor i = U + V,");     
    i = U + V,

    prompt(); // back to the standard prompt
    
    cprint("");
    cprint("End of GAblock sequence.");
}
