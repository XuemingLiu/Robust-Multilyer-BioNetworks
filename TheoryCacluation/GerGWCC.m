function out = GerGWCC(P_k, x)

out  = 0;
for i = 1:1:length(P_k(:,1))
    out = out + P_k(i)*x^(i-1);
end

end
