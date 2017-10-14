batch init_gable();
function unit(X);

    // GAblock2()
    // ROTATION EXERCISE
batch GAblock2() {
    init_gable();
    clc();
    
    cprint("");
    cprint("");
    cprint(">> // ROTATION EXERCISE");
    
    cprint(">> clf();");
    clf(); 
    
    cprint(">> R1 = exp(-I3 e1 pi/2/2);");
    R1 = exp(-I3 e1 pi/2/2);
    
    
    cprint(">> R2 = exp(-I3 e2 pi/2/2);");
    R2 = exp(-I3 e2 pi/2/2);
    
    cprint(">> R = R2 R1,");
    R = R2 R1,
    
    cprint(">> // The objects and the rotor: ");
    
    
    cprint(">> a = blue( e1 + e2 ),");
    a = blue( e1 + e2 ),
    
    cprint(">> Ra = magenta( R a / R ),");
    Ra = magenta( R a / R ),
    
    cprint(">> RRa = red( R Ra / R ),");
    RRa = red( R Ra / R ),
    
    prompt("GAblock >> ");
    cprint("");
    suspend;
    
    cprint(">> // The axis of rotation: ");
    
    cprint(">> axisR = green( grade(unit(-(sLog(R))/I3 ), 1) ),");
    axisR = green( grade(unit(-(sLog(R))/I3 ), 1) ),
    
    prompt(); // back to the standard prompt
    
    cprint("");
    cprint("End of GAblock sequence.");
}
