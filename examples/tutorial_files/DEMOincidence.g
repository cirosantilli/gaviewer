batch DEMOincidence() {
	function pantilt();
	batch init_c3ga();

	init_c3ga();
	pantilt(0,-1.5);
	prompt("DEMOincidence >> ");

	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{INCIDENCE}}\" flag_2d flag_px flag_py");
	A1 = -dual(pt(-e1/2)-ni/2), label(A1,"\eqn{\yellow{A_{1}}}");
	A2 = -dual(pt(e1/2)-ni/4),  label(A2,"\eqn{\yellow{A_{2}}}");
	A3 = -dual(e3+0.01 ni),     label(A3,"\eqn{\yellow{A_{3}}}");
	suspend;
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{INCIDENCE}} \\ \eqn{A_{12} = (A_{2}/I_{5}) \ip A_{1}} \" flag_2d flag_px flag_py");
	dynamic{A12 = dual(A2).A1,}; label(A12,"\eqn{\green{A_{12}}}");
	suspend;
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{INCIDENCE}} \\ \eqn{A_{12} = (A_{2}/I_{5}) \ip A_{1} \\ A_{23} = (A_{3}/I_{5}) \ip A_{2}} \" flag_2d flag_px flag_py");
	dynamic{A23 = dual(A3).A2,}; label(A23,"\eqn{\green{A_{23}}}");
	suspend;
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{INCIDENCE}} \\ \eqn{A_{12} = (A_{2}/I_{5}) \ip A_{1} \\ A_{23} = (A_{3}/I_{5}) \ip A_{2} \\ A_{31} = (A_{1}/I_{5} \ip A_{3}} \" flag_2d flag_px flag_py");
	dynamic{A31 = dual(A1).A3,}; label(A31,"\eqn{\green{A_{31}}}");
	suspend;
	cmd("label exp_ [5*e1+5*e2] \"\txt{\white{INCIDENCE}} \\ \eqn{A_{12} = (A_{2}/I_{5}) \ip A_{1} \\ A_{23} = (A_{3}/I_{5}) \ip A_{2} \\ A_{31} = (A_{1}/I_{5}) \ip A_{3}} \\ A_{123} = (A_{23}/A_{2}) \ip A_{12}\" flag_2d flag_px flag_py");
	dynamic{A123 = (A23/A2).A12,}; label(A123,"\eqn{\blue{A_{123}}}");
	suspend;
	textinit();
	cprint("Of course also works when A3 is a sphere");
	suspend;
	A3 = -dual(no-ni),
	prompt();
}
