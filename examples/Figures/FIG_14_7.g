// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


//***********************************************************************
batch FIG_14_7() {
// Created 20070425 LD
// Original title FIGc2gavoronoi() 
    function FIGc2gavoronoi_init(); 
    function FIGc2gavoronoipart();

    set_window_title("FIG(14,7):  A Voronoi diagram in the conformal model");

    FIGc2gavoronoi_init();
    FIGc2gavoronoipart();
    suspend;
    cprint("You can drag the black points x[i] (within limits) to see the effect on the figure.");
    prompt();
}

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

function pt(x) { return c3ga_point(x);} 

//***********************************************************************
batch draw_paraboloid_voronoi()
{
  // The actual figures in the book use a very high resolution paraboloid.
  // To save memory, we use a lower resolution in this release.
  // As a consequence, the intersections with the paraboloid may look coarser.

  cmd("fgcolor 1.0 1.0 1.0 0.3"); 
  cmd("import conformal_paraboloid.geo cp");
  cmd("fgcolor 0.0 0.0 1.0 0.3"); 
}

//***********************************************************************
batch FIGc2gavoronoi_init() {
  function init();
  batch pantilt();
  batch grey_canvas();
  batch draw_paraboloid_voronoi();

  init(2);
  grey_canvas(0.6);
  set_gl_lines(1);
  draw_paraboloid_voronoi();

  dynamic{I2ga: I2cga = show(alpha(no_shade(white(dual((c3ga)e3))),0.6));};
  campos = e2 + 20 e3;
  pantilt(0,-pi/2+0.2);
}


//***********************************************************************
batch FIGc2gavoronoipart()
// draw a vector x and the elements it represents in c2ga
// NEEDS init_c2ga_visuals() to be run first
{
  offset = (2 e1-2 e2)/sqrt(2);
  x[1] = c3ga_point(e1 +offset);
  x[2] = c3ga_point(0.1 e1 +offset);
  x[3] = c3ga_point(e1+e2 +offset);
  x[4] = c3ga_point(1.5 e2 +offset);
  x[5] = c3ga_point(-1.5 e1 +offset);
  x[6] = c3ga_point(-e2-e1/3 +offset);

  dynamic{x1: x[1] = c3ga_point((x[1].(e1^e2))/(e1^e2)); xe[1] = (x[1].(e1^e2))/(e1^e2);}; // project onto space
  dynamic{xp1: xp[1] = blue(vp(tv(-no.x[1] e3),x[1])),}; // onto the paraboloid
  dynamic{x2: x[2] = c3ga_point((x[2].(e1^e2))/(e1^e2)); xe[2] = (x[2].(e1^e2))/(e1^e2);}; // project onto space
  dynamic{xp2: xp[2] = blue(vp(tv(-no.x[2] e3),x[2])),}; // onto the paraboloid
  dynamic{x3: x[3] = c3ga_point((x[3].(e1^e2))/(e1^e2)); xe[3] = (x[3].(e1^e2))/(e1^e2);}; // project onto space
  dynamic{xp3: xp[3] = blue(vp(tv(-no.x[3] e3),x[3])),}; // onto the paraboloid
  dynamic{x4: x[4] = c3ga_point((x[4].(e1^e2))/(e1^e2)); xe[4] = (x[4].(e1^e2))/(e1^e2);}; // project onto space
  dynamic{xp4: xp[4] = blue(vp(tv(-no.x[4] e3),x[4])),}; // onto the paraboloid
  dynamic{x5: x[5] = c3ga_point((x[5].(e1^e2))/(e1^e2)); xe[5] = (x[5].(e1^e2))/(e1^e2);}; // project onto space
  dynamic{xp5: xp[5] = blue(vp(tv(-no.x[5] e3),x[5])),}; // onto the paraboloid
  dynamic{x6: x[6] = c3ga_point((x[6].(e1^e2))/(e1^e2)); xe[6] = (x[6].(e1^e2))/(e1^e2);}; // project onto space
  dynamic{xp6: xp[6] = blue(vp(tv(-no.x[6] e3),x[6])),}; // onto the paraboloid

  ctrl_bool(labels=1);
  dynamic{l1: if(labels == 1) 
  { 
  label(x[1]); label(xp[1]);
  label(x[2]); label(xp[2]);
  label(x[3]); label(xp[3]);
  label(x[4]); label(xp[4]);
  label(x[5]); label(xp[5]);
  label(x[6]); label(xp[6]);
  } else {
  label(x[1],""); label(xp[1],"");
  label(x[2],""); label(xp[2],"");
  label(x[3],""); label(xp[3],"");
  label(x[4],""); label(xp[4],"");
  label(x[5],""); label(xp[5],"");
  label(x[6],""); label(xp[6],"");
  };};


  // the closest triangles are: 2 at center, rest around
  dynamic{c12: cop[12] = dm2(xp[1]^xp[2]), ce[12] = red(dm2(x[1]^x[2])),};
  dynamic{c23: cop[23] = dm2(xp[2]^xp[3]), ce[23] = red(dm2(x[2]^x[3])),};
  dynamic{c31: cop[31] = dm2(xp[3]^xp[1]), ce[31] = red(dm2(x[3]^x[1])),};
  dynamic{c34: cop[34] = dm2(xp[3]^xp[4]), ce[34] = red(dm2(x[3]^x[4])),};
  dynamic{c24: cop[24] = dm2(xp[2]^xp[4]), ce[24] = red(dm2(x[2]^x[4])),};
  dynamic{c25: cop[25] = dm2(xp[2]^xp[5]), ce[25] = red(dm2(x[2]^x[5])),};
  dynamic{c45: cop[45] = dm2(xp[4]^xp[5]), ce[45] = red(dm2(x[4]^x[5])),};
  dynamic{c16: cop[16] = dm2(xp[1]^xp[6]), ce[16] = red(dm2(x[1]^x[6])),};
  dynamic{c26: cop[26] = dm2(xp[2]^xp[6]), ce[26] = red(dm2(x[2]^x[6])),};
  dynamic{c56: cop[56] = dm2(xp[5]^xp[6]), ce[56] = red(dm2(x[5]^x[6])),};

ctrl_bool(circles=0);
dynamic{c123: if (circles==1) {c123= show(color(x[1]^x[2]^x[3],0,0.6,0)); } else {c123 = hide(x[1]^x[2]^x[3]);}; n123 = -(ni^e3).(dual(c123)); d123 = e3.dual(c123)/n123; cp123 = green(c3ga_point( (d123^no^ni)/(no^ni)  -(no.d123) e3 )), m123 = black(c3ga_point((d123^no^ni)/(no^ni))),};

dynamic{c126: if (circles==1) {c126= show(color(x[1]^x[2]^x[6],0,0.6,0)); } else {c126 = hide(x[1]^x[2]^x[6]);}; n126 = -(ni^e3).(dual(c126)); d126 = e3.dual(c126)/n126; cp126 = green(c3ga_point( (d126^no^ni)/(no^ni)  -(no.d126) e3 )), m126 = black(c3ga_point((d126^no^ni)/(no^ni))),};

dynamic{c256: if (circles==1) {c256= show(color(x[2]^x[5]^x[6],0,0.6,0)); } else {c256 = hide(x[2]^x[5]^x[6]);}; n256 = -(ni^e3).(dual(c256)); d256 = e3.dual(c256)/n256; cp256 = green(c3ga_point( (d256^no^ni)/(no^ni)  -(no.d256) e3 )), m256 = black(c3ga_point((d256^no^ni)/(no^ni))),};

dynamic{c245: if (circles==1) {c245= show(color(x[2]^x[4]^x[5],0,0.6,0)); } else {c245 = hide(x[2]^x[4]^x[5]);}; n245 = -(ni^e3).(dual(c245)); d245 = e3.dual(c245)/n245; cp245 = green(c3ga_point( (d245^no^ni)/(no^ni)  -(no.d245) e3 )), m245 = black(c3ga_point((d245^no^ni)/(no^ni))),};

dynamic{c234: if (circles==1) {c234= show(color(x[2]^x[3]^x[4],0,0.6,0)); } else {c234 = hide(x[2]^x[3]^x[4]);}; n234 = -(ni^e3).(dual(c234)); d234 = e3.dual(c234)/n234; cp234 = green(c3ga_point( (d234^no^ni)/(no^ni)  -(no.d234) e3 )), m234 = black(c3ga_point((d234^no^ni)/(no^ni))),};


// tangent planes
dynamic{tps: 
tp1 = xp[1]^(xe[1].(e1^e2))^(xe[1]+xe[1] xe[1] e3)^ni/(xe[1] xe[1]);
tp2 = xp[2]^(xe[2].(e1^e2))^(xe[2]+xe[2] xe[2] e3)^ni/(xe[2] xe[2]);
tp3 = xp[3]^(xe[3].(e1^e2))^(xe[3]+xe[3] xe[3] e3)^ni/(xe[3] xe[3]);
tp4 = xp[4]^(xe[4].(e1^e2))^(xe[4]+xe[4] xe[4] e3)^ni/(xe[4] xe[4]);
tp5 = xp[5]^(xe[5].(e1^e2))^(xe[5]+xe[5] xe[5] e3)^ni/(xe[5] xe[5]);
tp6 = xp[6]^(xe[6].(e1^e2))^(xe[6]+xe[6] xe[6] e3)^ni/(xe[6] xe[6]);
};

// finite voronoi edges
dynamic{d23: d23=green(dm2(cp123^cp234)), m23 = black(dm2(m123^m234)), };
dynamic{d12: d12=green(dm2(cp123^cp126)), m12 = black(dm2(m123^m126)), };
dynamic{d26: d26=green(dm2(cp256^cp126)), m26 = black(dm2(m256^m126)), };
dynamic{d25: d25=green(dm2(cp256^cp245)), m25 = black(dm2(m256^m245)), };
dynamic{d24: d24=green(dm2(cp234^cp245)), m24 = black(dm2(m234^m245)), };

// infinite voronoi edges
dynamic{ie56: ie56 = black(grade(-m256.((x[5]-x[6]).I2cga),2)), ier56 = green(cp256.((dual(no.tp5).tp6)^ni)),};
dynamic{ie61: ie61 = black(grade(-m126.((x[6]-x[1]).I2cga),2)), ier16 = green(-cp126.((dual(no.tp1).tp6)^ni)),};
dynamic{ie13: ie13 = black(grade(-m123.((x[1]-x[3]).I2cga),2)), ier13 = green(cp123.((dual(no.tp1).tp3)^ni)),};
dynamic{ie34: ie34 = black(grade(-m234.((x[3]-x[4]).I2cga),2)), ier34 = green(cp234.((dual(no.tp3).tp4)^ni)),};
dynamic{ie45: ie45 = black(grade(-m245.((x[4]-x[5]).I2cga),2)), ier45 = green(cp245.((dual(no.tp4).tp5)^ni)),};

}


