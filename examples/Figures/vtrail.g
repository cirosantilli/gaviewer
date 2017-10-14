// draw the trail of the element A under the versor V

batch vtrail(V,A) { vtrail(V,A,25);}

batch vtrail(V,A,N) { vtrail(V,A,N,1);}

batch vtrail(V,A,NT,fade)
// apply the versor V to A, NT times 
// fade = 1: looking fainter with every step
// fade = 0: same strength every step
{ 
label(A);
A[0] = alpha(A,0.99),
if (fade==1) {
   for (i=1;i<NT+1;i=i+1) {A[i] = alpha(weight(vp(V,A[i-1])),1-i/NT),};
} else {
   for (i=1;i<NT+1;i=i+1) {A[i] = weight(vp(V,A[i-1])),};
}

}

//====================================================================


batch vtrailframe(V,O,n)
// Apply the versor V to the frame at point p, n times,
// looking fainter with every step.
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

batch vtrailframe(V,O) { vtrailframe(V,O,25); }


