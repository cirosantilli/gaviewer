// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_4_3()
// Created 20070425 LD
// Original title FIGlinrot()
{
	batch init();
	function factored_bivector();

	set_window_title("FIG(4,3): A rotation around the origin of unit vectors in the plane");

//---------------------------------------------------------
//---------------------------------------------------------
	init(0);
	set_point_size(0);

	dynamic{camori =1;}

	u = red(e1-e2/3), label(u,"\eqn{\bold{u}}");
	v = red(e1+e2/3), label(v,"\eqn{\bold{v}}");

	dynamic{scene1:
		u = u/sqrt(u.u),
		v = v/sqrt(v.v),
		uv = no_shade(color(dm3(factored_bivector(u,v)),1,0.2,0.2,0.3)),
		// oriuv = red(ori(vp(tv((u+v)/2),(no+ni/100)^uv))),
		luv = (u+v); label(luv,"\eqn{\bold{u \op v}}");
		R = v/u;
		w = R v, label(w,"\eqn{\bold{w}}");
		vw = no_shade(color(dm3(factored_bivector(v,w)),1,0.2,0.2,0.3)),
		// orivw = red(ori(vp(tv((v+w)/2),(no+ni/100)^vw))),
		lvw = (v+w); label(lvw,"\eqn{\bold{v \op w}}");
		circle = blue(ori((no+ni/2)^e1^e2)),
	};
}





