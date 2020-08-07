function out= u_sol(DegDis, p)
%This function used to compute the size of the GWCC in a ER network
% 1-out is the size of a network with a average degree z
step_x = 0.0001;

init = 0;

for i = 0:step_x:0.5
    if fHx(DegDis, i, p) * fHx(DegDis, i+step_x, p) < 0
        init = i;
        break;
    end
end

a = init;
deta = 10;

% ??????????
while(deta > 0.0001)
    deta = abs(fHx(DegDis, a, p)/Dif_fHx(DegDis, a, p));
    a = a - fHx(DegDis, a, p)/Dif_fHx(DegDis, a, p);  
end

out = a;

end

