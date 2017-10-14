// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_14_3() {
// Created 20070425
// Original title FIGc2ga()
    function FIGc2ga_init(); 
    function FIGc2ga_x(); 

    set_window_title("FIG(14,3):  Visualization of a 2-D Euclidean point on the representative paraboloid");

    FIGc2ga_init();
    FIGc2ga_x();
}

// FIGc2ga
// c3ga->c2ga
function c3to2(X3) {   
   if (X3^ni == 0) return no.X3 + (ni-((c3ga)e3))^(((c3ga) e3).(no.X3));
   else            return cprint("This c3ga element cannot be mapped to c2ga!");
}
// c2ga->c3ga
function c2to3(X2) {   
   if (((c3ga) e3).X2 == 0) return (X2-((c3ga) e3)^(no.X2))^ni;
   else            return cprint("This is not a c2ga element!");
}
// interpret c3ga as dual in c2ga
function c3to2d(X) { return ((c3ga) e3).dual(c3to2(X)); }, 

// convert 2D conformal point to its 3D conformal picture
function c2toc3(X) { return X -no.X ((c3ga) e3 -no.X ni/2);};

function pt(x) { return c3ga_point(x);} 

batch draw_paraboloid()
{
  cmd("fgcolor 1.0 1.0 1.0 1.0"); 
  cmd("import conformal_paraboloid.geo cp");
}

//*****************************************************************************************
batch FIGc2ga_init() {
  batch init();
  batch grey_canvas();
  batch pantilt();
  batch draw_paraboloid();

  init(2);
  set_gl_lines(1);
  draw_paraboloid();
  dynamic{I2cga = show(alpha(no_shade(white(dual((c3ga)e3))),1));};
  grey_canvas(0.9);
  campos = 21 e3+2.5 e2+ 0.4 e1;
  pantilt(0,-pi/2+0.2);
}


//*****************************************************************************************
batch FIGc2ga_x()
// draw a vector x and the elements it represents in c2ga
// NEEDS init_c2ga_visuals() to be run first
{
  // a conformal point with only coordinates in the I2cga plane
  x = c3ga_point(2 e1- e2/2); 
  dynamic{x:     x = (x.I2cga)/I2cga; x = x + x x ni/2,}; label(x,"\eqn{\black{X}}");
  dynamic{xrep:  xrep = c2toc3(x);}; label(xrep,"\eqn{\black{x}}");
  dynamic{xxrep: xxrep = color(dm2(x^xrep),0.7,0,0,0.5),}; 
  dynamic{X:     X  = c3to2d(xrep^ni); },         // or do c3to2(Xp)  // tangent bivector
  dynamic{Xp:    Xp = show(no_shade(color(c2to3(X),0.9,0,0,0.3))),}, // plane

}
