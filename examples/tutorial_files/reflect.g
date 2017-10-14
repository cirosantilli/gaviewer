function reflect(X,A)
//  reflects the blade X in the blade A with the proper sign
//  BLADE A MUST BE GIVEN IN DIRECT REPRESENTATION
{
   if (bit_and( grade(X) != -1, grade(A) != -1)) // BOTH BLADES?
	return A X/A pow(-1,grade(X) (1+grade(A)));
}

//=====================================================================

function reflectindual(X,A)
//  reflects the blade X in the blade A with the proper sign
//  BLADE A MUST BE GIVEN IN DUAL REPRESENTATION
{
   AA = dual(A);
   if (bit_and( grade(X) != -1, grade(A) != -1)) // BOTH BLADES?
	return AA X/AA pow(-1,grade(X) (1+grade(AA)));
   else
	cprint("ERROR in reflection : arguments should be blades (for now)");
}

//=====================================================================

function contained(X,A)
//  computes the containment product of the blades X and A
//  if X is in A, the containment product equals 0
//  if X is NOT in A, the containment product is like a weighted XOR.
{
   if (bit_and( grade(X) != -1, grade(A) != -1)) // BOTH BLADES?
	return (X A - A X pow(-1,grade(X)(1+grade(A))) )/2;
   else
	cprint("ERROR in containment : arguments should be blades");
}

