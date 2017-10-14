// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_14_6() {
// Created 20070425
// Original title FIGc2ga()
// Creates FIGc2ga_st 
    function FIGc2ga_init(); 
    function FIGc2ga_st();
    
    set_window_title("FIG(14,6):  Visualization of the intersection of circles on the representative paraboloid");

    FIGc2ga_init();
    FIGc2ga_st();
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
batch FIGc2ga_st()
// needs FIGc2ga_init to be run first
{
  cld(Xp);
  x = c3ga_point(1.17 e1- e2); 
  dynamic{x: x = (x.I2cga)/I2cga; x = blue(x + x x ni/2);}; label(x,"\eqn{\black{X}}");
  dynamic{X:  X  = hide(c3to2d(c2toc3(x)^ni)); Xp = c2to3(X); };  
  x_label = 0;
  c = c3ga_point( 2.12 e1-1.6 e2); 
  dynamic{c: c = (c.I2cga)/I2cga; c = c + c c ni/2,}; label(c,"\eqn{\black{C}}");
  dynamic{crep: crep = green(c2toc3(c));}; crep_label = 0;
  dynamic{ccrep: ccrep = color(dm2(c^crep),0,0.7,0,1),}; 
  dynamic{srep: srep = green(dual(Xp).(c^e3^ni)),}; label(srep,"\eqn{\black{\sigma}}"); // flat point representing the circle through
  dynamic{circle: circle = (x.(c^ni)).I2cga;};
  dynamic{drawcircle: drawcircle = vp(tv(0.01 e3),(x.(c^ni)).I2cga),}; // lift slightly
  dynamic{circlerep: circlerep = no_shade(color(c2to3(circle),0.3,0.9,0.3,0.5)),};

  // a conformal point with only coordinates in the I2cga plane
  d = c3ga_point( 0.44 e1 - 1.56 e2); 
  dynamic{d: d = (d.I2cga)/I2cga; d = d + d d ni/2,};  label(d,"\eqn{\black{D}}");
  dynamic{drep: drep = red(c2toc3(d));}; // label(drep,"\eqn{\red{d}}");
  dynamic{ddrep: ddrep = color(dm2(d^drep),0.7,0,0,1),}; 
  dynamic{trep: trep = red(dual(Xp).(d^e3^ni)),}; label(trep,"\eqn{\black{\tau}}"); // flat point representing the circle through
  dynamic{dircle: dircle = (x.(d^ni)).I2cga;};
  dynamic{drawdircle: drawdircle = red(vp(tv(0.01 e3),(x.(d^ni)).I2cga)),}; // lift slightly
  dynamic{dirclerep: dirclerep = no_shade(color(c2to3(dircle),0.9,0.3,0.3,0.5)),};
  dynamic{interline: interline = color(dual(dirclerep).circlerep,0,0,0.8),};
  dynamic{cross: crossline = color((no.trep)^srep,1,1,0,1),};

  dynamic{ppinter: ppinter = dual(circle).(interline^e3),}
}
