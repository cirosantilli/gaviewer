batch orient(Vlocate, Battitude, size,c1,c2,c3,alpha)
// Draw an orientation element  (circle with 6 hairs) on a flat
// Characterize the location by a Euclidean vector,
// and orientation by Eulidean attitude bivector.
// 'size' indicates size of circle
// 
// color(, c1,c2,c3,alpha) is used for display
{

circle =color( vp(tv(Vlocate), (no+ni size size/2)^Battitude), c1,c2,c3,alpha),
// establish 'random' vector in the  (non-zero)attitude

ns = 6; // number of spokes
Battitude = hide( (c3ga) Battitude );
nattitude = Battitude/sqrt(-Battitude.Battitude);

vecn = (e1.Battitude);
if (vecn == 0) vecn = (e2.Battitude);
vecn = vecn/sqrt(vecn vecn);
vec = size vecn/nattitude; 
vecn = 1.5 size sin(pi/ns) vecn;

for(i=1;i<=ns;i=i+1) {
	R = (c3ga) exp(nattitude i pi/ns);
	spoke[i] = color( dm4( vp(tv(Vlocate) R, c3ga_point(vec)^c3ga_point(vec-vecn) )), c1,c2,c3,alpha),
};

//
cmd("fgcolor c1 c2 c3 alpha");
}






