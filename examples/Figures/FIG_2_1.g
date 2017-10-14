// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_2_1()
// Created 20070425 LD
// Original title FIGspanning()
{
	batch init();
	batch pantilt();

	init(0);
	set_window_title("FIG(2,1)abcd: Spanning homogeneous subspaces in 3-D [static figure]");

camori = 7.650169e-001 + 5.378716e-001*e2^e3 + 1.884499e-001*e3^e1 + 2.998831e-001*e1^e2;
campos = -1.965600e+000*e1 + 6.089000e-001*e2 + 1.510000e+001*e3;

	set_point_size(0);


	dynamic{ALL:
	trans = (e1+e2);

	s = 2;
	tr = 0.75 s trans;

	Tl1 = tr+ s(e1/2 - (e2+e3)/20); label(Tl1,"\eqn{\bold{a}}");
	Tl2 = tr+ s(e1+ e2/2 - (-e1+e3)/20); label(Tl2,"\eqn{\bold{b}}");
	Tl3 = tr+ s(e1+ e2 + e3/2 - (-e1-e2)/20); label(Tl3,"\eqn{\bold{c}}");
	Tol = tr+ -e1/5-e2/10; label(Tol,"O");

	Tcube1 = color(dm3(vp(tv(tr+ s (e3)),no^e1^e2 s s)) ,1,1,0,1),
	Tcube3 = color(dm3(vp(tv(tr+ s (e1)),-no^e2^e3 s s)) ,1,1,0,1),
	Tcube4 = color(dm3(vp(tv(tr+ s (0)),-no^e2^e3 s s)) ,1,1,0,1),
	Tcube2 = color(dm3(vp(tv(tr+ s (0)),no^e1^e3 s s)) ,1,1,0,1),
	Tcube5 = color(dm3(vp(tv(tr+ s (e2)),no^e1^e3 s s)) ,1,1,0,1),
	Tcube6 = color(dm3(vp(tv(tr+ s (0)),no^e1^e2 s s)) ,1,1,0,1),
	// text_init();
	Tlc = tr+ s(e1 + e2 +e3)/2 - 0.3 s (e1+e2-e3/5); 
	label(Tlc,"\eqn{\bold{a \op b \op c}}");

	Ttan1 = red(vp(tv(tr+ 0) ,s no^e1)),
	Ttan2 = red(vp(tv(tr+ s e1),s no^e2)),
	Ttan3 = red(vp(tv(tr+ s (e2+e1)),s no^e3)),

	dl = tr-e3; label(dl,"(d)");

	//------------------------------------------------------
	tr = - s trans;
	s = 2;
	Bol = tr+ -e1/5-e2/10; label(Bol,"O");
	Bcube6 = color(dm3(vp(tv(tr+ -e3/50),2 no^e1^e2 s s)) ,1,1,0,0.2), // big plane
	biv = no_shade(color(dm3(vp(tv(tr+ s (0)),no^e1^e2 s s)) ,1,0.2,0.2,1)), 
	bivori = no_shade(color(ori(dm1(vp(tv(tr+ s (e1+e2)/2+e3/50),no^e1^e2 s s/2))),1,0.2,0.2,1)), 

	Bl1 = tr+ s(e1/2 - (e2+e3)/20); label(Bl1,"\eqn{\bold{a}}");
	Bl2 = tr+ s(e1+ e2/2 - (-e1+e3)/20); label(Bl2,"\eqn{\bold{b}}");
	Btan1 = color(vp(tv(tr+0),s no^e1),0.8,0,0),
	Btan2 = color(vp(tv(tr+ s e1),s no^e2),0.8,0,0),
	Blc = tr+ 0.4 s (e1+e2) + s e3/10;
	label(Blc,"\eqn{\bold{a \op b}}");
	cl = tr-e3; label(cl,"(c)");

	//------------------------------------------------------

	tr = - 2 s trans;
	Lol = tr+ -e1/5-e2/10; label(Lol,"O");
	s = 2;
	aline = color(vp(tv(tr+0),no^e1^ni),1,0,0,0.2),

	Ll1 = tr+ s(e1/2 - (e2+e3)/20); label(Ll1,"\eqn{\bold{a}}");
	Ltan1 = color(vp(tv(tr+0),s no^e1),0.8,0,0),
	bl = tr-e3; label(bl,"(b)");


	//------------------------------------------------------

	tr = - 3 s trans;
	Pol = tr+ -e1/5-e2/10; label(Pol,"O");
	Pal = tr+ -e1/5+e2/5+e3/10; label(Pal,"\eqn{\alpha}");

	s = 2;
	set_point_size(0.05);
	x = c3ga_point(tr+0),
	al = tr-e3; label(al,"(a)");
	};

	prompt();
}



