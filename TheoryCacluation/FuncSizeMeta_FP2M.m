function out = FuncSizeMeta_FP2M(Size_PPI, P_Meta2PPI, qB, Meta_DegDis, fP2M)

RemoveB_A = 0;
for k = 1:1:269
    BiFrac = 0;
    for l = ceil(fP2M*P_Meta2PPI(k,1)):1:P_Meta2PPI(k,1)
        BiFrac = BiFrac + nchoosek(P_Meta2PPI(k,1), l)*(1-Size_PPI)^(l) * Size_PPI^(P_Meta2PPI(k,1)-l);
    end        
    RemoveB_A = RemoveB_A + P_Meta2PPI(k,2)*BiFrac;
end
    
for km = 270:1:299
    RemoveB_A = RemoveB_A + P_Meta2PPI(km,2)*(1-fP2M);
end
    pB = 1-qB*RemoveB_A;
    out = SizeWCC(Meta_DegDis, pB);  