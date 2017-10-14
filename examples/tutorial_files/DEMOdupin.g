batch init_c3ga();
batch DEMOdupin() {
	//  generate a torus, and from that, a dupin quadric
 
	init_c3ga();

	cmd(" show scalar_controls");
	ctrl_range(r1=1,0.0001,5);
	ctrl_range(r2=2,0.0001,10);
	istep=20; 

     	cmd("label exp1_ [5*e1+5*e2] \"\txt{\white{DUPIN'S CYCLIDE IS THE SPHERICAL INVERSION OF A TORUS}}\" flag_2d flag_px flag_py");
	dynamic{setup: seedpoint = vp(1-r1 e1^ni/2,no); seedcircle = vp(1-r2 e1^ni/2,(no+r1 r1 ni/2)^e1^e2);l=hide(no^(no-r2 r2 ni/2)^e2);};
	dynamic{torus: for(i=0;i<istep;i=i+1) { C1[i] = alpha(vp((1-r2 e1^ni/2) exp(-e1^e2 pi i/istep), seedpoint)^dual(l),0.3), C2[i] = alpha(vp( exp(-e1^e3 pi i/istep),seedcircle),0.3),};};
	s = white(alpha(no-ni/2,0.2)),
	dynamic{dupin: for(i=0;i<istep;i=i+1) { dx[i] = red(s C1[i]/s), dy[i] = red(s C2[i]/s),};};
}
