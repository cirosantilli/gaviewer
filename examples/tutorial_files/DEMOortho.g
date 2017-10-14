// orthogonal construction
batch DEMOortho()
{
batch init_c3ga();

init_c3ga();
camori = 1-e1^e3/40 - e2^e3/40; // to prevent seeing them on edge
campos = 40 e3 + e1 +e2;
prompt("DEMOortho >> ");

cmd("label exp_ [5*e1+5*e2] \"\txt{\white{ORTHOGONAL SPECIFICATION}}\" flag_2d flag_px flag_py");
dp1 = e1+ni, 			label(dp1);
dp2 = no_shade(alpha(e2+ni,1)), label(dp2);
p = pt(e1+e2), 			label(p);
suspend;
dynamic{circle: circle = p^dp1^dp2,};
cmd("label exp_ [5*e1+5*e2] \"\txt{\white{ORTHOGONAL SPECIFICATION} \\ \green{circle} = p \op dp1 \op dp2}\" flag_2d flag_px flag_py");
suspend;
dynamic{ppair: ppair = ori(p^dp1),};
cmd("label exp_ [5*e1+5*e2] \"\txt{\white{ORTHOGONAL SPECIFICATION} \\ \green{circle} = p \op dp1 \op dp2 \\ \blue{ppair} = p \op dp1}\" flag_2d flag_px flag_py");
suspend;
dynamic{line0: line0 = ori(p^dp1^ni),};
cmd("label exp_ [5*e1+5*e2] \"\txt{\white{ORTHOGONAL SPECIFICATION} \\ \green{circle} = p \op dp1 \op dp2 \\ \blue{ppair} = p \op dp1 \\ \green{line} = p \op dp1 \op \infty}\" flag_2d flag_px flag_py");
suspend;
dynamic{plane: plane = alpha(p^dp1^dp2^ni,1),};
cmd("label exp_ [5*e1+5*e2] \"\txt{\white{ORTHOGONAL SPECIFICATION} \\ \green{circle} = p \op dp1 \op dp2 \\ \blue{ppair} = p \op dp1 \\ \green{line} = p \op dp1 \op \infty \\ \yellow{plane} = p \op dp1 \op dp2 \op \infty }\" flag_2d flag_px flag_py");
suspend;
// here a wait
cprint("Now manually change p, dp1, dp2 to dual spheres like no-ni...");
cprint("Vary dp2 -- theorem: all orthocircles through two spheres through same point pair");
prompt();
}

