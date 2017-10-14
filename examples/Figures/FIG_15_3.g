// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_15_3() {
// Created 20070427
// Original title FIGimspheres()
	batch pantilt();
	batch init();
	function idual();

	set_window_title("FIG(15,3):  The meet and plunge of two spheres at increasing distances");
	
	init(2); // c3ga
	pantilt(0.0,0.2);
	set_point_size(0.05);

	s1 = no - ni/8;
	s2 = no - ni/2;

	labelloc = -1.5 e2;

	e1loca = -(1+sqrt(2)) e1;
	sa1 = alpha( vp(tv(5/3 e2+ e1loca),s1), 0.7),
	sa2 = alpha( vp(tv(e1loca),s2), 0.7),
	dynamic{FIGa:
		meeta = idual(sa1^sa2),
		dmeeta = sa1^sa2,
		smeeta = alpha( white(meeta/(ni.meeta)), 0.25),
		labela = c3ga_point(labelloc + e1loca);
		label(labela,"(a)"),
	};

	sb1 = alpha( vp(tv(4/3 e2),s1), 0.7),
	sb2 = alpha( vp(1,s2), 0.7),
	dynamic{FIGb:
		meetb = idual(sb1^sb2),
		dmeetb = sb1^sb2,
		smeetb = alpha( white(meetb/(ni.meetb)), 0.25),
		labelb = c3ga_point(labelloc);
		label(labelb,"(b)"),
	};

	e1locc = (1+sqrt(2)) e1;
	sc1 = alpha( vp(tv(e2/3+ e1locc),s1), 0.7),
	sc2 = alpha( vp(tv(e1locc),s2), 0.7),
	dynamic{FIGc:
		meetc = idual(sc1^sc2),
		dmeetc = sc1^sc2,
		smeetc = alpha( white(meetc/(ni.meetc)), 0.25),
		labelc = c3ga_point(labelloc + e1locc);
		label(labelc,"(c)"),
	};
}

function idual(X) { return X.(no^((c3ga)I3)^ni);}
