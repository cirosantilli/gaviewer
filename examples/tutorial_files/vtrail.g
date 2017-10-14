batch vtrail(V,A) { vtrail(V,A,25);}

batch vtrail(V,A,n)
// apply the versor V to A, n times looking fainter with every step
{ 
label(A);
A[0] = alpha(A,0.99),
for (i=1;i<n+1;i=i+1) {A[i] = alpha(weight(vp(V,A[i-1])),1-i/n),};
}

