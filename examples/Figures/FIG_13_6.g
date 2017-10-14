// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_13_6() {
    // INTERPOLATION OF ORIENTATIONS
    // related to GAblock3()
// Created 20070426 LD
// Original title FIGrigidinterpolate() {
    function rLog();
    function unit();
    batch vtrail();
    batch vtrailframe();
    function GAorbiter();
    batch init();

    set_window_title("FIG(13,6): Rigid body motion interpolation");
    
    init(2);
    set_gl_lines(1);
	camori = 9.724068e-001 + 2.225600e-001*e2^e3 + 6.817988e-002*e3^e1 + 1.560469e-002*e1^e2;

    cmd("label exp_ [5*e1+5*e2] \"\txt{\white{INTERPOLATION OF RIGID BODY MOTIONS} \\ Suppose we have a rigid body motion with versor V (given by ratio of lines). \\ Q: How do we smoothly interpolate between it?}\" flag_2d flag_px flag_py");
    
    dynamic{L1: L1 = black(ori(unit(no^e1^ni))), };
    label(L1,"\eqn{L_{1}}");

    x2 = c3ga_point(e2),
    y2 = c3ga_point(e3),
    dynamic{L2: L2 = black(ori(unit(x2^y2^ni))), };
    label(L2,"\eqn{L_{2}}");

    dynamic{L: L = rLog(L2/L1);};
    dynamic{V: V = exp(L/2),};

    A = L1,  // a clear picture when A is the original L1, but feel free to change
    prompt("FIG(13,6) >> ");
    suspend;

    cmd("label exp_ [5*e1+5*e2] \"\txt{\white{INTERPOLATION OF RIGID BODY MOTIONS} \\ Suppose we have a rigid body motion with versor V (given by ratio of lines). \\ Q: How do we smoothly interpolate between it?\\ A: Using exp(log(V)/n)}\" flag_2d flag_px flag_py");
    n = 10; // number of steps in interpolation
    dynamic{Vint: Vint=exp(L/2/n);}

    dynamic{vtrail(Vint,A,10,0),};

    O = c3ga_point(e1-2 e2 - 2 e3); 
    dynamic{vtrailframe(Vint,O,10),}; // probing with a frame; switch off by O=0 (Ooh equals zero)
    
    cmd("label exp_ [5*e1+5*e2] \"\txt{\white{INTERPOLATION OF RIGID BODY MOTIONS} \\ Suppose we have a rigid body motion with versor V (given by ratio of lines). \\ Q: How do we smoothly interpolate between it?\\ A: Using exp(log(V)/n)\\Now manually change A to any element of the conformal model. }\" flag_2d flag_px flag_py");
    prompt();
}

