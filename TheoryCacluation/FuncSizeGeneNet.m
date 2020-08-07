function FuncFrac = FuncSizeGeneNet(Deg_NetA,   p)

RemainFrac = 0;
for k = 2:1:length(Deg_NetA(:,1))
        RemainFrac = RemainFrac + Deg_NetA(k,3) * p^(Deg_NetA(k,1)+1);
end

   P_k_Remain = 0;
   % for k = 0:1:(length(OutdegDis{1,1})-1)
   k=0;
        for i = 1:1:(length(Deg_NetA(:,1)))
            P_k_Remain = P_k_Remain + Deg_NetA(i,3)*RemainFrac^k*(1-RemainFrac)^(Deg_NetA(i,1)-k)*nchoosek(Deg_NetA(i,1), k) *RemainFrac^k*(1-RemainFrac)^(Deg_NetA(i,2)-k)*nchoosek(Deg_NetA(i,2), k);  
        end

   
   if P_k_Remain(1)<0
       P_k_Remain(1) = 0;
   end
   
    FuncFrac = RemainFrac*(1-P_k_Remain(1));
  
