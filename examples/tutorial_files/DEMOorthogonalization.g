    // similar to GAblock1()
    // ORTHOGONALIZATION
batch DEMOorthogonalization() {
    function GAorbiter(); // just a function declaration
    function init_e3ga();
    function factored_bivector();
    function factored_trivector();

    init_e3ga();
    cprint("");
    cprint("");
    cprint("// ORTHOGONALIZATION");
    
    cprint(">> clf();");
    default_model(e3ga);
    
    cmd("label exp_ [5*e1+5*e2] \" \txt{\white{ORTHOGONALIZATION} \\ The original vectors . . .}\" flag_2d flag_px flag_py");
    cprint(">> // the original vectors:");
    
    cprint(">> u = green( e1+e2 ),");
    u = green( e1+e2 ), 
    label(u,"\green{u}");
    
    cprint("v = green(0.3*e1 + 0.6*e2 - 0.8*e3),");
    v = green(0.3*e1 + 0.6*e2 - 0.8*e3),
    label(v,"\green{v}");
    
    cprint(">> w = green( e1 -0.2*e2 + 0.5*e3 ),");
    w = green(e1 -0.2*e2 + 0.5*e3),
    label(w,"\green{w}");
    
    prompt("DEMOorthogonalization >> ");
    cprint("");
    suspend;
    
    cmd("label exp_ [5*e1+5*e2] \"\txt{\white{ORTHOGONALIZATION} \\ . . . and orthogonalized.}\" flag_2d flag_px flag_py");
    cprint(">> // and orthogonalized:");
    cprint(">> u_p = red( u ),");
    u = hide(u);
    dynamic{u_p: u_p = red( u ),};
    label(u_p,"u_{p}");
    cmd("label lala [5*e1+50*e2] \"\eqn{u_{p} = u}\" flag_2d flag_px flag_py");
    suspend;

    cprint(">> v_p = red( (v^u_p)/u_p ),");
    dynamic{uv_p: uv_p = alpha(red( factored_bivector(v,u_p) ),0.2), };
    suspend;
    dynamic{v_p: v_p = red( (v^u_p)/u_p ),};
    dynamic{uv_p: uv_p = alpha(red( factored_bivector(v_p,u_p) ),0.2), };
    label(v_p,"v_{p}");
    cmd("label lalala [5*e1+70.0*e2] \"\eqn{v_{p} = (v \op u_{p})/u_{p}}\" flag_2d flag_px flag_py");
    suspend;

    cprint(">> w_p = red( (w^u_p^v_p)/(u_p^v_p) ),");
    dynamic{uvw_p: uvw_p = alpha(red( factored_trivector(v_p,u_p,w) ),0.2), };
    suspend;
    dynamic{w_p: w_p = red( (w^u_p^v_p)/(u_p^v_p) ),};
    dynamic{uvw_p: uvw_p = alpha(red( factored_trivector(v_p,u_p,w_p) ),0.2), };
    label(w_p,"w_{p}");
    cmd("label lalalala [5*e1+90.0*e2] \"\eqn{w_{p} = (w \op u_{p} \op v_{p})/(u_{p} \op v_{p})}\" flag_2d flag_px flag_py");
    suspend;

    prompt(); // back to the standard prompt
    // GAorbiter();
    
    cprint("End of DEMOorthogonalization");
}
