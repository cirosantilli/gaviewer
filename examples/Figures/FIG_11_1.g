// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_11_1() {
// introduction of homogeneous coordinates
// Created 20070426 LD
// Original title FIGhomogeneous()
// Bonus figure: interactive version of FIG(11,1)
     batch init(); 
     batch pantilt();
     function factored_bivector();

     set_window_title("FIG(11,1)b:  The extra dimension of the homogeneous representation space [interactive bonus figure]");
     
     init(0);
     pantilt(0,-1.51);
     campos =  e2+ 7 e3;
     psize = 4;

     e = black(e3),
     e_label_loc = 0.7 e + e1/40 ; label(e_label_loc, "\eqn{e_{0}}");

     dynamic{plane: 
     	plane = dm3(no_shade(color( vp(tv(e3-psize/2 (e1+e2)), psize psize no^e1^e2),0.75,0.75,0.75,0.75))), 
     		// draw it as a conformal tangent bivector
     }; 

     pE = e1;
     Pu = (e + 0.54*e1 + -0.14*e2); // these work nicely for demo
     dynamic{P: P = (e3ga) (Pu/e.Pu),}; 
     label(Pu,"\black{\eqn{p}}");
     dynamic{p_: 
     	p_vector = color((c3ga) vp(1-e3 ni/2,no^((P/(e3.P)).(e1^e2)/(e1^e2))),1,0,0,0.75),
		// drawing p where we want it as conformal tangent vector
	p_vector_label = (P+e)/2;
	label(p_vector_label, "\eqn{\bold{p}}");
     }; 
     prompt("similar to FIG(11,1)b: a vector p >> ");
     suspend;
     Pu = magenta(1.5 Pu), 
     prompt("similar to FIG(11,1)b: a homogeneous vector p >> ");
     suspend;
     prompt();
}
