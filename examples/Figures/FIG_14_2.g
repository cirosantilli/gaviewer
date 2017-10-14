// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_14_2() {
// Created 20070425 
// Original title FIGspheres()
	batch pantilt();
	batch init();
	function idual();

	set_window_title("FIG(14,2):  Intersection of two spheres of decreasing radii");

	init(2); // c3ga
	cmd("cvcolor 1.0 1.0 1.0"); 
	pantilt(-pi/2,-pi/2+0.1);

	sr1 = no - ni/2;
	sr2 = no - ni;
	srh = no - ni/4;

	labelloc = -3 e3;

	e2loc2 = -(2+sqrt(2)) e2;
	sr21 = alpha( vp(tv(e3+ e2loc2),sr2), 0.7),
	sr22 = alpha( vp(tv(-e3+ e2loc2),sr2), 0.7),
	dynamic{FIGa:
	meetsr2 = idual(sr21^sr22),
	labelsr2 = c3ga_point(labelloc + e2loc2);
	label(labelsr2,"(a)"),
	};

	sr11 = alpha( vp(tv(e3),sr1), 0.7),
	sr12 = alpha( vp(tv(-e3),sr1), 0.7),
	dynamic{FIGb:
	meetsr1 = 0.2 idual(sr11^sr12),
	labelsr1 = c3ga_point(labelloc);
	label(labelsr1,"(b)"),
	};

	e2loch = (2+1/sqrt(2)) e2;
	srh1 = alpha( vp(tv(e3+ e2loch),srh), 0.7),
	srh2 = alpha( vp(tv(-e3+ e2loch),srh), 0.7),
	dynamic{FIGc:
	meetsrh = idual(srh1^srh2),
	labelsrh = c3ga_point(labelloc+e2loch);
	label(labelsrh,"(c)"),
	};
}

function idual(X) { return X.(no^((c3ga)I3)^ni);}
