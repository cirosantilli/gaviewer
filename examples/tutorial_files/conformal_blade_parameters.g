/*
  // the following constants must match those defined in mvint.h
  MVI_BLADE = 256;
  MVI_DUAL = 2048;
  MVI_EUCLIDEAN = MVI_BLADE + 8; 
  MVI_FREE_FLAT = MVI_BLADE + 16; // attitude
  MVI_FLAT = MVI_BLADE + 64; // flat
  MVI_TANGENT = MVI_BLADE + 32; // tangent
  MVI_ROUND = MVI_BLADE + 128; // round
*/
/*
  // the following constants must match those defined in models.h
  MVI_E3GA = 8192;
  MVI_P3GA = 2 * 8192;
  MVI_C3GA = 3 * 8192;
  MVI_I2GA = 4 * 8192;
 */

function conformal_class(X) {
	int = get_interpretation(X);
	if (bit_and(int, 7 * 8192) == (3 * 8192)) // if c3ga
		return (bit_and(get_interpretation(X), 248));
	else return 0;
}

function cc_is_dual(X) {
	return (bit_and(get_interpretation(X), 2048));	
}
 
function attitude(X) {
	switch(conformal_class(X)) {
	case 16: // MVI_FREE_FLAT (attitude) 
		return X;
		
	case 64: // MVI_FLAT (flat) 
		if (cc_is_dual(X)) return (X ^ ni);
		else return (-ni . X);
		
	case 32: // MVI_TANGENT
	case 128: // MVI_ROUND
		return (-0.5 ni X ni);

	default:
		if (X != 0) cprint("Warning: attitude(X) called with a non-c3ga-blade");
		return 0;
	}
}

function location(X) {
	// returns normalized dual round centered on location
	// Euclidean part of that gives location vector
	switch(conformal_class(X)) {
	case 16: // MVI_FREE_FLAT (attitude) 
		return 0;

	case 64: // MVI_FLAT (flat) 
		if (cc_is_dual(X)) return ((no ^ X) / X);
		else return ((no . X) / X);

	case 32: // MVI_TANGENT
	case 128: // MVI_ROUND
		return (X / (-ni . X));
	default:
		if (X != 0) cprint("Warning: attitude(X) called with a non-c3ga-blade");
		return 0;
	}
}

function sq_weight(X) {
	return norm_r(no . attitude(X));
}

function sq_size(X) {
// NOTE: this is not the radius squared, but typically +/- 2 sq_size() is
	switch(conformal_class(X)) {
	case 16: // MVI_FREE_FLAT (attitude) 
	case 64: // MVI_FLAT (flat) 
	case 32: // MVI_TANGENT
		return 0;
	case 128: // MVI_ROUND
		return -0.5 norm_r(X) / norm_r(ni . X);
	default:
		if (X != 0) cprint("Warning: attitude(X) called with a non-c3ga-blade");
		return 0;
	}
}

