
% function of the xc of derive the size of GWCC
function  out  = Dif_fHx(DegDis, x, p)
    z = x*p + 1 - p;
    out = 1 - DifRealHGer(DegDis, z)*p;
end
