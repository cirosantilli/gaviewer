// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_14_10() {
	// inverse kinematics
// Created 20070426 LD
// Original title FIGinvkin() 
    batch init();
    function unit();
    function unitline();
    function rLog();
    batch pantilt();
    
    set_window_title("FIG(14,10): Inverse kinematics of a robot arm");
    init(2);
    prompt("FIGinvkin >> ");
    pantilt(0,-pi/2);
    
    // robot home data
    vertical	= e3;
    upper 	= 2;
    lower	= 1.4; // arm lengths
    shoulder 	= no, // shoulder point
    base	= c3ga_point(-vertical), // base point
    // dynamic{elbowhome: elbowhome	= c3ga_point(upper e1);};
    // dynamic{wristhome: wristhome	= c3ga_point(upper e1 + lower e3);};

    // desired wrist point
    wrist  	= c3ga_point(2 e1), 
    dynamic{wristline: 
    	wristline = hide(unitline(shoulder^wrist^ni)); 
    	armplanehome = hide(unit(wristline^vertical)); 
	// drawarmplanehome = 0.1 shoulder.armplanehome, // the vertical arm plane
    };

    ctrl_range(swivel=0.5,-pi,pi);  // swivel angle for arm plane
    ctrl_bool(leftright=0); 
    
    dynamic{swivel: 
    	swivelV = exp(dual(wristline) swivel/2),
    	armplane = grade(vp(swivelV,armplanehome),4); 
	// drawarmplane =no_shade(yellow(0.1 shoulder.armplane)),
    };

    dynamic{ scene:
	dshouldersphere = white(alpha(shoulder - upper upper ni/2,0.2)),
    	dwristsphere 	= white(alpha(wrist - lower lower ni/2,0.2)),
    	elbowpotentiallocs = dual(dshouldersphere ^ dwristsphere),
    	elbowlocs = pp= grade((dshouldersphere ^ dwristsphere) . armplane,2),
    	elbow = grade( (pp - pow(-1,leftright) sqrt(pp pp))/(-ni.pp) ,1); 
	// drawarmplaneelbow =no_shade(yellow(0.1 elbow.armplane)),
	basesegment 	= red(dm2(base^shoulder)),
	uppersegment 	= red(dm2(shoulder^elbow)),
	lowersegment 	= red(dm2(elbow^wrist)),
    	upperline 	= hide(unitline(shoulder^elbow^ni)); 
    	lowerline 	= hide(unitline(elbow^wrist^ni)); 
	upperhome   	= hide(unitline(shoulder^e1^ni)); 
	shoulderV	= (1+upperline upperhome)/sqrt(2 + 2 upperline.upperhome),
	elbowV		= (1+lowerline upperline)/sqrt(2 + 2 lowerline.upperline),
	shoulderVdraw 	= ori(no_shade(-2 shoulder^rLog(shoulderV))),
	elbowVdraw 	= ori(no_shade(yellow(-elbow^rLog(elbowV)))),
	swivelpoint	= elbowpotentiallocs ni /elbowpotentiallocs;
	swivelpoint	= swivelpoint/(-2 ni.swivelpoint);
	swiveldraw	= ori(no_shade(color(-2 swivelpoint^rLog(swivelV),0,1,1))),
	//elbowV 		= exp(rLog(unitline(elbowline)/unitline(wristline))/2);
	// cmd("fgcolor 1 0 0 0.5 ");
	// cmd("polygon \"swivel\" 3 \"elbow\" \"wrist\" \"shoulder\" ");
	// cmd("fgcolor k");
    };
    label(shoulder,"\txt{\scale{1.0}{shoulder}}");
    dynamic{ifs: if (leftright==0) {label(elbow,"\txt{\scale{1.0}{right elbow}}");};
    if (leftright==1) {label(elbow,"\txt{\scale{1.0}{left elbow}}");};};
    label(wrist,"\txt{\scale{1.0}{wrist}}");
    label(base,"\txt{\scale{1.0}{base}}");
    cmd("fgcolor 0.5 0.5 0.5 0.5 ");
    label(uppersegment,"\txt{\scale{1.0}{upper}}");
    label(lowersegment,"\txt{\scale{1.0}{lower}}");
    cmd("fgcolor k");
    set_point_size(0.03);

    prompt();
}

function unitline(L) { dirL = (ni^no).L; return grade(L/sqrt(dirL dirL),3);}

