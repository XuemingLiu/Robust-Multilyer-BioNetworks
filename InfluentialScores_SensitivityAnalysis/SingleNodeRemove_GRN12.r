# calculate the influence scores in themultilayer netowrks including tissue specific GRN12
# Output: final functional sizes in the PPI network

library(igraph)

g_ori <- read.graph("12_lymphocytes_of_b_lineage_Num.txt", format = c("edgelist"), directed=TRUE)
G_GRN_Read <- g_ori

#g_PPI_Ori <- read.graph("PPI_Net_Num.txt", format = c("edgelist"))
g_PPI_Ori <- read.graph("PPI_NoSelfLoop_WCC.txt", format = c("edgelist"))
wccb <- clusters(g_PPI_Ori, mode="weak")
largest_wcc_vb <- which(wccb$membership == which.max(wccb$csize))
OriFailNodes <- setdiff(V(g_PPI_Ori), largest_wcc_vb)
g_PPI <- delete.edges(g_PPI_Ori, E(g_PPI_Ori)[V(g_PPI_Ori)[OriFailNodes] %--% V(g_PPI_Ori)])       			
N_PPI <- length(largest_wcc_vb)
PPI_Nodes <- largest_wcc_vb
g_PPI_Read <- g_PPI
     			

Gene_Deg <- degree(g_ori, V(g_ori), mode = c("all"))  
PPI_Deg <- degree(g_PPI, V(g_PPI), mode = c("all"))       
Isolates <- union(which(Gene_Deg==0),which(PPI_Deg==0))
PPI_Isolates <- which(PPI_Deg==0)
N_gene <- length(V(g_ori))-length(which(Gene_Deg==0))
Gene_Nodes <- setdiff(V(g_ori),which(Gene_Deg==0)) 

num_gfunc_max <- 10
pmax <- length(V(g_ori))
k_max <- 10

FailSize_FuncGene <- array(rep(0,pmax*(k_max)), dim=c(pmax,k_max))
FailSize_FuncPPI <- array(rep(0,pmax*(k_max)), dim=c(pmax,k_max))

Siz_funca <- array(0, dim = c(pmax, num_gfunc_max))
Siz_funcb <- array(0, dim = c(pmax, num_gfunc_max))

Size_FuncGene <- array(rep(0,pmax*(1)), dim=c(pmax,1))
Size_FuncPPI <- array(rep(0,pmax*(1)), dim=c(pmax,1))
  
        
for(p_num in 1:pmax)
{
    	g_ori <- G_GRN_Read
		g_PPI <- g_PPI_Read

            Del_Ver1 <- p_num
        	Del_Ver2 <- neighborhood(g_ori, 1, nodes=Del_Ver1, "out")
        	Del_Ver <- unique(unlist(Del_Ver2))        
        	Rand_Ver <- setdiff(V(g_ori),Del_Ver)    
        	g_ori <- delete.edges(g_ori, E(g_ori)[V(g_ori)[Del_Ver] %--% V(g_ori)])
        	
        	Fail2PPI <- setdiff(Del_Ver, intersect(Del_Ver, Isolates))
        	    	
        	Siz_funca[p_num, 1] <- N_gene
        	Siz_funcb[p_num, 1] <- N_PPI
 
        ####Degrees distribution of the original network
        EROri_Deg <- degree(g_ori, V(g_ori), mode = c("all"))        
        Siz_funca[p_num, 2] <- length(which(EROri_Deg!=0))
        
        #######  PPI
        Del_Vertices_ori <- which(EROri_Deg==0)
        Del_Vertices <- setdiff(Del_Vertices_ori, Isolates)
        g_PPI <- delete.edges(g_PPI, E(g_PPI)[V(g_PPI)[Del_Vertices] %--% V(g_PPI)])
        	
        wccb <- clusters(g_PPI, mode="weak")
        largest_wcc_vb <- which(wccb$membership == which.max(wccb$csize))
        Siz_funcb[p_num, 2] <- length(largest_wcc_vb)  
           
         k_while <- 2
         while((Siz_funca[p_num, k_while]!=Siz_funca[p_num, k_while-1]) || (Siz_funcb[p_num, k_while]!=Siz_funcb[p_num, k_while-1]))     {
                    k_while <- k_while+1
                    Del_Ver0 <- setdiff(V(g_PPI), largest_wcc_vb)
                    Del_Ver1 <- setdiff(Del_Ver0, intersect(Del_Ver0, Isolates))
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
       
 
}

Gene_PPI_Nodes <- intersect(which(Gene_Deg!=0),which(PPI_Deg!=0))
PPIFunc_NonIso <- Size_FuncPPI[Gene_PPI_Nodes]  
PPI_Nodes_Robust <- array(rep(0,2*length(Gene_PPI_Nodes)),dim=c(length(Gene_PPI_Nodes),2))  
PPI_Nodes_Robust[,1] <- Gene_PPI_Nodes[order(PPIFunc_NonIso)] 
PPI_Nodes_Robust[,2] <- sort(PPIFunc_NonIso) 

    write.table(PPI_Nodes_Robust, "SingleAttack_PPI_Robust_GRN12.txt",row.names = FALSE, col.names = FALSE)      



 