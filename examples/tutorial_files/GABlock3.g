batch init_gable();
function unit(X);
function sLog(X);
function factored_bivector(a, b);
function factored_trivector(a, b, c);
function GAorbiter();

    // GAblock3()
    // INTERPOLATION OF ORIENTATIONS
batch GAblock3() {
    init_gable();
    clc();
    
    
    cprint("");
    cprint("");
    cprint(">> // INTERPOLATION OF ORIENTATIONS");
    
    cprint(">> clf();");  
    clf(); 
    
    cprint(">> RA = exp(-I3 e1 pi/2/2);");  
    RA = exp(-I3 e1 pi/2/2);
    
    cprint(">> RB = exp(-I3 e2 pi/2/2);");  
    RB = exp(-I3 e2 pi/2/2);
    
    cprint(">> Rtot =  RB/RA;");  
    Rtot =  RB/RA;
    
    cprint(">> n = 8; // we rotate in 8 steps");  
    n = 8;
    
    cprint(">> R = exp(sLog(Rtot)/n),");  
    R = exp(sLog(Rtot)/n),
    
    // set prompt and suspend execution
    prompt("Refer to the tutorial before continuing >> ");
    cprint("");
    suspend;

    cprint(">> u = e1+e2-e3;");
    u = e1+e2-e3;
    
    cprint(">> v = e1+e3;");
    v = e1+e3;
    
    // === initial orientation:
    cprint(">> // The initial orientation: ");
    cprint(">> O[0] = blue( factored_bivector(RA u / RA, RA v / RA) ),");  
    O[0] = blue( factored_bivector(RA u / RA, RA v / RA) ),
    
    prompt("GAblock >> ");
    cprint("");
    suspend;
    
    // === final orientation:
    cprint(">> // The final orientation: ");
    cprint(">> O[n] = green( factored_bivector(RB u / RB, RB v / RB) ),");  
    O[n] = green( factored_bivector(RB u / RB, RB v / RB) ),
    
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
    
    // maybe do this with an animation later on
    Ri = RA;
    for (i = 1; i < n; i = i + 1) {
        Ri = R Ri;
        ui = Ri u / Ri;
        vi = Ri v / Ri;
        O[i] = factored_bivector(ui, vi);
        
         // interpolate the color:
         c = get_color(O[0]) * (n - i) / n + get_color(O[n]) * i / n;
         O[i] = color(O[i], c),
    }
            
    cprint("");
    suspend;
    
    prompt(); // back to the standard prompt
    GAorbiter();
    
    cprint("");
    cprint("End of GAblock sequence.");
}