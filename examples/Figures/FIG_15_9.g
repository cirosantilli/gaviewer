// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_15_9() {
// Created 20070427 LD
// Original title FIGaffinecomb()
	batch pantilt();
	batch init();

	set_window_title("FIG(15,9):  Affine combination of circles and point pairs");

	init(2)
	pantilt(0.4,0.4);
	campos = 4 e3;
		
	p = no;
	q = c3ga_point(e1);
	r = c3ga_point(e2);
	s =  c3ga_point(e3);

	dynamic{psq: psq = red((ori(p^s^q))),};
	dynamic{psr: psr = blue((ori(p^s^r))),};
	dynamic{psqr: psqr = color(p^s^q^r,0.5,0.5,0),};
	ctrl_range(lambda=0.5,-1,2,0);
	dynamic{lpqr: lpqr=color(ori(lambda (psq) + (1-lambda) (psr)), lambda,0,1-lambda),}

	// non-interactive version
	// dynamic{lspqr: for(i=1;i<10;i=i+1) {lambda = i/10; lpsqr[i]=color((ori(lambda psq + (1-lambda) (psr))),lambda,0,1-lambda),};};
	prompt("FIG(15,9)a >> ");
	suspend;
//================================
	init(2); 
	set_point_size(0.05);
		
	p = no;
	q = c3ga_point(e1);
	r = c3ga_point(e2);
	ctrl_range(lambda=0.5,-1,2,0);

	dynamic{pq: pq = red(dm2(ori(p^q))),};
	dynamic{pr: pr = blue(dm2(ori(p^r))),};
	p = black(p),
	dynamic{pqr: pqr = color(p^q^r,0,0.5,0),};
	dynamic{lpqr: lpqr=color(dm2(ori(lambda (pq) + (1-lambda) (pr))),lambda,0,1-lambda),}


	// non-interactive version
// 	dynamic{lpqr: for(i=1;i<10;i=i+1) {lambda = i/10; lpqr[i]=color(dm2(ori(lambda (pq) + (1-lambda) (pr))),lambda,0,1-lambda),};};
	prompt("FIG(15,9)b >> ");
	suspend;


	prompt();

}


