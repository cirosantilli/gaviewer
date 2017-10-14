batch drawline(e3ga vector, e3ga bivector)
// draw a line given by a direction vector and a bivector containing it
// (and we test whether it does!)
// determine the color by setting 'cmd("fgcolor red")' etc first.
//
// BUG: you have to call it with a 'hide' of the arguments, 
//	or it will draw those, so drawline(hide(e1),hide(e2),1,0,0);
// this is e3ga
{
	if (vector^bivector == 0) {
	   	p = bivector / vector;
		p1 = p - 2 vector;
		p2 = p + 2 vector;
		cmd("polygon dummy 2 p1 p2 dm2");
	} else {
		cprint("drawline: inconsistent bivector");
		return 0;
	}
}
