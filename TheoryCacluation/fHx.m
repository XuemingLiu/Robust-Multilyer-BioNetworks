
% function of the xc of derive the size of GWCC
function  out  = fHx(DegDis, x, p)
    z = x*p + 1 - p;
    out = x - RealHGer(DegDis, z);
end
