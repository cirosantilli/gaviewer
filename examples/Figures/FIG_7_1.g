// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_7_1() {
// Created 20070425 LD
// Original title FIGrefdefs() 
     batch init();
     function factored_bivector();
     batch pantilt(); 

	set_window_title("FIG(7,1):  Line and plane reflection");

     init(0);
     set_point_size(0);
     pantilt(0.42,-0.50,0); 
     campos = -1.400000e-001*e1 + 1.960000e-001*e2 + 1.400000e+001*e3;

     a=yellow(e1), label(a, "\eqn{\bold{a}}");
     x = 2.52*e1 + 1.82*e2 + 0.52*e3,
     label(x, "\eqn{\bold{x}}");

     dynamic{scene:
      	rx= color((x^a)/a,0.8,0.2,0.2),  
	mrx = -rx; label(mrx,"\bold{A}");
     	px= color((x.a)/a,0.8,0.2,0.2), label(px,"\eqn{\bold{(x \ip a)/a}}");
	refx = red(a x /a),
	prefx = -refx,
	label(refx,"\eqn{\bold{a \gp x \gp a^{-1}}}");
        con1 = color(dm2(c3ga_point(x)^c3ga_point(refx)),0.8,0,0,0.5), 
	con2 = color(dm2(c3ga_point(x)^c3ga_point(prefx)),0.8,0,0,0.5), 
	label(prefx,"\eqn{\bold{-a \gp x \gp a^{-1}}}");
	plane1 = no_shade(color(20 a/I3, 1,1,0,0.6)),
     };
}    

