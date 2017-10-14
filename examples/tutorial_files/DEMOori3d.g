// demonstration of aspects of orientation
batch DEMOori3d()
{
function flat_tangent();
batch init_c3ga();

init_c3ga();
prompt("DEMOori3d >> ");
camori = 9 + 2.5 e2^e3 + 2.5 e3^e1 - 2 e1^e2;
campos = e2 + 25 e3;

a = pt(e1), b = pt(e2), c = pt(e3), d = no,
label(a); label(b); label(c); label(d);
I5 = no^e1^e2^e3^ni;
dynamic{ line1:   line1 = no_weight(ori( a^d^ni   )),};
dynamic{ circle1: circle1 = no_weight(ori( a^b^c    )),};
cmd("label exp_ [5*e1+5*e2] \"\txt{\white{ORIENTATION DEMO} \\ line: a \op b \op \infty \\ circle: a \op b \op c}\" flag_2d flag_px flag_py");
suspend;

dynamic{plane1: plane1  = a^b^c^ni,};
dynamic{oriplane1: oriplane1  = color(dm6 (flat_tangent(plane1) ),0.8,0.8,0.3),};
cmd("label exp_ [5*e1+5*e2] \"\txt{\white{ORIENTED INTERSECTION} \\ line: a \op b \op \infty \\ circle: a \op b \op c \\ plane: a \op b \op c \op \infty}\" flag_2d flag_px flag_py");
suspend;

cld(circle1); remove(circle1);
cmd("label exp_ [5*e1+5*e2] \"\txt{\white{ORIENTED INTERSECTION} \\ line: a \op b \op \infty \\ plane: a \op b \op c \op \infty}\" flag_2d flag_px flag_py");
dynamic{point1: point1 = show(no_weight((line1/-norm(line1) /I5) . plane1/-norm(plane1))),};
ctrl_range("meet_weight" = 0,-1,1);
dynamic{meet_weight: "meet_weight" = (no^ni).point1; };
cmd("show \"scalar_controls\" ");
label(d,"\white{d}");
cprint("MOVE d AROUND");
cprint("Note that \"meet_weight\" positive when line oriented with right-handed normal of the plane");
suspend;

remove(d); remove(d_label);
plane2 = color(-dual((c3ga) e1),1,0.5,0.5,1),
cmd("label exp_ [5*e1+5*e2] \"\txt{\white{ORIENTATION DEMO} \\ plane: a \op b \op c \op \infty \\ plane2 = dual(e1)}\" flag_2d flag_px flag_py");
dynamic{ oriplane2  = color(dm6 ( flat_tangent(plane2) ),1,0.6,0.6),};
dynamic{ line1: line1  = white(no_weight(ori( (normalize(plane2) /I5) . normalize(plane1) ))),};
dynamic{ oriline  = flat_tangent(line1),};
dynamic{meet_weight: "meet_weight" = -norm(line1); };
label(a, "\white{a}");
cprint("MOVE a AROUND");
cprint("note that orientation of white line is: from yellow to pink");

prompt();
}

