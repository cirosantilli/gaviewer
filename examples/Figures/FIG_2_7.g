// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_2_7()
// Created 20070425 LD
// Original title FIGlineeq() (basically GAblock4() with labels)
// Creates FIGeqn
{
    batch init();
    function factored_bivector();

    set_window_title("FIG(2,7):  Solving linear equations with bivectors [2D]");
    init(0);

    dynamic{camori =1;}; // this is a 2-D problem!
    campos =  7.920000e-001*e1 + 1.441000e+000*e2 + 1.100000e+001*e3;

    f = 1.1; // scale factor for labels, related to image size
    lo = 0.15 e1; // slide to the left for better positining
    set_point_size(0);

    x = 2 e1+2.5 e2,
    a =  blue((2 e1)),	
    b = green(-1.4 e1+1.2 e2),

    
    dynamic{scene:
        label(a,"\blue{\eqn{\bold{a}}}");
        lb = b-lo; label(lb,"\green{\eqn{\bold{b}}}");
	lx = f x-lo; label(lx,"\red{\bold{x}}");

    	A = red((x ^ b / a ^ b) a),
	lA = A; label(lA,"\red{\eqn{\bold{\frac{x \op b}{a \op b}\gp a}}}");
    	B = red( (x ^ a / b ^ a) b ),
	lB = f(B-2 lo); label(lB,"\red{\eqn{\bold{\frac{x \op a}{b \op a}\gp b}}}");
    	fBuv = color( dm3(factored_bivector(a,b)),0.5,0.5,0.5,0.99),
	luv = 0.6(a+b)-lo; label(luv,"\black{\eqn{\bold{a \op b}}}");
    	fBuV = color( factored_bivector(a,B),0,0,1,0.4), 
    	fBuV1 = color( factored_bivector(a,x),0,0,1,0.2), 
    	lBuV = 0.7 (A+b); label(lBuV,"\green{\eqn{\bold{x \op b}}}");
    	lBuV1 = 0.6 (x+b); label(lBuV1,"\green{\eqn{\bold{x \op b}}}");
    	fBvU = color( factored_bivector(b,A),0,1,0,0.4),
    	fBvU1 = color( factored_bivector(b,x),0,1,0,0.2),
    	lBvU = 0.7(B+a)-2 lo; label(lBvU,"\blue{\eqn{\bold{x \op a}}}");
    	lBvU1 = 0.6(x+a)-2 lo; label(lBvU1,"\blue{\eqn{\bold{x \op a}}}");
	con1 = green(dm2(c3ga_point(A)^c3ga_point(x))),
	con2 = blue(dm2(c3ga_point(B)^c3ga_point(x))),
    };

    cprint("INTERACTIVE: drag a or b or x"); 
    prompt(); 
    
}
