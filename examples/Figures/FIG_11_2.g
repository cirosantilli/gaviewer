// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_11_2() {
// introduction of homogeneous coordinates
// Created 20070426 LD
// Original title FIGhomogeneous()
// Creates figire FIGhomogeneous1,2,3
     batch init(); 
     batch pantilt();
     function factored_bivector();

     set_window_title("FIG(11,2)abc:  Representing offset subspaces in R^{n+1} [static figure]");

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
     P = (e + 0.54*e1 + -0.14*e2); // these work nicely for demo
     Q = (e+ 1.07*e1 + -1.21*e2); // these work nicely for demo
     dynamic{P: P = (e3ga) (P/e.P),}; 
     label(P,"\black{\eqn{p}}");
     dynamic{Q: Q = (e3ga) (Q/e.Q),};
     label(Q,"\black{\eqn{q}}");
     dynamic{ ln = blue((c3ga) (c3ga_point(P)^c3ga_point(Q)^ni)), };
     prompt("FIG(11,2)a >> ");

     dynamic{bivector: 
     	bivector = dm3(alpha(factored_bivector(P,Q),1.0)),
     };
     dynamic{PpQ: PpQ = P+Q;}; label(PpQ, "\black{\eqn{p \op q}}");
     suspend;

     cld(PpQ); remove(PpQ_label);
     dynamic{bivector: 
     	bivector = dm3(alpha(factored_bivector(P,Q-P),0.75)),
     };
     dynamic{direction: 
     	direction = blue(e.(P^Q)), 
	label(direction,"\eqn{\bold{a}}");
     };
     prompt("FIG(11,2)b >> ");
     suspend;

     dynamic{bivector: 
     	bivector = dm3(alpha(factored_bivector(P^Q/(Q-P),Q-P),0.75)),
     };
     prompt("FIG(11,2)b to c >> ");
     suspend;

     dynamic{support:   
     	support   = blue(( ((P^Q)/(e.(P^Q)))^e)/e), 
	support_loc = support +e/10; label(support_loc,"\eqn{\bold{d}}");
     	bivector2 = alpha(factored_bivector(support,direction),0.2), 
     	bivector3 = alpha(factored_bivector(e,direction),0.2), 
     };
     prompt("FIG(11,2)c >> ");
     suspend;
     prompt();
}

