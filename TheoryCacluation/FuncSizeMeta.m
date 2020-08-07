function out = FuncSizeMeta(Size_PPI, P_Meta2PPI, qB, Meta_DegDis)

RemoveB_A = 0;
for k = 1:1:length(P_Meta2PPI(:,1))
    RemoveB_A = RemoveB_A + P_Meta2PPI(k,2)*(1-Size_PPI)^(P_Meta2PPI(k,1));
end
    
    pB = 1-qB*RemoveB_A;
    out = SizeWCC(Meta_DegDis, pB);  