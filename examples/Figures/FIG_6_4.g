// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_6_4()
// Created 20070425 LD
// Original title FIGrefdef() 
{
     batch init();
     batch pantilt(); 

     set_window_title("FIG(6,4): Reflecting a vector in a line");

     init(0);
     set_point_size(0);
     pantilt(0.42,-0.92,0);
     campos = 0.77 *e1 + 1.4*e2 + 14*e3;

     a=green(e1), label(a, "\green{\eqn{\bold{a}}}");
     x = 2.52*e1 + 1.82*e2 + 0.52*e3,
     label(x, "\red{\eqn{\bold{x}}}");

     dynamic{scene:
      	rx= color((x^a)/a,0.8,0.2,0.2), label(rx,"\eqn{\bold{(x \op a)/a}}");
     	px= color((x.a)/a,0.8,0.2,0.2), label(px,"\eqn{\bold{(x \ip a)/a}}");
	refx = red(a x /a),
	label(refx,"\eqn{\bold{a \gp x \gp a^{-1}}}");
        con1 = color(dm2(c3ga_point(x)^c3ga_point(refx)),0.8,0,0,0.5), 
	con2 = color(dm2(c3ga_point(x)^c3ga_point(rx)),0.8,0,0,0.5), 
     };
}
