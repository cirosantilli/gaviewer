// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_6_1()
// Original title FIGinvertible() 
{
     batch init();
     function factored_bivector();
     batch pantilt(); 

     set_window_title("FIG(6,1): Non-Invertibility of the subspace products");

     init(0);
     set_point_size(0);


	pantilt(0.34,-0.71,0);
	campos = 0.77 *e1 + 1.4*e2 + 14*e3;

     a=green(e1), label(a, "\green{\eqn{\bold{a}}}");
     x = 3*e1+e2, 
     dynamic{ip:ip = x.a;};
     // dynamic{plane: plane = color((c3ga) (a + ip ni),1,1,0,1),};
     dynamic{plane: plane = no_shade(color(no_ori(dm1((c3ga) 30 vp(tv(x),no^dual(a)))),0.9,0.9,0,1)),};
     dynamic{plane_label_loc: plane_label_loc = (x.a)/a ;};
     label(plane_label_loc, "\eqn{\black{\bold{x \ip a} - plane}}");
     plane = plane;  plane_ = 0; // hide plane and its label // DO THIS
     dynamic{label_bv2_loc: label_bv2_loc = x/2+a/4;};
     label(label_bv2_loc, "\eqn{\bold{\blue{x \op a}}}");

     dynamic{bv1: bv1 = alpha(factored_bivector(x,a),0.3),};
     dynamic{ln: ln = blue((c3ga)(c3ga_point(x)^a^ni)),};
     dynamic{line_label_loc: line_label_loc = -2 a+(x^a)/a;};
     label(line_label_loc, "\blue{\eqn{\bold{x \op a} - line}}");
     x = x,
     label(x, "\red{\eqn{\bold{x}}}");
     suspend;

     dynamic{bv2: bv2 = alpha(factored_bivector((x^a)/a,a),0.5),};
     dynamic{rx: rx= color((x^a)/a,0.8,0,0), label(rx,"\eqn{\bold{(x \op a)/a}}");};
     dynamic{px: px= color((x.a)/a,0.8,0,0), label(px,"\eqn{\bold{(x \ip a)/a}}");};
     dynamic{cons: con1 = color(dm2(c3ga_point(x)^c3ga_point(px)),0.8,0,0,0.5), con2 = color(dm2(c3ga_point(x)^px),0.8,0,0,0.5), };
}
