batch DEMOdupin2() {
// generate a torus, and from that, a dupin quadric
// this one has a parametrization which prevents self-intersecting tori
batch init_c3ga();

init_c3ga();

ctrl_range(r1=1,0.01,5);
ctrl_range(r2=2,0.01,10);
istep=20;
dynamic{c = (no-r2 r2 ni/2)^e2; l = hide(dual(no^c));}; // generating dual circle and dual line for the torus
dynamic{torusseed: seed = vp(1-(r1+r2) e1^ni/2,no); seedC = seed^c; scaleC=ni.seedC; seedcenter = -seedC ni seedC/2/scaleC/scaleC; seedr = sqrt(seedC seedC)/sqrt(-scaleC scaleC); newseed = vp(1- seedr e1^ni/2,no);}; // to compute the natural projecting sphere from the seed point. this may not be worth it

dynamic{torus: for(i=0;i<istep;i=i+1) { x[i] = vp( exp(1-(seedcenter-no)^ni/2) exp(-e1^e2 pi i/istep), newseed); y[i] = vp(exp(-e1^e3 pi i/istep),seed); C1[i] = alpha(y[i]^c,0.2), C2[i]=alpha(x[i]^l,0.2),},};
s = white(alpha(no- ni/2,0.2)),
dynamic{dupin: for(i=0;i<istep;i=i+1) { dC1[i] = red(s C1[i] s), dC2[i]=red(s C2[i] s), }; };

}

