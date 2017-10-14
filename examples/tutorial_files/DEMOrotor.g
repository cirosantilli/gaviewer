// inspired by old DEMOrotor from GABLE
batch DEMOrotor() {
	function unit();
	batch init_e3ga();
	
	init_e3ga();
	camori=1;
	prompt("DEMOrotor >> ");

	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{ROTORS} \\ Define a rotation by plane I and angle \phi . \\ Form \eqn{R = e^{-I\phi/2}} \\ All elements X rotate as R \gp A/R.}\" flag_2d flag_px flag_py");
	I = white(ori(e1^e2));
	ctrl_range(phi=0,-2 pi,2 pi); phi = pi/6;
	dynamic{R = white( exp(I phi/2)),}; label(R);
	suspend;
	cprint("");
	R = R, // print it to the console
	cprint("");
	suspend;
	x = e1+e2+e3, label(x);
	suspend;
	dynamic{Rx = R x/R,}; label(Rx, "R \gp x /R");

	suspend;

	otherpart = e2+e3;
	dynamic{locationA = unit(otherpart) sqrt(-A.A)/ pi;};
	dynamic{A = weight(x^otherpart),}; 
	label(locationA,"\white{A}");
	suspend;
	dynamic{RA = weight(R A/R),}; 
	dynamic{Rlocation = R locationA /R;};
	label(Rlocation, "\white{R \gp A /R}");
	suspend;
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{ROTORS} \\ Define a rotation by plane I and angle \phi . \\ Form \eqn{R = e^{-I\phi/2}} \\ All elements X rotate as R \gp A/R. \\ \yellow{Do not use the axis, that is soooo 3D.}}\" flag_2d flag_px flag_py");
	dynamic{axis = yellow(I phi/I3),}; label(axis,"\yellow{I \phi/I_{3}}");

	prompt();
}
