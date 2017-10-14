
remove_const(I3);
remove_const(I5);
add_const(I3 = e1^e2^e3);
add_const(I5 = no^e1^e2^e3^ni);
RES1400 = 0;
RES1280 = 1;
RES1024 = 2;
RES800 =  3;
RES640 =  4;


function grey_canvas(howgrey) {
	if ( (0.0 <= howgrey) & (howgrey < 0.099)) { cmd("cvcolor 0.0 0.0 0.0"); };
	if ( (0.1 <= howgrey) & (howgrey < 0.199)) { cmd("cvcolor 0.1 0.1 0.1"); };
	if ( (0.2 <= howgrey) & (howgrey < 0.299)) { cmd("cvcolor 0.2 0.2 0.2"); };
	if ( (0.3 <= howgrey) & (howgrey < 0.399)) { cmd("cvcolor 0.3 0.3 0.3"); };
	if ( (0.4 <= howgrey) & (howgrey < 0.499)) { cmd("cvcolor 0.4 0.4 0.4"); };
	if ( (0.5 <= howgrey) & (howgrey < 0.599)) { cmd("cvcolor 0.5 0.5 0.5"); };
	if ( (0.6 <= howgrey) & (howgrey < 0.699)) { cmd("cvcolor 0.6 0.6 0.6"); };
	if ( (0.7 <= howgrey) & (howgrey < 0.799)) { cmd("cvcolor 0.7 0.7 0.7"); };
	if ( (0.8 <= howgrey) & (howgrey < 0.899)) { cmd("cvcolor 0.8 0.8 0.8"); };
	if ( (0.9 <= howgrey) & (howgrey < 0.999)) { cmd("cvcolor 0.9 0.9 0.9"); };
	if ( howgrey == 1.0) { cmd("cvcolor 1.0 1.0 1.0"); };
}

function textinit() // the label parameters
{
  cmd("tsmode equation");
  cmd("fgcolor 0 0 0");
  cmd("olcolor 0 0 0 0");
  cmd("bgcolor 0 0 0 0");
	grey_canvas(0.4);
// cmd("cvcolor 0.7 0.7 0.7");
}

function fontsizeinit(resolution){
  switch (resolution) {
  case 0: cmd("fontsize 24"); cprint("fontsize 24"); break;
  case 1: cmd("fontsize 24"); cprint("fontsize 24"); break;
  case 2: cmd("fontsize 16"); cprint("fontsize 16"); break;
  case 3: cmd("fontsize 16"); cprint("fontsize 16"); break;
  case 4: cmd("fontsize 12"); cprint("fontsize 12"); break;
  }
}

function clearall() { cld();clf();clc(); }

function init(modeltype)
{
	function clearall();
	
        clearall();
	if (modeltype == 0) { // "e3ga"
		default_model(e3ga);
		cprint("INIT: model is e3ga");
	}
	if (modeltype == 1) { // "p3ga"
		default_model(p3ga);
		cprint("INIT: model is p3ga");
	}
	if (modeltype == 2) { // "c3ga"
		default_model(c3ga);
		cprint("INIT: model is c3ga"); 
	}
	inner_product(lcont);
	cprint("INIT: inner product is left contraction");
	::autocolor = 1;
	textinit();
	fontsizeinit(RES1400);    // change for different screen sizes
	cmd("hide \"controls\"");
	// cmd("resize 2 22 600 547"); // for leo's compaq laptop 
	// cmd("cvcolor 0.7 0.7 0.7"); // why not take the textinit value?
}
// init(2); // default startup with conformal model

function init_e3ga() { init(0);}

function init_p3ga() { init(1);}

function init_c3ga() { init(2);}

// rename of some useful functions
function pt(v)    { return c3ga_point(v); }

