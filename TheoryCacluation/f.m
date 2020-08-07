function  out  = f(P_k, x, p)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    z = x*p + 1 - p;
    out = x - HGWCC(P_k, z);
end
