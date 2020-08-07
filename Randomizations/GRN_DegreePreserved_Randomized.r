library(igraph)
library(plyr)

g_PPI_Ori <- read.graph("Gene_Net_Num.txt", format = c("edgelist"),directed=TRUE)
wccb <- clusters(g_PPI_Ori, mode="weak")
largest_wcc_vb <- which(wccb$membership == which.max(wccb$csize))
OriFailNodes <- setdiff(V(g_PPI_Ori), largest_wcc_vb)
g_PPI <- delete.edges(g_PPI_Ori, E(g_PPI_Ori)[V(g_PPI_Ori)[OriFailNodes] %--% V(g_PPI_Ori)])   	
N_PPI <- length(largest_wcc_vb)
PPI_Nodes <- largest_wcc_vb
N_PPI_link <- length(E(g_PPI))

PPI_Degree <- degree(g_PPI, mode="all")

i_switch <- 0
for(i_rep_rewire in 1:N_PPI_link)
{
	#Randomly choose two links
	Edge2_ids <- sample(N_PPI_link,2,replace=FALSE)
	#Get the endpoints of these two links A--B, C--D
	Endpoints22 <-ends(g_PPI, Edge2_ids, names = TRUE)
	A <- Endpoints22[1,1]
	B <- Endpoints22[1,2]
	C <- Endpoints22[2,1]
	D <- Endpoints22[2,2]
	#Cheeck if there are links between 	
	if(length(unique(c(A,B,C,D)))==4) 
	{	
		    AConnectD <- which(A %in% as_ids(neighbors(g_PPI,D, mode=c("in"))))
		    CConnectB <- which(C %in% as_ids(neighbors(g_PPI,B, mode=c("in"))))
		    if(length(AConnectD)==0 && length(CConnectB)==0)
	    	{
	    		g_PPI <- delete.edges(g_PPI, Edge2_ids )
				g_PPI <- add_edges(g_PPI, c(A, D))
				g_PPI <- add_edges(g_PPI, c(C, B))
				i_switch <- i_switch + 1
			} 
	}
    write.graph(g_PPI,"GRN_DegreePreserved_Randomized.txt","edgelist")
   write.table(i_switch,"GRN_Switch_Number.txt",row.names=FALSE, col.names=FALSE)
}




