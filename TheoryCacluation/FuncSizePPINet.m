function PPI_FuncSize = FuncSizePPINet(P_k,FuncFrac)

x = fA_sol( P_k, FuncFrac);  %failure transfer to PPI
    za1 = x * FuncFrac + 1 - FuncFrac;
    PPI_FuncSize =  (1 - GerGWCC(P_k, za1));
end