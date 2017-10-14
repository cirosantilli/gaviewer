batch DEMOvoronoi_cell() 
{
batch init_c3ga();
function grey_canvas();

init_c3ga();
grey_canvas(0.7);
dynamic{camori=1; I4=no^e1^e2^ni;}

p = c3ga_point(2 e1);	label(p);
q = c3ga_point(-2 e2);	label(q);
r = c3ga_point(-2 e1);	label(r);
s = c3ga_point(2 e2);	label(s);
// a quadrangle
dynamic{segpq: segpq=red(dm2(ori(p^q))),};
dynamic{segqr: segqr=red(dm2(ori(q^r))),};
dynamic{segrs: segrs=red(dm2(ori(r^s))),};
dynamic{segsp: segsp=red(dm2(ori(s^p))),};

// let us study the arc as parametrized by q, in dependence of the position of s
dynamic{lpq: lpq = ori((q-p) I4),};
dynamic{lqr: lqr = ori((r-q) I4),};
dynamic{Ppqr: Ppqr=((q-p) ^ (r-q)) I4; Ppqr = Ppqr/((no^ni).Ppqr),};
dynamic{lrs: lrs = alpha(ori((s-r) I4),0.2),};
dynamic{lsp: lsp = alpha(ori((p-s) I4),0.2),};
dynamic{Prsp: Prsp=((s-r) ^ (p-s)) I4; Prsp = Prsp/((no^ni).Prsp),};
// the scale factor: its sign denotes whether this is an actual edge
cmd("show scalar_controls");
ctrl_range("pqr"=0,-0.99,0.99);

dynamic{"pqr": "pqr"=(p^q^r^s)/(p^q^r^ni);}
dynamic{cir_prs: cir_prs=yellow(p^r^s),};
dynamic{vor: vor= blue(ori(-(r-p)/I4 "pqr")),};
dynamic{pqrs: pqrs= (Prsp)^(q.Ppqr),};


}
