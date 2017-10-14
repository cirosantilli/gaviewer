batch vtrailframe(V,O) { vtrailframe(V,O,25); }

batch vtrailframe(V,O,n)
// apply the versor V to the frame at poin p, n times looking fainter with every step
{ 
label(O);
// the tangent vectors and their colors
f1[0] = color(O^rcont((e1 ni),O), 1,0,0, 0.999),
f2[0] = color(O^rcont((e2 ni),O), 1,1,1, 0.999),
f3[0] = color(O^rcont((e3 ni),O), 0,0,1, 0.999),
for (i=1;i<n+1;i=i+1) {
	f1[i] = color(weight(vp(V,f1[i-1])), 1,0,0, 1-i/n),
	f2[i] = color(weight(vp(V,f2[i-1])), 1,1,1, 1-i/n),
	f3[i] = color(weight(vp(V,f3[i-1])), 0,0,1, 1-i/n),
};
}

