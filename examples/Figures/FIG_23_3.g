// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_23_3() {
// Original title FIGray_rotation()
	batch init();
	function uLog();

	set_window_title("FIG(23,3): Rotating an object");

	init(2);
	set_gl_lines(1);

	campos = 1.375000e+000*e1 + -8.030000e-001*e2 + 1.100000e+001*e3;
	camori = -4.525494e-001 + 9.745837e-002*e2^e3 + -8.616757e-001*e3^e1 + -2.078845e-001*e1^e2;


	center = black(c3ga_point((e1+e2+e3)/2));
	label(center,"\txt{center of rotation}");
	dynamic{object: 
		// X = factored_trivector(e1,e2,e3),
		s = white(vp(tv((center^no^ni)/no^ni),no- ni)),
	};
	eye = c3ga_point(-4 e3),
	label(eye,"eye");
	f = e3;
	fp1 = (no+f+e1/10)^ni,
	fp2 = (no+f+e2/10)^ni,
	dynamic{scene:
		screen = dual(vp(tv(f),eye.(f^ni)));
		sp1 = eye+f +2 e1 + e2;
		sp2 = eye+f +2 e1 - e2;
		sp3 = eye+f -2 e1 - e2;
		sp4 = eye+f -2 e1 + e2;
		cmd("fgcolor 1.0 1.0 1.0 0.5");
		create_polygon(drscreen, fill, sp1, sp2, sp3, sp4),
		cmd("fgcolor k");
		fp1 = red( (fp1.screen)/screen ),
		fp2 = red( (fp2.screen)/screen ),
		ray1 = red(eye^fp1),
		ray2 = red(eye^fp2),
		pp1 = hide(s.ray1),
		pp2 = hide(s.ray2),
		p1 = (blue( (pp1 + sqrt(pp1 pp1))/(-ni.pp1) )),
		p2 = (blue( (pp2 + sqrt(pp2 pp2))/(-ni.pp2) )),
		line1 = hide(green(center^p1^ni));
		line2 = hide(green(center^p2^ni));
		R = line1/line2;
		r = exp(-uLog(R)/20);
		a[0] = p1;
		for (i=1;i<11;i=i+1) {
			a[i] = r a[i-1] reverse(r);
			aa[i] = dm4(a[i]^a[i-1]),
		};
		connect1 = blue(dm4(center^p1)),
		connect2 = blue(dm4(center^p2)),
		pfp1 = -((no^ni).(no^fp1))/((no^ni).fp1);
		pfp2 = -((no^ni).(no^fp2))/((no^ni).fp2);
		mousemotion = green( c3ga_point(pfp1) ^ c3ga_point(pfp2) );
	};
	label(aa[5],"\txt{required rotation}");
	label(sp2,"viewport");
	label(fp2,"mouse motion");
}
