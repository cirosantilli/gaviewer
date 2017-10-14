       // basically GAblock5()  with labels
    // PROJECTION, REJECTION
batch DEMOproj1() {
   batch init_e3ga();

    init_e3ga();
    cprint("");
    cprint("");
    cprint(">> // PROJECTION, REJECTION");
    
    cprint(">> clf();");  
    
    cmd("label exp1_ [5*e1+5*e2] \"PROJECTION \gp AND \gp REJECTION\" flag_2d flag_px flag_py"); // hack since \text{} does not work
    cmd("label exp2_ [5*e1+25*e2] \"x_{par} = (x \ip A)/A\" flag_2d flag_px flag_py");
    cmd("label exp3_ [5*e1+45*e2] \"x_{parp} = (x \op A)/A\" flag_2d flag_px flag_py");

    cprint(">> x = blue( e1 + e2/2 + e3 ),");
    x = e1 + e2/2 + e3 ,
    cmd("label x_ x \"\red{x}\" flag_dynamic");
    
    cprint(">> A = green( e2 + e3/3 ), // a linear subspace");
    A = green( e2 + e3/3 ),
    cmd("label A_ A \"\green{A}\" flag_dynamic");
    
    prompt("DEMOproj1 >> ");
    cprint("");
    suspend;
    
    
    cprint(">> pxA = green( (x . A) / A ), // the projection of x onto A");
    dynamic{pxA = green( (x . A) / A ),};
    cmd("label pxA_ pxA \"\green{x_{par}}\" flag_dynamic");
    cprint(">> rxA = green( (x ^ A) / A ), // the rejection of x from A");
    dynamic{rxA = green( (x ^ A) / A ),};
    cmd("label rxA_ rxA \"\green{x_{perp}}\" flag_dynamic");
    
    cprint(">> p_plus_r = pxA + rxA; // projection + rejection");
    
    cmd("fgcolor black"); cmd("polygon line1 3 pxA x rxA dynamic dm2"); 

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
    dynamic{B = yellow( e1^A ),}; // A planar subspace (containing A)
    cmd("label B_ B \"\yellow{B}\" flag_dynamic");
    
    cprint("");
    suspend;
    
    cprint(">> pxB = yellow( (x . B) / B ), // the projection of x onto B");
    dynamic{pxB = yellow( (x . B) / B ),};
    cmd("label pxB_ pxB \"\yellow{x_{par}}\" flag_dynamic");
    cprint(">> rxB = yellow( (x ^ B) / BA ), // the rejection of x from B");
    dynamic{rxB = yellow( (x ^ B) / B ),};
    cmd("label rxB_ rxB \"\yellow{x_{perp}}\" flag_dynamic");
    
    cprint(">> p_plus_r2 = pxB + rxB; // projection + rejection");
    
    cprint("cmd(\"polygon line2 3 pxB p_plus_r2 rxB dm2\");");
	cmd("polygon line2 3 pxB x rxB dm2 dynamic");


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
    cprint("End of DEMO sequence.");    
}

