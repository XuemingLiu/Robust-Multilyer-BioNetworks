function out = DifRealHGer(DegDis, x)

out = 0;
Averk = DegDis(2);
for k = 3:1:length(DegDis)
    out = out + DegDis(k)*(k-1)*(k-2)*x^(k-3);
    Averk = Averk + DegDis(k)*(k-1);
end

out = out/Averk;