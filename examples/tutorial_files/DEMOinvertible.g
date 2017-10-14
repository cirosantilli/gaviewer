batch init_e3ga();
function inner();
function factored_bivector();
function c3ga_point();
batch GAorbiter();

// demonstration of invertibility of geometric product
batch DEMOinvertible() {

     init_e3ga();
     prompt("DEMOinvertible >>");

     camori = 1 + 0.1*e2^e3 + -0.1*e3^e1; 
     campos = 1.2*e2 + 22*e3;


     a=green(e1), 
     x = 2*e1+e2; 
     dynamic{ip:ip = inner(x,a);};
     cmd("label a_ a \"\green{\eqn{a}}\" flag_dynamic");
     cmd("label exp1_ [5*e1+5*e2] \"\white{NON-INVERTIBILITY \gp OF \gp INNER \gp PRODUCT}\" flag_2d flag_px flag_py");
     cmd("label exp2_ [5*e1+25*e2] \"Given \gp \green{\eqn{a}} \gp and \gp \yellow{\eqn{x \ip a}} \gp, \gp what \gp is \gp \red{\eqn{x}}?\" flag_2d flag_px flag_py");
     suspend;
     dynamic{plane: plane = color((c3ga) (a + ip ni),1,1,0,1),};
     dynamic{plane_label_loc: plane_label_loc = (x.a)/a - (x^a)/a;};
     cmd("label plane_ plane_label_loc \"\eqn{\yellow{x \ip a - plane}}\" flag_dynamic");
     cmd("label exp3_ [5*e1+45*e2] \"... somewhere \gp in \gp the \gp \yellow{\eqn{a \ip x-plane}}\" flag_2d flag_px flag_py");
     GAorbiter(10,2); 
     suspend;
     plane = plane;  plane_ = 0; // hide plane and its label // DO THIS
     cmd("label exp1_ [5*e1+5*e2] \"\white{NON-INVERTIBILITY \gp OF \gp OUTER \gp PRODUCT}\" flag_2d flag_px flag_py");
     cmd("label exp2_ [5*e1+25*e2] \"Given \gp \green{\eqn{a}} \gp and \gp \blue{\eqn{x \op a}} \gp, \gp what \gp is \gp \red{\eqn{x}}?\" flag_2d flag_px flag_py");
     cmd("label exp3_ [5*e1+45*e2] \" \" flag_2d flag_px flag_py");
     dynamic{bv2: bv2 = alpha(factored_bivector(x-2 a,a),0.3),};
     dynamic{label_bv2_loc: label_bv2_loc = (x-a)/2;};
     cmd("label bv2_ label_bv2_loc \"\eqn{\blue{x \op a}}\" flag_dynamic");
     suspend;
     dynamic{bv1: bv1 = alpha(factored_bivector(x,a),0.3),};
     dynamic{bv2: bv2 = alpha(factored_bivector(x-2 a,a),0.3),};
     dynamic{bv3: bv3 = alpha(factored_bivector(x-4 a,a),0.3),};
     dynamic{ln: ln = blue((c3ga)(c3ga_point(x)^a^ni)),};
     dynamic{line_label_loc: line_label_loc = -(x.a)/a+(x^a)/a;};
     cmd("label line_ line_label_loc \"\blue{\eqn{x \op a - ln}}\" flag_dynamic");
     cmd("label exp3_ [5*e1+45*e2] \"... somewhere \gp on \gp the \gp \blue{\eqn{x \op a-ln}}\" flag_2d flag_px flag_py");


     suspend;
     cmd("label exp1_ [5*e1+5*e2] \"\white{INVERTIBILITY \gp OF \gp GEOMETRIC \gp PRODUCT}\" flag_2d flag_px flag_py");
     cmd("label exp2_ [5*e1+25*e2] \"Now \gp combine \gp in \gp the \gp geometric \gp product\" flag_2d flag_px flag_py");
     cmd("label exp3_ [5*e1+45*e2] \"\eqn{\red{x} \gp \green{a} = \yellow{x \ip a} + \blue{x \op a}}\" flag_2d flag_px flag_py");
     plane = color(plane,1,1,0,1),
     cmd("label plane_ plane_label_loc \"\yellow{\eqn{x \ip a} - plane}\" flag_dynamic");
     suspend;

     cmd("label exp2_ [5*e1+25*e2] \"\eqn{\red{x} \gp \green{a} = \yellow{x \ip a} + \blue{x \op a}}\" flag_2d flag_px flag_py");
     cmd("label exp3_ [5*e1+45*e2] \"Solve: \gp \eqn{\red{x} = (\yellow{x.a})/\green{a} + (\blue{x \op a})/\green{a}}\" flag_2d flag_px flag_py");
     x = x,
     cmd("label x_ x \"\red{\eqn{x}}\" flag_dynamic");
     suspend;
     dynamic{proja: proja=yellow(ip/a), };
     cmd("label proj_ proj \"\yellow{(x \ip a)/a}\" flag_dynamic");
     dynamic{rej: rej = blue((x^a)/a),};
     cmd("label rej_ rej \"\blue{(x \op a)/a}\" flag_dynamic");
     suspend;

     clf();cld();
     camori = 1 + 0.1*e2^e3 + -0.1*e3^e1; 
     campos = 1.2*e2 + 22*e3;
     cmd("label exp1_ [5*e1+5*e2] \"\white{INVERTIBILITY \gp OF \gp GEOMETRIC \gp PRODUCT}\" flag_2d flag_px flag_py");
     cmd("label exp2_ [5*e1+25*e2] \"Given \gp \green{\eqn{a}} \gp and \gp \magenta{\eqn{x \gp a}} \gp, \gp what \gp is \gp \red{\eqn{x}}?\" flag_2d flag_px flag_py");
     exp3_ = 0;
     a = green(e1),
     cmd("label a_ a \"\green{\eqn{a}}\" flag_dynamic");
     suspend;
     cmd("label exp3_ [5*e1+45*e2] \"\red{x} = (\magenta{x \gp a})/\green{a}\" flag_2d flag_px flag_py");
     x = 2*e1+e2, 
     cmd("label x_ x \"\red{\eqn{x}}\" flag_dynamic");

     cprint("End of DEMOinvertible");
     prompt();
}    

