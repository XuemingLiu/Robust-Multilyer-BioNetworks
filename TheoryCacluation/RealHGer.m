
function out = RealHGer(DegDis, x)

out = 0;
Averk = 0;
for k = 2:1:length(DegDis)
    out = out + DegDis(k)*(k-1)*x^(k-2);
    Averk = Averk + DegDis(k)*(k-1);
end

out = out/Averk;