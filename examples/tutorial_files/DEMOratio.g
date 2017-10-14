batch DEMOratio() {
	batch vtrail();
	batch init_c3ga();
	init_c3ga();
	prompt("DEMOratio >> ");
	dynamic{vtrail(V,A,30),};
	A = no^e2^e3,

	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{VERSORS AS RATIOS OF FLATS} \\translation: ratio of flat points \\ \eqn{V = O_{2}/O_{1}} } \" flag_2d flag_px flag_py");

	p1 = no; 
	p2 = no; 
	label(p1,"\eqn{O_{1}}");
	label(p2,"\eqn{O_{2}}");
	dynamic{o1: o1 =p1^ni,};
	dynamic{o2: o2 =p2^ni,};
	dynamic{V: V = o2/o1;};
	suspend;

	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{VERSORS AS RATIOS OF FLATS} \\rotation: ratio of flat planes \\ \eqn{V = P_{2}/P_{1}} } \" flag_2d flag_px flag_py");
	n1 = (e3ga) e1, label(n1,"\red{\eqn{n_{1}}}");
	n2 = (e3ga) e2, label(n2,"\red{\eqn{n_{2}}}");
	p1 = c3ga_point(2 e1 + 2 e2);
	p2 = c3ga_point(2 e1 + 3 e2);
	dynamic{o1: o1 =p1.(n1^ni),};
	dynamic{o2: o2 =p2.(n2^ni),};
	dynamic{o1o2: o1o2=white(dual(o1^o2)),};
	label(p1,"\eqn{P_{1}}");
	label(p2,"\eqn{P_{2}}");
	suspend;

	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{VERSORS AS RATIOS OF FLATS} \\screw: ratio of flat lines \\ \eqn{V = L_{2}/L_{1}} } \" flag_2d flag_px flag_py");
	cld(o1o2); o1o2=0;
	dynamic{o1: o1 =p1^(n1^ni),};
	dynamic{o2: o2 =p2^(n2^ni),};
	label(p1,"\eqn{L_{1}}");
	label(p2,"\eqn{L_{2}}");

	prompt();
}
