// GABLEplus DEMOs
	function DEMOinner();
	function DEMOinterpolation();
	function DEMOinvertible();
	function DEMOlinecross();
	function DEMOlineintersect();
	function DEMOmeet1();
	function DEMOorthogonalization();
	function DEMOproj();
	function DEMOproj1();
	function DEMOrotdefinition();
	function DEMOrotor();
	function DEMOrotreflect();
	function DEMOouter();
// CONFORMAL DEMOs
batch DEMOc2ga();
batch DEMOc2ga_init();
batch DEMOc2ga_x();
batch DEMOc2ga_y();
batch DEMOcircle_meet();
batch DEMOhomogeneous();
batch DEMOi2ga_visuals();
batch DEMOincidence();
batch DEMOclassification();
batch DEMOinnerortho();
batch DEMOloxodrome();
batch DEMOori2d();
batch DEMOori3d();
batch DEMOp3ga();
batch DEMOpencil();
batch DEMOprojective();
batch DEMOpuma();
batch DEMOpuma_init();
batch DEMOortho();
batch DEMOreflect();
batch DEMOspanning();
batch DEMOspheres();
batch DEMOxinA();
batch DEMOversor();
batch DEMOratio();
batch DEMOprojection();
batch DEMOgoodies();
batch DEMOdupin();

// e3ga demos
batch DEMO_BASICS();
batch DEMO_COMBINE();
batch DEMO_E_OPERATORS();

// c3ga demos
batch DEMO_ORIENTED();	
batch DEMO_MODELS();
batch DEMO_ORTHOGONALITY();
batch DEMO_OPERATORS();
batch DEMO_APPLICATIONS();

batch DEMO_e3ga() {
	cprint(" ");
	cprint("THE GEOMETRIC ALGEBRA OF 3-DIMENSIONAL SPACE");
	cprint(" ");
	DEMO_BASICS();
	DEMO_COMBINE();
	DEMO_E_OPERATORS();
}

batch DEMO_c3ga() {
	cprint(" ");
	cprint("100 - THE CONFORMAL MODEL OF EUCLIDEAN GEOMETRY");
	cprint(" ");
 	DEMO_ORIENTED();	
	DEMO_MODELS();
	DEMO_ORTHOGONALITY();
	DEMO_OPERATORS();
	DEMO_APPLICATIONS();
}

batch DEMO() { 
	DEMO_e3ga();
	DEMO_c3ga();
}

batch DEMO_BASICS() {
	cprint("10-BASICS OF GA");
	cprint("  11 = outer product		(DEMOouter)");
	cprint("  12 = inner product		(DEMOinner)");
	cprint("  13 = geometric product	(DEMOinvertible)");
}

batch DEMO_COMBINE() {
	cprint("20-ELEMENTARY COMBINATIONS");
	cprint("  21 = projection		(DEMOproj)");
	cprint("  22 = line meet in 2D		(DEMOlineintersect)"); 
	cprint("  23 = line meet in 3D		(EMOlinecross)");
	cprint("  24 = orthogonalization 	(DEMOorthogonalization)");
}

batch DEMO_E_OPERATORS() {
	cprint("30-OPERATORS");
	cprint("  31 = definition of rotation 	(DEMOrotdefinition)" );
	cprint("  32 = rotors				(DEMOrotor)" );
	cprint("  33 = rotation interpolation 	(DEMOinterpolation)" );
	cprint("  34 = reflection			(TBA)");
	cprint("  35 = rotor as double reflection	(DEMOrotreflect)");
}

batch DEMO_ORIENTED() {
	cprint("110-ORIENTED SPACES");
	cprint("  111 = spanning rounds and flats	(DEMOspanning)");
	cprint("  112 = intersecting rounds and flats	(DEMOincidence)");
	cprint("  113 = containment specification	(DEMOxinA)" );
	cprint("  114 = orientation in 2D			(DEMOori2d)");
	cprint("  115 = orientation in 3D			(DEMOori3d)");
	cprint("  116 = directed meet of circles		   (DEMOcircle_meet)");
	cprint("  117 = pencil of dual spheres		    (DEMOpencil)");
	cprint("  118 = closure of incidence		    (DEMOclassification)");
}

batch DEMO_MODELS() {
	cprint("120-MODELS");
	cprint("  121 = sphere specifications		(DEMOspheres)");
	cprint("  122 = homogeneous coordinates	 (DEMOhomogeneous)");
	cprint("  123 = visualization of C2GA		 (DEMOc2ga)");
	cprint("  124 = projection in P3GA		 (DEMOp3ga)");
	cprint("  125 = projection in C3GA		 (DEMOprojective)" );
}
batch DEMO_ORTHOGONALITY() {
	cprint("130-ORTHOGONALITY");
	cprint("  131 = orthogonality measures		(DEMOinnerortho)" );
	cprint("  132 = orthogonal specification		 (DEMOortho)");
	cprint("  133 = conformal projection 		(DEMOprojection)");
	cprint("  134 = conformal goodies 		(DEMOgoodies)");
}
batch DEMO_OPERATORS() {
	cprint("140-OPERATORS");
	cprint("  141 = extension of reflection formula	 (DEMOreflect)");
	cprint("  142 = versors for rigid body motions 	(DEMOversor)");
	cprint("  143 = versors as ratios of flats 	(DEMOratio)");
	cprint("  144 = loxodromic transformations	(DEMOloxodrome)");
}
batch DEMO_APPLICATIONS() {
	cprint("150-APPLICATIONS");
	cprint("  151 = PUMA robot in C3GA		(DEMOpuma)");
	cprint("  152 = Modeling: Dupin's cyclide 	(DEMOdupin)");
}

batch DEMO(nselect) {
	// GABLEplus demos on e3ga
	if (nselect == 0) {DEMO(); } ;
	if (nselect == 10) {DEMO_BASICS(); } ;
	if (nselect == 11) {DEMOouter(); } ;
	if (nselect == 12) {DEMOinner(); } ;
	if (nselect == 13) {DEMOinvertible(); } ;
	if (nselect == 20) {DEMO_COMBINE(); } ;
	if (nselect == 21) {DEMOproj(); } ;
	if (nselect == 22) {DEMOlineintersect(); } ;
	if (nselect == 23) {DEMOlinecross(); } ;
	if (nselect == 24) {DEMOorthogonalization(); } ;
	if (nselect == 30) {DEMO_E_OPERATORS(); } ;
	if (nselect == 31) {DEMOrotdefinition(); } ;
	if (nselect == 32) {DEMOrotor(); } ;
	if (nselect == 33) {DEMOinterpolation(); } ;
	if (nselect == 34) {cprint("Not yet available"); } ;
	if (nselect == 35) {DEMOrotreflect(); };

	// conformal demos on c3ga
	if (nselect == 100)  { DEMO_c3ga(); } ;
	if (nselect == 110) { DEMO_ORIENTED(); } ;
	if (nselect == 111) {   DEMOspanning(); } ;
	if (nselect == 112) {   DEMOincidence(); } ;
	if (nselect == 113) {   DEMOxinA(); } ;
	if (nselect == 114) {   DEMOori2d(); } ;
	if (nselect == 115) {   DEMOori3d(); } ;
	if (nselect == 116) {   DEMOcircle_meet(); } ;
	if (nselect == 117) {   DEMOpencil(); } ;
	if (nselect == 118) {   DEMOclassification(); } ;
	if (nselect == 120) { DEMO_MODELS(); } ;
	if (nselect == 121) {   DEMOspheres(); } ;
	if (nselect == 122) {   DEMOhomogeneous(); } ;
	if (nselect == 123) {   DEMOc2ga(); } ; //
	if (nselect == 124) {   DEMOp3ga(); } ;
	if (nselect == 125) {   DEMOprojective(); } ;
	if (nselect == 130) { DEMO_ORTHOGONALITY(); } ;
	if (nselect == 131) {   DEMOinnerortho(); } ;
	if (nselect == 132) {   DEMOortho(); } ;
	if (nselect == 133) {   DEMOprojection(); } ;
	if (nselect == 134) {   DEMOgoodies(); } ;
	if (nselect == 140) { DEMO_OPERATORS(); } ;
	if (nselect == 141) {   DEMOreflect(); } ;
	if (nselect == 142) {   DEMOversor(); } ;
	if (nselect == 143) {   DEMOratio(); } ;
	if (nselect == 144) {   DEMOloxodrome(); } ;
	if (nselect == 150) { DEMO_APPLICATIONS(); } ;
	if (nselect == 151) {   DEMOpuma(); } ; //
	if (nselect == 152) {   DEMOdupin(); } ;//
}
