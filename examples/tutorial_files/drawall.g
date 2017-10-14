// draws the meet, join, projection and rejection of two blades
// this is e3ga
batch drawall(e3ga argument_1, e3ga argument_2) {
	drawall_obj1 = blue( argument_1 ),
	drawall_obj2 = green( argument_2 ),
	
	drawall_comp = red( lcont(argument_1, argument_2) ),
	drawall_proj = cyan( da_comp / argument_2 );
	drawall_rej = magenta( argument_1 - drawall_proj );
	
	drawall_meet = black( argument_1 & argument_2 ),
	drawall_join = yellow( argument_1 | argument_2 ),
}

batch remove_drawall() {
	remove(drawall_obj1);
	remove(drawall_obj2);
	remove(drawall_comp);
	remove(drawall_proj);
	remove(drawall_rej);
	remove(drawall_meet);
	remove(drawall_join);
}
