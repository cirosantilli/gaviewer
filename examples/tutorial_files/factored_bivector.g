// returns a ^ b, with draw mode 'parallelogram'
function factored_bivector(e3ga a, e3ga b) {
	set_factor(0, a);
	set_factor(1, b);
	return dm2(a ^ b);
}


