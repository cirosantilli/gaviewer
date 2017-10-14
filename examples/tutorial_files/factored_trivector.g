// returns a ^ b ^ c, with draw mode 'parallelepiped'
function factored_trivector(e3ga a, e3ga b, e3ga c) {
	set_factor(0, a);
	set_factor(1, b);
	set_factor(2, c);
	return dm4(a ^ b ^ c);
}
 