batch init_c3ga();

batch DEMOcircle_meet()
{

	init_c3ga();

	dynamic{camori=1,};
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{MEETING CIRCLES} \\ Move the circles. \\ Tangency gives attitude, providing continuity.}\" flag_2d flag_px flag_py");
	I2 = e1^e2;
	A = ori( (no+ni/2)^I2), label(A);
	B = ori( (no+ni/2)^I2), label(B);
	dynamic{M: M=ori((B.(no^I2^ni)).A),};
}
