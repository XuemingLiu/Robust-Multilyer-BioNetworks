function out= fA_sol(P_k, p)

step = 0.001;

init = step;

for i = 0:step:1
    if f(P_k, i, p) * f(P_k, i+step, p) < 0
        init = i;
        break;
    end
end

a = init;
deta = 10;
num = 1;

while(deta > 0.0001)
    deta = abs(f(P_k, a, p)/df(P_k, a, p));
    a = a - f(P_k, a, p)/df(P_k, a, p);  
    num = num + 1;
    if a == 0 
        a = rand();
    end
    if num > 100
        break
    end
end

out = a;
end

