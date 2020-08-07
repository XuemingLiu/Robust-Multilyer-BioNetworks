
function out = SizeWCC(DegDis, p)
   u = u_sol(DegDis, p);
   zc = u*p + 1 - p;
   out = p*(1-RealGer(DegDis, zc));
