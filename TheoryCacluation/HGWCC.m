
%The function of \Phi'(x)
function out = HGWCC(P_k, x)

out = 0;
Div = 0;
for i = 2:1:length(P_k)
    out = out + P_k(i)*x^(i-2)*(i-1);
    Div = Div + P_k(i)*(i-1);
end
out = out/Div;
end
