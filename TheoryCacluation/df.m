function out = df(P_k, x, p)
%DF Summary of this function goes here
%   Detailed explanation goes here
z = x*p + 1 - p;

dived = 0;
for i = 3:1:length(P_k)
    dived = dived + P_k(i)*(i-1)*(i-2)*z^(i-3)*p;
end

Div = 0;
for i = 2:1:length(P_k)
    Div = Div + P_k(i)*(i-1);
end

    out = 1 - dived / Div;

end
