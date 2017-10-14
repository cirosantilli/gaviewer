// Returns a line through two points 'a' and 'b'.
// Uses the conformal model, which is not documented inside GABLE+
function line(c3ga a, c3ga b) {
	return a ^ b ^ ni;
}

function line(e3ga a, e3ga b) {
	return c3ga_point(a) ^ c3ga_point(b) ^ ni;
}