batch DEMOhomogeneous()
// introduction of homogeneous coordinates
{
     batch init_e3ga(); 
     batch pantilt();
     function factored_bivector();

     init_e3ga();
     prompt("DEMOhomogeneous >> ")
     
     pantilt(1,-1);
     campos =  e2+ 20 e3;

     cmd("label exp0 [5*e1+5*e2] \"\txt{\white{HOMOGENEOUS COORDINATES} \\ Add one dimension to the plane}\" flag_2d flag_px flag_py");

     e = black(e3),
     e_label_loc = e/2 + e1/20;
     cmd("label e_ e_label_loc \"e_{0}\" ");
     dynamic{ plane = no_shade(color( ((c3ga) c3ga_point(e3)^e1^e2^ni),1,1,1,0.3)), };
     suspend;
     remove(e_);
     cmd("label exp0 [5*e1+5*e2] \"\txt{\white{HOMOGENEOUS COORDINATES} \\ A (weighted) point may be represented by a vector.\gp.\gp.}\" flag_2d flag_px flag_py");
     p = e1;
     Pu = e+p,  // Pu: unnormed P when dragged
     dynamic{P: P = (e3ga) (Pu/e.Pu),}; label(P);
     dynamic{p_: p_vector = color((c3ga) vp(1-e3 ni/2,no^((P/(e3.P)).(e1^e2)/(e1^e2))),1,0,0,0.5),}; // drawing p where we want it
     suspend;
     cmd("label exp0 [5*e1+5*e2] \"\txt{\white{HOMOGENEOUS COORDINATES} \\ . . . or any multiple of it.}\" flag_2d flag_px flag_py");
     Pu = 1.2 Pu,
     suspend;
     Pu = 1.2 Pu,
     suspend;
     Pu = magenta(1.5 Pu),
     suspend;

     cmd("label exp0 [5*e1+5*e2] \"\txt{\white{HOMOGENEOUS COORDINATES} \\ A second point Q}\" flag_2d flag_px flag_py");
     p = p; // hide(p)
     q = -e2+e1/2;
     Qu = e+q, 
     dynamic{Q: Q = (e3ga) (Qu/e.Qu),}; label(Q);
     dynamic{q_: q_vector = color((c3ga) vp(1-e3 ni/2,no^((Q/(e3.Q)).(e1^e2)/(e1^e2))),1,0,0,0.5),}; // drawing q where we want it
     suspend;
     Qu = magenta(2 Qu),
     suspend;
     cmd("label exp0 [5*e1+5*e2] \"\txt{\white{HOMOGENEOUS COORDINATES} \\ The line connecting two points is fully represented by the bivector P \op Q}\" flag_2d flag_px flag_py");
     dynamic{ ln = blue((c3ga) (c3ga_point(P)^c3ga_point(Q)^ni)), };
     suspend;

     cld(p_); remove(p_vector);
     cld(q_); remove(q_vector);
     dynamic{bivector: bivector = alpha(factored_bivector(P,Q),0.5),};
     dynamic{PpQ: PpQ = P+Q;}; cmd("label PpQ_ PpQ \"P \op Q\" flag_dynamic");
     suspend;
     dynamic{bivector0: bivector0 = alpha(factored_bivector(P,Q),0.1),};
     dynamic{bivector: bivector = alpha(factored_bivector(P,Q - 0.2 P),0.5),};
     suspend;
     dynamic{bivector: bivector = alpha(factored_bivector(P,Q - 0.4 P),0.5),};
     suspend;
     dynamic{bivector: bivector = alpha(factored_bivector(P,Q - 0.6 P),0.5),};
     suspend;
     dynamic{bivector: bivector = alpha(factored_bivector(P,Q - 0.8 P),0.5),};
     suspend;
     dynamic{bivector: bivector = alpha(factored_bivector(P,Q - P),0.5),};
     cmd("label exp0 [5*e1+5*e2] \"\txt{\white{HOMOGENEOUS COORDINATES} \\ The line connecting two points is fully represented by a bivector \\ P \op Q = P \op (Q-P) = P \op direction}\" flag_2d flag_px flag_py");
     dynamic{bivector1: bivector1 = alpha(factored_bivector(P,Q - P),0.1),};
     dynamic{bivector: bivector = alpha(factored_bivector(P ,Q- P),0.5),};
     suspend;
     dynamic{bivector: bivector = alpha(factored_bivector(0.8 P + 0.2 P^Q/(Q-P),Q-P),0.5),};
     suspend;
     dynamic{bivector: bivector = alpha(factored_bivector(0.6 P + 0.4 P^Q/(Q-P),Q-P),0.5),};
     suspend;
     dynamic{bivector: bivector = alpha(factored_bivector(0.4 P + 0.6 P^Q/(Q-P),Q-P),0.5),};
     suspend;
     dynamic{bivector: bivector = alpha(factored_bivector(0.2 P + 0.8 P^Q/(Q-P),Q-P),0.5),};
     suspend;
     dynamic{bivector: bivector = alpha(factored_bivector(P^Q/(Q-P),Q-P),0.5),};
     suspend;
     cmd("label exp0 [5*e1+5*e2] \"\txt{\white{HOMOGENEOUS COORDINATES} \\ Decompose P \op Q orthogonally: \\ P \op Q = \eqn{\frac{P \op Q}{e \ip (P \op Q)}} \gp \op \gp (e \ip (P \op Q))}\" flag_2d flag_px flag_py");
     suspend;
     cmd("label exp0 [5*e1+5*e2] \"\txt{\white{HOMOGENEOUS COORDINATES} \\ The bivector contains all information: \\ P \op Q = (e + support) \gp direction \\ direction = \eqn{e \ip (P \op Q)}, \gp \gp \gp support = \eqn{\frac{e  \ip (e \op P \op Q)}{e \ip (P \op Q)}  }}\" flag_2d flag_px flag_py");
     dynamic{ support   = blue(( ((P^Q)/(e.(P^Q)))^e)/e),}; label(support);
     dynamic{ direction = blue(e.(P^Q)),}; label(direction);
     dynamic{ bivector2: bivector2 = alpha(factored_bivector(support,direction),0.2), };
     dynamic{ bivector3: bivector3 = alpha(factored_bivector(e,direction),0.2), };
     suspend;

     cld(bivector0); remove(bivector0);
     cld(bivector1); remove(bivector1);
     cld(bivector2); remove(bivector2);
     cld(bivector3); remove(bivector3);
     dynamic{bivector: bivector = dm1(P^Q),};
     cmd("label exp0 [5*e1+5*e2] \"\txt{\white{HOMOGENEOUS COORDINATES} \\ The bivector L contains all information: \\ L = (e + support) \gp direction \\ direction = \eqn{e \ip L}, \gp \gp \gp support = \eqn{\frac{e  \ip (e \op L )}{e \ip L}  }}\" flag_2d flag_px flag_py");
     suspend;

     // BUG: hide() does not work
     Pu = hide(Pu); Qu = hide(Qu);
     label(P," "); P=hide(P); 
     label(Q," "); Q=hide(Q);
     cld(PpQ); remove(PpQ); remove(PpQ_);
     label(no,"L");
     suspend;
     dynamic{ Lplane = color(no^P^Q^ni,0,0,1,0.1), };
     prompt();

}

