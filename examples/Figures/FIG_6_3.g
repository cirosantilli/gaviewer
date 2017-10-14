// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_6_3()
// Clear 20070425 LD
// Original title FIGprojrej() {
// generate FIGprojrej
     {
     batch init();
     function factored_bivector();
     batch pantilt(); 

     set_window_title("FIG(6,3): Projection and rejection of a vector");

     init(0);
     set_point_size(0);
     a=green(e1), label(a, "\green{\eqn{\bold{a}}}");
     x = 2.52*e1 + 1.82*e2 + 0.52*e3,
     label(x, "\red{\eqn{\bold{x}}}");
     grey_canvas(1);

	pantilt(0.42,-0.92,0);
	campos = 0.77 *e1 + 1.4*e2 + 14*e3;

     dynamic{scene:
     	bv1 = alpha(factored_bivector(x,a),0.3),
     	bv2 = alpha(factored_bivector((x^a)/a,a),0.5),
      	rx= color((x^a)/a,0.8,0,0), label(rx,"\eqn{\bold{(x \op a)/a}}");
     	px= color((x.a)/a,0.8,0,0), label(px,"\eqn{\bold{(x \ip a)/a}}");
        con1 = color(dm2(c3ga_point(x)^c3ga_point(px)),0.8,0,0,0.5), 
	con2 = color(dm2(c3ga_point(x)^c3ga_point(rx)),0.8,0,0,0.5), 
     	lbv2 = x/2+a/4;
     	label(lbv2, "\eqn{\bold{\blue{x \op a}}}");
     };
}
