//DEMOprojective
//========== from (flat) CGA to 'PGA-like within CGA'
function c2p(A) {
    if (ni^A == 0) 
      return ( no.A + ni^(ni.(no.A))/2 );
    else 
      return cprint("This metric element cannot be made projective!");
}
//========== from 'PGA-like within CGA' to CGA
function p2c(A)  { return ni^A; }

// projective outer product
function pouter(X,Y) { return p2c(c2p(X)^c2p(Y));}; 

// actual projection
function pro(X,O,I) { return no_weight(dual(I).pouter(O,X) pow(-1,grade(X)));};

//========================================================================
// simple demo of projection, intended to be the counterpart of p3ga_demo
//========================================================================
batch DEMOprojective()
{
  function p2c(); 
  function c2p();
  function pro();
  batch init_c3ga();

  init_c3ga();

  O = (no^ni), label(O); 	        	// flat point for the pinhole
  I = no_shade(alpha(pt(e1)^e2^e3^ni,0.5)), // flat image plane
  
  x = pt(2*e1+e2)^ni,  label(x);// now we must use flat points
  y = pt(2*e1+e3)^ni,  label(y);
  dynamic{ linexy  = pouter(x,y),},
  dynamic{ xp    = pro(x,O,I),},
  dynamic{ yp    = pro(y,O,I),},
  dynamic{ xr    = alpha(pouter(O,x),0.3),},
  dynamic{ yr    = alpha(pouter(O,y),0.3),},
  dynamic{ linep = pro(linexy,O,I),},

  textinit();
  cmd("label exp_ [5*e1+5*e2] \"\txt{\red{C3GA MODEL:} \\ points are \blue{grade 2 'flat points' \eqn{x \op \infty}} \\ lines are \green{grade 3} \\ planes are \yellow{grade 4}}\" flag_2d flag_px flag_py");
  cmd("tsmode eqn");
}


