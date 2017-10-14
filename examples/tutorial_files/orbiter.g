// this is a little demo of function defs:
function GAorbiter();
function GAorbiter(e3ga angle);
function GAorbiter(e3ga angle, e3ga duration);

// these function are listed in the wrong order, so that we _must_ have function defs:
batch GAorbiter() {
	GAorbiter(360.0);
};

batch GAorbiter(e3ga angle) {
	GAorbiter(angle, 10.0);
};


batch GAorbiter(e3ga angle, e3ga duration) {
	camrot(0.5 (angle pi / 180) e1 ^ e3 / duration, duration);
	// might be nicer to do it around the present optical center
};



