// demonstration of aspects of orientation
batch DEMOorientation()
{
function flat_tangent();
batch init_c3ga();

init_c3ga();
prompt("DEMOorientation >> ");
camori = 9 + 2.5 e2^e3 + 2.5 e3^e1 - 2 e1^e2;
campos = e2 + 25 e3;
cmd("label exp0 [5*e1+5*e2] \"\white\txt{ORIENTATION DEMO}\" flag_2d flag_px flag_py");

a = pt(e1), b = pt(e2), c = pt(e3), d = no,
I5 = no^e1^e2^e3^ni;
cmd("fgcolor 1 1 1 1");
cmd("label a_ a \"a\" flag_dynamic");
cmd("label b_ b \"b\" flag_dynamic");
cmd("label c_ c \"c\" flag_dynamic");
cmd("label d_ d \"d\" flag_dynamic");
cmd("fgcolor 0 0 0 0");
dynamic{ line1   = no_weight(ori( a^d^ni   )),};
dynamic{ circle: circle = no_weight(ori( a^b^c    )),};
cmd("label exp1 [5*e1+25*e2] \"\txt{line: a \op b \op \infty}\" flag_2d flag_px flag_py");
cmd("label exp2 [5*e1+45*e2] \"\txt{circle: a \op b \op c}\" flag_2d flag_px flag_py");
suspend;

dynamic{ plane  = a^b^c^ni,};
dynamic{ oriplane  = color(dm6 (flat_tangent(plane) ),0.8,0.8,0.3),};
cmd("label exp1 [5*e1+25*e2] \"\txt{plane: a \op b \op c \op \infty}\" flag_2d flag_px flag_py");
dynamic{ point1 = show(no_weight((line1/-norm(line1) /I5) . plane/-norm(plane))),};
ctrl_range("mag_pt" = 0,-1,1);
dynamic{mag_pt: "mag_pt" = (no^ni).point1; };
cprint("MOVE d AROUND")
cprint("Note that \"mag_pt\" positive when line oriented with normal of the plane");
suspend;

cld(circle); circle=0;
d=0;
cmd("label d_ d \"\" ");
plane1 = color(-dual(e1),1,0.5,0.5,1),
dynamic{ oriplane1  = color(dm6 ( flat_tangent(plane1) ),1,0.6,0.6),};
dynamic{ line2  = white(no_weight(ori( (plane1/-norm(plane1) /I5) . plane/-norm(plane) ))),};
dynamic{ orilin1  = flat_tangent(line2),};
dynamic{mag_pt: "mag_pt" = (no^ni).line2; };
cprint("MOVE a AROUND")
cprint("note that orientation of white line2 is: from yellow to pink");

prompt();
}

