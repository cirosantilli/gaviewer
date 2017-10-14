function sLog(spinor) {
// Log of a pure Euclidean versor in e3ga, not necessarily normalized 
// Modified 20070429 LD 
    function unit();
    planeS = unit(grade(spinor,2));
    if (planeS == 0 && spinor < 0) { // pick arbitrary plane e1^e2
   	return log(norm(spinor))-e1^e2*pi/2;
    } else {
    	return log(norm(spinor))+planeS*atan2(grade(spinor/planeS,0),grade(spinor,0));
    }
}

function rLog(V) {
	// rigid body motion logarithm, 
	// Figure 13.5 in Geometric Algebra for Computer Science, pg 384
	// Created 20060322 LD 
	// Modified 20070429 LD 
	U = V;
	R = -no.(U ni); 	// rotation part
	t = -2 (no.U)/R;	// translation
	if (abs(-1-grade(R,0)) < 1e-6) { // no unique rotation plane rotation
		if (norm(t) < 1e-6) { // pick arbitrary plane for pi rotation
			return (-e1^e2 pi/2);
		} else {		// rotation plane dual to t
			I = t/I3; grade(R,2); sR2 = sqrt(- I I); I = I/sR2; 	
			return(grade( - t ni/2 - I pi, 2)); 
		}
	} 
	if (abs(1-grade(R,0)) < 1e-6) { // no rotation
		return(-t ni/2);
	} 
	I = grade(R,2); sR2 = sqrt(- I I); I = I/sR2; 	// rotation plane
	phih = -atan2(sR2,grade(R,0)); 	// half angle
	// w = (t^I)/I;			// chasles w
	// v = 1/(1-R R) (t.I)/I;	// chasles v
	return(grade( - ((t^I)/I) ni/2 + (1/(1-R R))(t.I) ni phih - I phih, 2)); 
}

function uLog(V) {
	// positively scaled rigid body motion logarithm, 
	// Figure 16.5 in Geometric Algebra for Computer Science, pg 475
	// Created 20060326 LD
	// Modified 20070429 LD 
	U= V;
	X = - no . (U ni) ; // should give exp (-g/2) R
	R = X/sqrt(X reverse(X));
	gam = 2 log(X/R);  
	if (abs(gam) < 1e-6) { 
		gamfactor = 1;
	} else {
		gamfactor =  gam/(exp(gam)-1);
	}
	S = exp(no^ni gam/2); 
	T = U/S/R; 		// retrieval of parameters for V = T R S
	t = -2 no.T; 
	if (abs(-1-grade(R,0)) < 1e-6) { // no unique rotation plane rotation
		if (norm(t) < 1e-6) { // pick arbitrary plane for pi rotation
			return (-e1^e2 pi/2 + gam no^ni/2);
		} else {		// rotation plane dual to t
			I = t/I3; grade(R,2); sR2 = sqrt(- I I); I = I/sR2; 	
			return( grade(- t gamfactor ni/2 -I pi + gam no^ni/2, 2));
		}
	} 
	if ( abs(1-grade(R,0)) < 1e-6)  {	
	// no rotation, so no rotation plane; could set I=1, phi=0;
		 return (grade( gam no^ni/2 - gamfactor t ni/2 ,2));
	} 
	// the regular case
	I = grade(R,2); sR2 = sqrt(- I I); I = I/sR2; 	
	phi = -2 atan2(sR2,grade(R,0)); 
	w = (t^I)/I gamfactor;
	v = 1/(1-exp(gam) R R ) (t.I)/I;
	return( grade(- w ni/2 + vp(tv(v),-I phi/2 + gam no^ni/2), 2));
}	





