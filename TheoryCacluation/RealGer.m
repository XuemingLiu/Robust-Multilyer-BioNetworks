
% DegDis start from k=0

function out = RealGer(DegDis, x)

out = 0;
for k = 1:1:length(DegDis)
    out = out + DegDis(k)*x^(k-1);
end