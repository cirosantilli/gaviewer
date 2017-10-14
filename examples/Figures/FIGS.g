// FIGURES FROM THE BOOK - THE GAViewer DEMO FILES MODIFIED to FIGs

// Created 20070428

// enabling lower case possibility
batch fig() { batch FIG(); FIG();}
batch fig(i) { batch FIG(); FIG(i);}
batch fig(i,j) { batch FIG(); FIG(i,j);}

// initialization from standard DEMO files
function factored_bivector();
function grey_canvas();
function textinit();
function fontsizeinit();
function clearall();
function pt();
batch init();
batch init_e3ga();
batch init_p3ga();
batch init_c3ga();
function sLog();
function rLog();
function uLog();
function unit();
batch vtrail();
batch vtrailframe();

// Figure-specific demonstration files
batch FIG_1_1();
batch FIG_1_3();
batch FIG_1_4();
batch FIG_2_1();
batch FIG_2_2();
batch FIG_2_3();
batch FIG_2_4();
batch FIG_2_5();
batch FIG_2_6();
batch FIG_2_7();
batch FIG_2_8();
batch FIG_2_14();
batch FIG_3_1();
batch FIG_3_2();
batch FIG_3_3();
batch FIG_3_4();
batch FIG_3_5();
batch FIG_3_6();
batch FIG_3_7();
batch FIG_3_8();
batch FIG_4_1();
batch FIG_4_2();
batch FIG_4_3();
batch FIG_5_1();
batch FIG_5_2();
batch FIG_5_3();
batch FIG_6_1();
batch FIG_6_1();
batch FIG_6_2();
batch FIG_6_3();
batch FIG_6_4();
batch FIG_6_5();
batch FIG_7_1();
batch FIG_7_2();
batch FIG_7_3();
batch FIG_7_6();
batch FIG_7_7();
batch FIG_7_8();
batch FIG_8_1();
batch FIG_8_2();
batch FIG_8_3();
batch FIG_10_2();
batch FIG_10_3();
batch FIG_10_4();
batch FIG_11_1();
batch FIG_11_2();
batch FIG_11_5();
batch FIG_11_6();
batch FIG_11_10();
batch FIG_11_12();
batch FIG_12_1();
batch FIG_12_2();
batch FIG_12_3();
batch FIG_12_4();
batch FIG_12_5();
batch FIG_13_2();
batch FIG_13_3();
batch FIG_13_4();
batch FIG_13_6();
batch FIG_13_7();
batch FIG_14_1();
batch FIG_14_2();
batch FIG_14_3();
batch FIG_14_4();
batch FIG_14_6();
batch FIG_14_7();
batch FIG_14_9();
batch FIG_14_10();
batch FIG_15_1();
batch FIG_15_2();
batch FIG_15_3();
batch FIG_15_4();
batch FIG_15_6();
batch FIG_15_7();
batch FIG_15_8();
batch FIG_15_9();
batch FIG_15_13();
batch FIG_16_1();
batch FIG_16_2();
batch FIG_16_3();
batch FIG_16_6();
batch FIG_16_7();
batch FIG_16_8();
batch FIG_16_9();
batch FIG_16_10();
batch FIG_16_11();
batch FIG_16_12();
batch FIG_16_13();
batch FIG_23_3();



batch FIG() {
	cprint(" ");
	cprint("GEOMETRIC ALGEBRA FOR COMPUTER SCIENCE");
	cprint(" ");
	cprint("The GAViewer-generated figures from the book, to interact with.");
	cprint(" ");
	cprint("CHAPTER  1: WHY GEOMETRIC ALGEBRA?");
	cprint("CHAPTER  2: SPANNING ORIENTED SUBSPACES");
	cprint("CHAPTER  3: METRIC PRODUCTS OF SUBSPACES");
	cprint("CHAPTER  4: LINEAR TRANSFORMATIONS OF SUBSPACES");
	cprint("CHAPTER  5: INTERSECTION AND UNION OF SUBSPACES");
	cprint("CHAPTER  6: THE FUNDAMENTAL PRODUCT");
	cprint("CHAPTER  7: ORTHOGONAL TRANSFORMATIONS AS VERSORS");
	cprint("CHAPTER  8: GEOMETRIC DIFFERENTIATION");
	cprint("CHAPTER  9: MODELLING GEOMETRIES");
	cprint("CHAPTER 10: THE VECTOR SPACE MODEL");
	cprint("CHAPTER 11: THE HOMOGENEOUS MODEL");
	cprint("CHAPTER 12: APPLICATION OF HOMOGENEOUS MODEL");
	cprint("CHAPTER 13: THE CONFORMAL MODEL");
	cprint("CHAPTER 14: NEW PRIMITIVES");
	cprint("CHAPTER 15: CONSTRUCTIONS IN EUCLIDEAN GEOMETRY");
	cprint("CHAPTER 16: CONFORMAL OPERATORS");
	cprint("CHAPTER 17: OPERATIONAL MODELS");
	cprint("CHAPTER 18: IMPLEMENTATIONAL ISSUES");
	cprint("CHAPTER 19: BASIS BLADES");
	cprint("CHAPTER 20: LINEAR PRODUCTS");
	cprint("CHAPTER 21: NONLINEAR PRODUCTS");
	cprint("CHAPTER 22: SPECIALIZING THE STRUCTURE");
	cprint("CHAPTER 23: RAY TRACING APPLICATION");
}

batch FIG(chselect) {FIG(chselect,0);} // just print the chapter figure list

batch FIG(chselect, nselect) {
// =================================================================================
if (chselect ==1 && nselect == 0) { 
	cprint("CHAPTER 1: WHY GEOMETRIC ALGEBRA?");
	cprint("FIG(1,1): Example in conformal model"); 
	cprint("FIG(1,2): [code]");
	cprint("FIG(1,3): Example in conformal model"); 
	cprint("FIG(1,4): The outer product and its interpretations");
	}
if (chselect ==1 && nselect == 1) { FIG_1_1(); };
if (chselect ==1 && nselect == 2) { cprint("ERROR: not an interactive figure"); };
if (chselect ==1 && nselect == 3) { FIG_1_3(); };
if (chselect ==1 && nselect == 4) { FIG_1_4(); };
// =================================================================================
if (chselect ==2 && nselect == 0) { 
	cprint("CHAPTER 2: SPANNING ORIENED SUBSPACES");
	cprint("FIG(2,1):  Spanning homogeneous subspaces in 3-D [static figure]");
	cprint("FIG(2,2):  Imagining vector addition");
	cprint("FIG(2,3):  Bivector representations");
	cprint("FIG(2,4):  Imaging bivector addition in 2-D space [2D]");
	cprint("FIG(2,5):  Bivector addition in 3-D space");
	cprint("FIG(2,6):  The associativity of the outer product [static figure]");
	cprint("FIG(2,7):  Solving linear equations with bivectors [2D]");
	cprint("FIG(2,8):  Intersecting lines in the plane [2D]");
	cprint("FIG(2,9):  [code]");
	cprint("FIG(2,10): [screenshot]");
	cprint("FIG(2,11): [sketch]");
	cprint("FIG(2,12): [screenshot]");
	cprint("FIG(2,13): [code]");
	cprint("FIG(2,14): Sampling a vector field and summing trivectors [static figure]");
	cprint("FIG(2,15): [code]");
	cprint("FIG(2,16): [screenshot]");
}
if (chselect ==2 && nselect == 1) { FIG_2_1(); };
if (chselect ==2 && nselect == 2) { FIG_2_2(); };
if (chselect ==2 && nselect == 3) { FIG_2_3(); };
if (chselect ==2 && nselect == 4) { FIG_2_4(); };
if (chselect ==2 && nselect == 5) { FIG_2_5(); };
if (chselect ==2 && nselect == 6) { FIG_2_6(); };
if (chselect ==2 && nselect == 7) { FIG_2_7(); };
if (chselect ==2 && nselect == 8) { FIG_2_8(); };
if (chselect ==2 && nselect == 9) { cprint("ERROR: not an interactive figure"); }
if (chselect ==2 && nselect == 10) { cprint("ERROR: not an interactive figure"); }
if (chselect ==2 && nselect == 11) { cprint("ERROR: not an interactive figure"); }
if (chselect ==2 && nselect == 12) { cprint("ERROR: not an interactive figure"); }
if (chselect ==2 && nselect == 13) { cprint("ERROR: not an interactive figure"); }
if (chselect ==2 && nselect == 14) { FIG_2_14(); };
if (chselect ==2 && nselect == 15) { cprint("ERROR: not an interactive figure"); }
if (chselect ==2 && nselect == 16) { cprint("ERROR: not an interactive figure"); }
// =================================================================================
if (chselect ==3 && nselect == 0) { 
	cprint("CHAPTER 3: METRIC PRODUCTS OF SUBSPACES");
	cprint("FIG(3,1):  Computing the scalar product of 2-blades [static figure]");
	cprint("FIG(3,2):  From scalar product to contraction");
	cprint("FIG(3,3):  The contraction of a vector onto a 2-blade");
	cprint("FIG(3,4):  Duality of vectors in 2-D [2D]");
	cprint("FIG(3,5):  Duality of vectors and bivectors in 3-D");
	cprint("FIG(3,6):  Projection onto a subspace");
	cprint("FIG(3,7):  Three uses of the cross product");
	cprint("FIG(3,8):  Duality and the cross product");
	cprint("FIG(3,9):  [code]");
	cprint("FIG(3,10): [screenshot]");
	cprint("FIG(3,11): [code]");
	cprint("FIG(3,12): [code]");
	cprint("FIG(3,13): [screenshot]");
	}
if (chselect ==3 && nselect == 1) { FIG_3_1(); };
if (chselect ==3 && nselect == 2) { FIG_3_2(); };
if (chselect ==3 && nselect == 3) { FIG_3_3(); };
if (chselect ==3 && nselect == 4) { FIG_3_4(); };
if (chselect ==3 && nselect == 5) { FIG_3_5(); };
if (chselect ==3 && nselect == 6) { FIG_3_6(); };
if (chselect ==3 && nselect == 7) { FIG_3_7(); };
if (chselect ==3 && nselect == 8) { FIG_3_8(); };
if (chselect ==3 && nselect == 9) { cprint("ERROR: not an interactive figure"); }
if (chselect ==3 && nselect == 10) { cprint("ERROR: not an interactive figure"); }
if (chselect ==3 && nselect == 11) { cprint("ERROR: not an interactive figure"); }
if (chselect ==3 && nselect == 12) { cprint("ERROR: not an interactive figure"); }
if (chselect ==3 && nselect == 13) { cprint("ERROR: not an interactive figure"); }
// =================================================================================
if (chselect ==4 && nselect == 0) { 
	cprint("CHAPTER 4: LINEAR TRANSFORMATIONS OF SUBSPACES");
	cprint("FIG(4,1): The defining properties of a linear transformation");
	cprint("FIG(4,2): Projection onto a line a in the b-direction");
	cprint("FIG(4,3): A rotation around the origin of unit vectors in the plane");
	cprint("FIG(4,4): [screenshot]");
	cprint("FIG(4,5): [code]");
	cprint("FIG(4,6): [screenshot]");
}
if (chselect ==4 && nselect == 1) { FIG_4_1(); };
if (chselect ==4 && nselect == 2) { FIG_4_2(); };
if (chselect ==4 && nselect == 3) { FIG_4_3(); };
if (chselect ==4 && nselect == 4) { cprint("ERROR: not an interactive figure"); }
if (chselect ==4 && nselect == 5) { cprint("ERROR: not an interactive figure"); }
if (chselect ==4 && nselect == 6) { cprint("ERROR: not an interactive figure"); }
// =================================================================================
if (chselect ==5 && nselect == 0) { 
	cprint("CHAPTER 5: INTERSECTION AND UNION OF SUBSPACES");
	cprint("FIG(5,1): The ambiguity of the magnitude of the intersection of two planes [static figure]");
	cprint("FIG(5,2): The meet of two oriented planes");
	cprint("FIG(5,3): A line meeting a plane in the origin");
	cprint("FIG(5,4): [code]");
}
if (chselect ==5 && nselect == 1) { FIG_5_1(); };
if (chselect ==5 && nselect == 2) { FIG_5_2(); };
if (chselect ==5 && nselect == 3) { FIG_5_3(); };
if (chselect ==5 && nselect == 4) { cprint("ERROR: not an interactive figure"); }
// =================================================================================
if (chselect ==6 && nselect == 0) { 
	cprint("CHAPTER 6: THE FUNDAMENTAL PRODUCT");
	cprint("FIG(6,1): Non-Invertibility of the subspace products");
	cprint("FIG(6,2): Ratios of vectors");
	cprint("FIG(6,3): Projection and rejection of a vector");
	cprint("FIG(6,4): Reflecting a vector in a line");
	cprint("FIG(6,5): Gram-Schmidt orthogonalization");
	cprint("FIG(6,6): [code]");
}
if (chselect ==6 && nselect == 1) { FIG_6_1(); };
if (chselect ==6 && nselect == 2) { FIG_6_2(); };
if (chselect ==6 && nselect == 3) { FIG_6_3(); };
if (chselect ==6 && nselect == 4) { FIG_6_4(); };
if (chselect ==6 && nselect == 5) { FIG_6_5(); };
if (chselect ==6 && nselect == 6) { cprint("ERROR: not an interactive figure"); }
// =================================================================================
if (chselect ==7 && nselect == 0) { 
	cprint("CHAPTER 7: ORTHOGONAL TRANSFORMATIONS AS VERSORS");
	cprint("FIG(7,1):  Line and plane reflection");
	cprint("FIG(7,2):  A rotation in a plane parallel to I is two reflections in vectors in that plane");
	cprint("FIG(7,3):  A rotor in action");
	cprint("FIG(7,4):  [sketch]");
	cprint("FIG(7,5):  [sketch]");
	cprint("FIG(7,6):  A spherical triangle; Composition of rotations through concatenation of rotor arcs");
	cprint("FIG(7,7):  A reflector in action");
	cprint("FIG(7,8):  The rotor product in Euclidean spaces as a Taylor series");
	cprint("FIG(7,9):  [screenshot]");
	cprint("FIG(7,10): [code]");
	cprint("FIG(7,11): [code]");
	cprint("FIG(7,12): [screenshot]");
	cprint("FIG(7,13): [screenshot]");
}
if (chselect ==7 && nselect == 1) { FIG_7_1(); };
if (chselect ==7 && nselect == 2) { FIG_7_2(); };
if (chselect ==7 && nselect == 3) { FIG_7_3(); }; 
if (chselect ==7 && nselect == 4) { cprint("ERROR: not an interactive figure"); }
if (chselect ==7 && nselect == 5) { cprint("ERROR: not an interactive figure"); }
if (chselect ==7 && nselect == 6) { FIG_7_6(); };
if (chselect ==7 && nselect == 7) { FIG_7_7(); };
if (chselect ==7 && nselect == 8) { FIG_7_8(); };
if (chselect ==7 && nselect == 9) { cprint("ERROR: not an interactive figure"); }
if (chselect ==7 && nselect == 10) { cprint("ERROR: not an interactive figure"); }
if (chselect ==7 && nselect == 11) { cprint("ERROR: not an interactive figure"); }
if (chselect ==7 && nselect == 12) { cprint("ERROR: not an interactive figure"); }
if (chselect ==7 && nselect == 13) { cprint("ERROR: not an interactive figure"); }
// =================================================================================
if (chselect ==8 && nselect == 0) { 
	cprint("CHAPTER 8: GEOMETRIC DIFFERENTIATION");
	cprint("FIG(8,1): Directional differentiation of a vector inversion");
	cprint("FIG(8,2): Changes in reflection of a rotating mirror");
	cprint("FIG(8,3): The directional differentive of the spherical projection");
}
if (chselect ==8 && nselect == 1) { FIG_8_1(); };
if (chselect ==8 && nselect == 2) { FIG_8_2(); };
if (chselect ==8 && nselect == 3) { FIG_8_3(); };
// =================================================================================
if (chselect ==9 && nselect == 0) {
	cprint("CHAPTER 9: MODELLING GEOMETRIES");
	cprint("[no figures]");
}
// =================================================================================
if (chselect ==10 && nselect == 0) { 
	cprint("CHAPTER 10: THE VECTOR SPACE MODEL");
	cprint("FIG(10,1): [sketch]]");
	cprint("FIG(10,2): The angle between a vector and a bivector");
	cprint("FIG(10,3): A spherical triangle");
	cprint("FIG(10,4): Interpolation of rotations");
	cprint("FIG(10,5): [screenshot]");
	cprint("FIG(10,6): [screenshot]");
	cprint("FIG(10,7): [screenshot]");
}
if (chselect ==10 && nselect == 1) { cprint("ERROR: not an interactive figure"); }
if (chselect ==10 && nselect == 2) { FIG_10_2(); };
if (chselect ==10 && nselect == 3) { FIG_10_3(); };
if (chselect ==10 && nselect == 4) { FIG_10_4(); };
if (chselect ==10 && nselect == 5) { cprint("ERROR: not an interactive figure"); }
if (chselect ==10 && nselect == 6) { cprint("ERROR: not an interactive figure"); }
if (chselect ==10 && nselect == 7) { cprint("ERROR: not an interactive figure"); }
// =================================================================================
if (chselect ==11 && nselect == 0) { 
	cprint("CHAPTER 11: THE HOMOGENEOUS MODEL");
	cprint("FIG(11,1):  The extra dimension of the homogeneous representation space [interactive bonus figure]");
	cprint("FIG(11,2):  Representing offset subspaces in R^{n+1} [static figure]");
	cprint("FIG(11,3):  [sketch]");
	cprint("FIG(11,4):  [sketch]");
	cprint("FIG(11,5):  The intersection of two offset lines L and M to produce a point x [2D]");
	cprint("FIG(11,6):  The meet of two skew lines");
	cprint("FIG(11,7):  [sketch]");
	cprint("FIG(11,8):  [sketch]");
	cprint("FIG(11,9):  [sketch]");
	cprint("FIG(11,10): Conics in the homogeneous model");
	cprint("FIG(11,11): [sketch]");
	cprint("FIG(11,12): The orthogonal projection in the homogeneous model");
	cprint("FIG(11,13): [sketch]");
	cprint("FIG(11,14): [screenshot]");
	cprint("FIG(11,15): [screenshot]");
}
if (chselect ==11 && nselect == 1) { FIG_11_1(); };
if (chselect ==11 && nselect == 2) { FIG_11_2(); };
if (chselect ==11 && nselect == 3) { cprint("ERROR: not an interactive figure"); }
if (chselect ==11 && nselect == 4) { cprint("ERROR: not an interactive figure"); }
if (chselect ==11 && nselect == 5) { FIG_11_5(); };
if (chselect ==11 && nselect == 6) { FIG_11_6(); };
if (chselect ==11 && nselect == 7) { cprint("ERROR: not an interactive figure"); }
if (chselect ==11 && nselect == 8) { cprint("ERROR: not an interactive figure"); }
if (chselect ==11 && nselect == 9) { cprint("ERROR: not an interactive figure"); }
if (chselect ==11 && nselect == 10) { FIG_11_10(); };
if (chselect ==11 && nselect == 11) { cprint("ERROR: not an interactive figure"); }
if (chselect ==11 && nselect == 12) { FIG_11_12(); };
if (chselect ==11 && nselect == 13) { cprint("ERROR: not an interactive figure"); }
if (chselect ==11 && nselect == 14) { cprint("ERROR: not an interactive figure"); }
if (chselect ==11 && nselect == 15) { cprint("ERROR: not an interactive figure"); }
// =================================================================================
if (chselect ==12 && nselect == 0) { 
	cprint("CHAPTER 12: APPLICATION OF HOMOGENEOUS MODEL");
	cprint("FIG(12,1): Pluecker coordinates of a line in 3-D");
	cprint("FIG(12,2): A pinhole camera");
	cprint("FIG(12,3): The epipolar constraint");
	cprint("FIG(12,4): The plane of rays generated by a line observation L [static figure]");
	cprint("FIG(12,5): The projection of the optical center onto all rays generates an eyeball");
	cprint("FIG(12,6): [screenshot]");
	cprint("FIG(12,7): [sketch]");
	cprint("FIG(12,8): [code]");
}
if (chselect ==12 && nselect == 1) { FIG_12_1(); };
if (chselect ==12 && nselect == 2) { FIG_12_2(); };
if (chselect ==12 && nselect == 3) { FIG_12_3(); };
if (chselect ==12 && nselect == 4) { FIG_12_4(); };
if (chselect ==12 && nselect == 5) { FIG_12_5(); };
if (chselect ==12 && nselect == 6) { cprint("ERROR: not an interactive figure"); }
if (chselect ==12 && nselect == 7) { cprint("ERROR: not an interactive figure"); }
if (chselect ==12 && nselect == 8) { cprint("ERROR: not an interactive figure"); }
// =================================================================================
if (chselect ==13 && nselect == 0) { 
	cprint("CHAPTER 13: THE CONFORMAL MODEL");
	cprint("FIG(13,1): [sketch]");
	cprint("FIG(13,2): Flat elements in the conformal model");
	cprint("FIG(13,3): Planar reflection in the conformal model");
	cprint("FIG(13,4): Chasles' screw");
	cprint("FIG(13,5): [pseudocode]");
	cprint("FIG(13,6): Rigid body motion interpolation");
	cprint("FIG(13,7): Reflection in a rotating mirror");
	cprint("FIG(13,8): [screenshot]");
	cprint("FIG(13,9): [screenshot]");
}
if (chselect ==13 && nselect == 1) { cprint("ERROR: not an interactive figure"); }
if (chselect ==13 && nselect == 2) { FIG_13_2(); };
if (chselect ==13 && nselect == 3) { FIG_13_3(); };
if (chselect ==13 && nselect == 4) { FIG_13_4(); };
if (chselect ==13 && nselect == 5) { cprint("ERROR: not an interactive figure"); }
if (chselect ==13 && nselect == 6) { FIG_13_6(); };
if (chselect ==13 && nselect == 7) { FIG_13_7(); };
if (chselect ==13 && nselect == 8) { cprint("ERROR: not an interactive figure"); }
if (chselect ==13 && nselect == 9) { cprint("ERROR: not an interactive figure"); }
// =================================================================================
if (chselect ==14 && nselect == 0) { 
	cprint("CHAPTER 14: NEW PRIMITIVES");
	cprint("FIG(14,1):  Dual rounds in the conformal model Versors as multiple reflections [static figure]");
	cprint("FIG(14,2):  Intersection of two spheres of decreasing radii");
	cprint("FIG(14,3):  Visualization of a 2-D Euclidean point on the representative paraboloid");
	cprint("FIG(14,4):  Visualization of a circle on the representative paraboloid");
	cprint("FIG(14,5):  [sketch]");
	cprint("FIG(14,6):  Visualization of the intersection of circles on the representative paraboloid");
	cprint("FIG(14,7):  A Voronoi diagram in the conformal model");
	cprint("FIG(14,8):  [sketch]");
	cprint("FIG(14,9):  Forward kinematics of a robot arm");
	cprint("FIG(14,10): Inverse kinematics of a robot arm");
	cprint("FIG(14,11): [screenshot]");
	cprint("FIG(14,12): [screenshot]");
	cprint("FIG(14,13): [screenshot]");
	cprint("FIG(14,14): [code]");
}
if (chselect ==14 && nselect == 1) { FIG_14_1(); };
if (chselect ==14 && nselect == 2) { FIG_14_2(); };
if (chselect ==14 && nselect == 3) { FIG_14_3(); };
if (chselect ==14 && nselect == 4) { FIG_14_4(); };
if (chselect ==14 && nselect == 5) { cprint("ERROR: not an interactive figure"); }
if (chselect ==14 && nselect == 6) { FIG_14_6(); };
if (chselect ==14 && nselect == 7) { FIG_14_7(); };
if (chselect ==14 && nselect == 8) { cprint("ERROR: not an interactive figure"); }
if (chselect ==14 && nselect == 9) { FIG_14_9(); };
if (chselect ==14 && nselect == 10) { FIG_14_10(); };
if (chselect ==14 && nselect == 11) { cprint("ERROR: not an interactive figure"); }
if (chselect ==14 && nselect == 12) { cprint("ERROR: not an interactive figure"); }
// =================================================================================
if (chselect ==15 && nselect == 0) { 
	cprint("CHAPTER 15: CONSTRUCTIONS IN EUCLIDEAN GEOMETRY");
	cprint("FIG(15,1):  The meet and plunge of three spheres");
	cprint("FIG(15,2):  The plunge of diverse elements");
	cprint("FIG(15,3):  The meet and plunge of two spheres at increasing distances");
	cprint("FIG(15,4):  Visualization of flats as plunge");
	cprint("FIG(15,5):  Orbits of a dual line versor [static figure]");
	cprint("FIG(15,6):  Tangents of elements [static figure]");
	cprint("FIG(15,7):  Factorization of rounds");
	cprint("FIG(15,8):  Affine combination of conformal points [static figure]");
	cprint("FIG(15,9):  Affine combination of circles and point pairs");
	cprint("FIG(15,10): [sketch]");
	cprint("FIG(15,11): [sketch]");
	cprint("FIG(15,12): [sketch]");
	cprint("FIG(15,13): Construction of a contour circle");
	cprint("FIG(15,14): [screenshot]");
	cprint("FIG(15,15): [screenshot]");
}
if (chselect ==15 && nselect == 1) { FIG_15_1(); };
if (chselect ==15 && nselect == 2) { FIG_15_2(); };
if (chselect ==15 && nselect == 3) { FIG_15_3(); };
if (chselect ==15 && nselect == 4) { FIG_15_4(); };
if (chselect ==15 && nselect == 5) { FIG_15_5(); };
if (chselect ==15 && nselect == 6) { FIG_15_6(); };
if (chselect ==15 && nselect == 7) { FIG_15_7(); };
if (chselect ==15 && nselect == 8) { FIG_15_8(); };
if (chselect ==15 && nselect == 9) { FIG_15_9(); };
if (chselect ==15 && nselect == 10) { cprint("ERROR: not an interactive figure"); }
if (chselect ==15 && nselect == 11) { cprint("ERROR: not an interactive figure"); }
if (chselect ==15 && nselect == 12) { cprint("ERROR: not an interactive figure"); }
if (chselect ==15 && nselect == 13) { FIG_15_13(); };
if (chselect ==15 && nselect == 14) { cprint("ERROR: not an interactive figure"); }
if (chselect ==15 && nselect == 15) { cprint("ERROR: not an interactive figure"); }
// =================================================================================
if (chselect ==16 && nselect == 0) { 
	cprint("CHAPTER 16: CONFORMAL OPERATORS");
	cprint("FIG(16,1):  Inversion in a sphere");
	cprint("FIG(16,2):  Reflection in a sphere");
	cprint("FIG(16,3):  Generation of a snail shell");
	cprint("FIG(16,4):  [sketch]");
	cprint("FIG(16,5):  [pseudocode]");
	cprint("FIG(16,6):  Loxodromes");
	cprint("FIG(16,7):  Conformal orbits");
	cprint("FIG(16,8):  Hyperbolic geometry");
	cprint("FIG(16,9):  Spherical geometry");
	cprint("FIG(16,10): Imaging by the eye");
	cprint("FIG(16,11): Reflection in a point pair");
	cprint("FIG(16,12): Dupin cycloid as the inversion of a torus in a sphere");
	cprint("FIG(16,13): Metrical Mystery Tour");
	cprint("FIG(16,14): [code]");
	cprint("FIG(16,15): [code]");
	cprint("FIG(16,16): [screenshot]");
}
if (chselect ==16 && nselect == 1) { FIG_16_1(); };
if (chselect ==16 && nselect == 2) { FIG_16_2(); };
if (chselect ==16 && nselect == 3) { FIG_16_3(); };
if (chselect ==16 && nselect == 4) { cprint("ERROR: not an interactive figure"); };
if (chselect ==16 && nselect == 5) { cprint("ERROR: not an interactive figure"); };
if (chselect ==16 && nselect == 6) { FIG_16_6(); };
if (chselect ==16 && nselect == 7) { FIG_16_7(); };
if (chselect ==16 && nselect == 8) { FIG_16_8(); };
if (chselect ==16 && nselect == 9) { FIG_16_9(); };
if (chselect ==16 && nselect == 10) { FIG_16_10(); };
if (chselect ==16 && nselect == 11) { FIG_16_11(); };
if (chselect ==16 && nselect == 12) { FIG_16_12(); };
if (chselect ==16 && nselect == 13) { FIG_16_13(); };
if (chselect ==16 && nselect == 14) { cprint("ERROR: not an interactive figure"); }
if (chselect ==16 && nselect == 15) { cprint("ERROR: not an interactive figure"); }
if (chselect ==16 && nselect == 16) { cprint("ERROR: not an interactive figure"); }
// =================================================================================
if (chselect ==17 && nselect == 0) { 
	cprint("CHAPTER 17: OPERATIONAL MODELS");
	cprint("[no figures]");
}
// =================================================================================
if (chselect ==18 && nselect == 0) { 
	cprint("CHAPTER 18: IMPLEMENTATIONAL ISSUES");
	cprint("[no figures]");
}
// =================================================================================
if (chselect ==19 && nselect == 0) { 
	cprint("CHAPTER 19: BASIS BLADES");
	cprint("FIG(19,1): [code]");
	cprint("FIG(19,2): [code]");
}
if (chselect ==19 && nselect == 1) { cprint("ERROR: not an interactive figure"); }
if (chselect ==19 && nselect == 2) { cprint("ERROR: not an interactive figure"); }
// =================================================================================
if (chselect ==20 && nselect == 0) { 
	cprint("CHAPTER 20: LINEAR PRODUCTS");
	cprint("FIG(20,1): [math]");
}
if (chselect ==20 && nselect == 1) { cprint("ERROR: not an interactive figure"); }
// =================================================================================
if (chselect ==21 && nselect == 0) { 
	cprint("CHAPTER 21: NONLINEAR PRODUCTS");
	cprint("FIG(21,1): [sketch]");
	cprint("FIG(21,2): [sketch]");
}
if (chselect ==21 && nselect == 1) { cprint("ERROR: not an interactive figure"); }
if (chselect ==21 && nselect == 2) { cprint("ERROR: not an interactive figure"); }
// =================================================================================
if (chselect ==22 && nselect == 0) { 
	cprint("CHAPTER 22: SPECIALIZING THE STRUCTURE");
	cprint("FIG(22,1): [sketch]");
	cprint("FIG(22,2): [code]");
	cprint("FIG(22,3): [code]");
}
if (chselect ==22 && nselect == 1) { cprint("ERROR: not an interactive figure"); }
if (chselect ==22 && nselect == 2) { cprint("ERROR: not an interactive figure"); }
if (chselect ==22 && nselect == 3) { cprint("ERROR: not an interactive figure"); }
// =================================================================================
if (chselect ==23 && nselect == 0) { 
	cprint("CHAPTER 23: RAY TRACING APPLICATION");
	cprint("FIG(23,1): [screenshot]");
	cprint("FIG(23,2): [screenshot]");
	cprint("FIG(23,3): Rotating an object");
	cprint("FIG(23,4): [sketch]");
}
if (chselect ==23 && nselect == 1) { cprint("ERROR: not an interactive figure"); }
if (chselect ==23 && nselect == 2) { cprint("ERROR: not an interactive figure"); }
if (chselect ==23 && nselect == 3) { FIG_23_3(); };
if (chselect ==23 && nselect == 4) { cprint("ERROR: not an interactive figure"); }
// =================================================================================
}

