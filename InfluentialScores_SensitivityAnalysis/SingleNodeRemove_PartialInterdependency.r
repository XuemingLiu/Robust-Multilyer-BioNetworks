# Sensitivity Anaylsis: Change the coupling strength from 10% to 100% of the original strength.
# the final functional network sizes in the PPI for the partial coupled cases, after removing each gene


library(igraph)

#g_PPI_Ori <- read.graph("PPI_Net_Num.txt", format = c("edgelist"))
g_PPI_Ori <- read.graph("PPI_NoSelfLoop_WCC.txt", format = c("edgelist"))
wccb <- clusters(g_PPI_Ori, mode="weak")
largest_wcc_vb <- which(wccb$membership == which.max(wccb$csize))
OriFailNodes <- setdiff(V(g_PPI_Ori), largest_wcc_vb)
g_PPI <- delete.edges(g_PPI_Ori, E(g_PPI_Ori)[V(g_PPI_Ori)[OriFailNodes] %--% V(g_PPI_Ori)])       			
N_PPI <- length(largest_wcc_vb)
PPI_Nodes <- largest_wcc_vb
g_PPI_Read <- g_PPI

PPI_Deg <- degree(g_PPI, V(g_PPI), mode = c("all"))  
PPI_Isolates <- which(PPI_Deg==0)

g_GRN_Read <- read.graph("Gene_Net_Num.txt", format = c("edgelist"))
Gene_Deg <- degree(g_GRN_Read, V(g_GRN_Read), mode = c("all"))  
N_gene <- length(V(g_GRN_Read))-length(which(Gene_Deg==0))
Gene_Nodes <- setdiff(V(g_GRN_Read),which(Gene_Deg==0)) 

Gene_PPI_Nodes <- intersect(which(Gene_Deg!=0),which(PPI_Deg!=0))
N_Gene_PPI <- length(Gene_PPI_Nodes)
Isolates_Ori <- union(which(Gene_Deg==0),which(PPI_Deg==0))

for(i_Rep in 1:25)
{
	for(Denpend_Frac in (1:10)/10)
	{
		New_Isolates_ids <- igraph.sample(1, N_Gene_PPI, N_Gene_PPI*(1-Denpend_Frac))
		New_Isolates <- Gene_PPI_Nodes[New_Isolates_ids]
		Isolates <- union(Isolates_Ori, New_Isolates)
		Non_Iso <- setdiff(V(g_GRN_Read), Isolates)
		
		num_gfunc_max <- 10
		pmax <- N_Gene_PPI

		Siz_funca <- array(0, dim = c(pmax, num_gfunc_max))
		Siz_funcb <- array(0, dim = c(pmax, num_gfunc_max))

		Size_FuncGene <- array(rep(0,pmax*(1)), dim=c(pmax,1))
		Size_FuncPPI <- array(rep(0,pmax*(1)), dim=c(pmax,1))
        
		for(p_num in 1:N_Gene_PPI)
		{
    			g_ori <- g_GRN_Read
				g_PPI <- g_PPI_Read

            	Del_Ver1 <- Gene_PPI_Nodes[p_num]
            	if(length(intersect(Del_Ver1, Non_Iso))!=0)	
            	{
        			Del_Ver2 <- neighborhood(g_ori, 1, nodes=Del_Ver1, "out")
        			Del_Ver <- unique(unlist(Del_Ver2))        
        			Rand_Ver <- setdiff(V(g_ori),Del_Ver)    
        			g_ori <- delete.edges(g_ori, E(g_ori)[V(g_ori)[Del_Ver] %--% V(g_ori)])
        	    	
        			Siz_funca[p_num, 1] <- N_gene
        			Siz_funcb[p_num, 1] <- N_PPI
 
        			####Degrees distribution of the original network
        			EROri_Deg <- degree(g_ori, V(g_ori), mode = c("all"))        
        			Siz_funca[p_num, 2] <- length(which(EROri_Deg!=0))
        
        			#######  PPI
        			Del_Vertices_ori <- which(EROri_Deg==0)
        			Del_Vertices <- setdiff(Del_Vertices_ori, Isolates)
        			Del_Vertices <- union(Del_Vertices, Gene_PPI_Nodes[p_num])
        			g_PPI <- delete.edges(g_PPI, E(g_PPI)[V(g_PPI)[Del_Vertices] %--% V(g_PPI)])
        	
        			wccb <- clusters(g_PPI, mode="weak")
        			largest_wcc_vb <- which(wccb$membership == which.max(wccb$csize))
        			Siz_funcb[p_num, 2] <- length(largest_wcc_vb)  
           
         			k_while <- 2
        			while((Siz_funca[p_num, k_while]!=Siz_funca[p_num, k_while-1]) || (Siz_funcb[p_num, k_while]!=Siz_funcb[p_num, k_while-1]))   {
                    		k_while <- k_while+1
                    		Del_Ver0 <- setdiff(V(g_PPI), largest_wcc_vb)
                    		Del_Ver1 <- setdiff(Del_Ver0, Isolates)
        					Del_Ver2 <- neighborhood(g_ori, 1, nodes=Del_Ver1, "out")
        					Del_Ver <- unique(unlist(Del_Ver2))
        					g_ori <- delete.edges(g_ori, E(g_ori)[V(g_ori)[Del_Ver] %--% V(g_ori)])
        					EROri_Deg <- degree(g_ori, V(g_ori), mode = c("all"))        
        					Siz_funca[p_num, k_while] <- length(which(EROri_Deg!=0))
        
        					#######  PPI
        					Del_Vertices_ori <- which(EROri_Deg==0)
        					Del_Vertices <- setdiff(Del_Vertices_ori, Isolates)
        					g_PPI <- delete.edges(g_PPI, E(g_PPI)[V(g_PPI)[Del_Vertices] %--% V(g_PPI)])
        					wccb <- clusters(g_PPI, mode="weak")
        					largest_wcc_vb <- which(wccb$membership == which.max(wccb$csize))
        					Siz_funcb[p_num, k_while] <- length(largest_wcc_vb)     
        			}
       		    	Size_FuncGene[p_num] <- Siz_funca[p_num, k_while]
       		    	Size_FuncPPI[p_num] <- Siz_funcb[p_num, k_while]
       		    }else{
       		   	    g_PPI <- delete.edges(g_PPI, E(g_PPI)[V(g_PPI)[Del_Ver1] %--% V(g_PPI)])
        	        wccb <- clusters(g_PPI, mode="weak")
        		    largest_wcc_vb <- which(wccb$membership == which.max(wccb$csize))
        			Size_FuncPPI[p_num] <- length(largest_wcc_vb)      		   	
       		   }
       		    	
         }
        
		PPIFunc_NonIso <- Size_FuncPPI
		PPI_Nodes_Robust <- array(rep(0,2*N_Gene_PPI),dim=c(N_Gene_PPI,2))  
		PPI_Nodes_Robust[,1] <- Gene_PPI_Nodes[order(PPIFunc_NonIso)] 
		PPI_Nodes_Robust[,2] <- sort(PPIFunc_NonIso) 

		FileName1 <- paste("PartialDenpendFrac",Denpend_Frac*10, sep="")
		FileName2 <- paste(FileName1,"_Rep", sep="")
		FileName3 <- paste(FileName2,i_Rep+25, sep="")
		FileName4 <- paste(FileName3, "_CoupledPPI_Robust.txt", sep="")
    	write.table(PPI_Nodes_Robust, FileName4, row.names = FALSE, col.names = FALSE)      

	}
}
 