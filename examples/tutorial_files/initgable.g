/* 
init: GABLE+ initialization commands

GABLE+, Copyright (c) 1999-2003, University of Amsterdam
Copying, use and development for non-commercial purposes permitted.
         All rights for commercial use reserved; for more information
         contact Leo Dorst (leo@science.uva.nl).

          This software is unsupported.
*/


function init_e3ga();

batch init_gable() {
	init_e3ga();
	cmd("hide scalar_controls");
	cmd("show console");
	cmd("hide controls");
	cmd("cvcolor 0.7 0.7 0.7");
	cmd("fgcolor 0.0 0.7 0.7");
}
