function GAorbiter();
function GAorbiter(e3ga angle_orbiter);
function GAorbiter(e3ga angle_orbiter, e3ga duration);

// these functions below are listed in the wrong order, 
// so that we _must_ have the function defs above:
batch GAorbiter() {
	GAorbiter(360.0);
};

batch GAorbiter(e3ga angle_orbiter) {
	GAorbiter(angle_orbiter, 10.0);
};


batch GAorbiter(e3ga angle_orbiter, e3ga duration) {
	camrot(0.5 (angle_orbiter pi / 180) e1 ^ e3 / duration, duration);
};

// once defined we can do renames easily:
batch orbiter() {GAorbiter();}
batch orbiter(a) {GAorbiter(a);}
batch orbiter(a,b) {GAorbiter(a,b);}



