// DEMOc2ga_init
// c3ga->c2ga
function c3to2(X3) {   
   if (X3^ni == 0) return no.X3 + (ni-e3)^(e3.(no.X3));
   else            return cprint("This c3ga element cannot be mapped to c2ga!");
}
// c2ga->c3ga
function c2to3(X2) {   
   if (e3.X2 == 0) return (X2-e3^(no.X2))^ni;
   else            return cprint("This is not a c2ga element!");
}
// interpret c3ga as dual in c2ga
function c3to2d(X) { return e3.dual(c3to2(X)); }, 

function pt(x) { return c3ga_point(x);} 

batch draw_paraboloid()
{
  cmd("fgcolor 1.0 1.0 1.0 1.0"); 
  cmd("import conformal_paraboloid.geo cp");
}

batch DEMOc2ga_init() {
  function clearall();
  function init_c3ga();
  batch pantilt();

  clearall();
  init_c3ga();
  draw_paraboloid();
  dynamic{I2cga = show(alpha(no_shade(white(dual((c3ga)e3))),1));};
  campos = e2 + 20 e3;
  pantilt(0,-1.2);
  //textinit();
}


batch DEMOc2ga_x()
// draw a vector x and the elements it represents in c2ga
// NEEDS init_c2ga_visuals() to be run first
{
  x = c3ga_point(-3 e1 - 2 e2 + 3 e3), 
  dynamic{ XL = color(x^e3^ni,1,0,0,0.2),},         // plumb line
  dynamic{ xV = (e3ga)(x^ni^no/ni^no),},      // representational vector
  dynamic{ X  = c3to2d(x^ni), },         // or do c3to2(Xp)  // circle
  dynamic{ Xp = show(no_shade(color(c2to3(X),0.9,0.8,0.4,0.3))),}, // plane
  cmd("tsmode equation");
  cmd("fgcolor 0.5 0 0 1");
  cmd("olcolor 0 0 0 0");
  cmd("bgcolor 0 0 0 0");
  cmd("label x_ x \"\gp x\" flag_dynamic");
  ctrl_bool("  full labels?"=0);
  dynamic{
    if ("  full labels?") {
       cmd("fgcolor 0.5 0.5 0 1");
       cmd("label Xp_ Xp \"\gp \txt{dual(x)}\" flag_dynamic");
       cmd("fgcolor 0 0.5 0 1");
          if (X.X < 0) 
    cmd("label X_ X \"\gp \txt{ imaginary circle of dual(x)}\" flag_dynamic");
    else 
    cmd("label X_ X \"\gp \txt{ real circle of dual(x)}\" flag_dynamic");
  } else { Xp_=0; X_=0; }
  }
}

batch DEMOc2ga_xy()
// needs DEMOc2ga_init to be run first
{
  "  pan/tilt control ?" = 1;
  camori = 1 + 0.7 e2^e3;
  campos = 20 e3 + e2;
  x = c3ga_point(-3 e1 - 2 e2 + 3 e3), 
  y = c3ga_point(+e1/2 - 3 e2 + 4 e3), 
  cmd("tsmode equation");
  cmd("fgcolor 0.5 0 0 1");
  cmd("olcolor 0 0 0 0");
  cmd("bgcolor 0 0 0 0");
  cmd("label y_ y \"\gp y\" flag_dynamic");
  dynamic{ X    = c3to2d(x^ni), },            //  the circle
  dynamic{ Y    = c3to2d(y^ni), },            //  the circle
  dynamic{ XYdd = no_weight(c3to2d(x^y^ni)),},           //  circle intersection
  // XYdd is the whole computation; now for illustrative elements:
  dynamic{ XL = color(x^e3^ni,1,0,0,0.2),},   // plumb line
  dynamic{ YL = color(y^e3^ni,1,0,0,0.2),},   
  dynamic{ xV = (e3ga)(-no^x^ni/no^ni),},      // representational vector
  dynamic{ yV = (e3ga)(-no^y^ni/no^ni),}, 
  dynamic{ Xp   = show(no_shade(color(c2to3(X),0.9,0.8,0.4,0.3))),}, // dual plane
  dynamic{ Yp   = show(no_shade(color(c2to3(Y),0.5,0.4,0.3,0.3))),},
  dynamic{ XYni = x^y^ni,},      	               // 3D connection line
  dynamic{ XYd  = magenta(-dual(dual(Yp)^dual(Xp))),}, // 2D dual of conn.line
  dynamic{
    if ("  full labels?") {
       cmd("fgcolor 0.45 0.4 0.2 1");
       cmd("label Yp_ Yp \"\gp \txt{dual(y)}\" flag_dynamic");
       cmd("fgcolor 0 0.5 0 1");
          if (Y.Y < 0) 
    cmd("label Y_ Y \"\gp \txt{ imaginary circle of dual(y)}\" flag_dynamic");
    else 
    cmd("label Y_ Y \"\gp \txt{ real circle of dual(y)}\" flag_dynamic");
  } else { Yp_=0; Y_=0; }
  }
}

batch DEMOc2ga() {
    function DEMOc2ga_init(); 
    function DEMOc2ga_x(); 
    function DEMOc2ga_xy();

    cmd(" cvcolor 0.6 0.6 0.6");
    DEMOc2ga_init();
    prompt("DEMOc2ga initialized >> ");
    suspend;
    DEMOc2ga_x();
    prompt("DEMOc2ga visualization of x >> ");
    suspend;
    DEMOc2ga_xy();
    prompt("DEMOc2ga visualization of x and y >> ");
    suspend;
    prompt();
}

