library(igraph)
library(plyr)

g_ori <- read.graph("GRN_DegreePreserved_AssortRand_OutdegIndeg.txt", format = c("edgelist"),directed=TRUE)
g_Gene_read <- g_ori
g_PPI_Ori<- read.graph("PPI_NoSelfLoop_WCC.txt", format = c("edgelist"),directed=FALSE)
#g_PPI_Ori <- read.graph("PPI_Net_Num.txt", format = c("edgelist"),directed=FALSE)

wccb <- clusters(g_PPI_Ori, mode="weak")
largest_wcc_vb <- which(wccb$membership == which.max(wccb$csize))
OriFailNodes <- setdiff(V(g_PPI_Ori), largest_wcc_vb)
g_PPI <- delete.edges(g_PPI_Ori, E(g_PPI_Ori)[V(g_PPI_Ori)[OriFailNodes] %--% V(g_PPI_Ori)])       			
N_PPI <- length(largest_wcc_vb)
PPI_Nodes <- largest_wcc_vb
g_PPI_Read <- g_PPI
     			
num_gfunc_max <- 1000
pmax <- 100
k_max <- 100

Gene_Deg <- degree(g_ori, V(g_ori), mode = c("all")) 
Gene_InDeg <- degree(g_ori, V(g_ori), mode = c("in")) 
Gene_OutDeg <- degree(g_ori, V(g_ori), mode = c("out"))  
PPI_Deg <- degree(g_PPI, V(g_PPI), mode = c("all"))       
Isolates <- union(which(Gene_Deg==0),which(PPI_Deg==0))
PPI_Isolates <- which(PPI_Deg==0)
Gene_Nodes <- which(Gene_Deg!=0)
N_gene <- length(Gene_Nodes)



#Meta_Net_Ori <- read.graph("Metabolic_Randomized_Assortative.txt", format = c("edgelist"),directed=FALSE)
Meta_Net_Ori <- read.graph("Metabolic_Net_Num.txt", format = c("edgelist"),directed=FALSE)
wcc_meta <- clusters(Meta_Net_Ori, mode="weak")
Meta_Nodes <- which(wcc_meta$membership == which.max(wcc_meta$csize))
N_Meta <- length(Meta_Nodes)
Fail_Meta_Ori <- setdiff(V(Meta_Net_Ori), Meta_Nodes)
Meta_Net <- delete.edges(Meta_Net_Ori, E(Meta_Net_Ori)[V(Meta_Net_Ori)[Fail_Meta_Ori] %--% V(Meta_Net_Ori)]) 
Meta_Deg <- degree(Meta_Net, mode="all")
Meta_Isolates <- which(Meta_Deg==0)

Meta_PPI1 <- read.table("Metabolic_PPI_Code.txt")$V1+1
Meta_PPI2 <- read.table("Metabolic_PPI_Code.txt")$V2+1
Meta_Index <- which(Meta_PPI1 %in% Meta_Nodes)
PPI_Index <- which(Meta_PPI2 %in% PPI_Nodes)
PPI_Meta_Index <- intersect(Meta_Index,PPI_Index)

Meta_PPI <- array(rep(-1,length(PPI_Meta_Index)*3), dim=c(length(PPI_Meta_Index),3))
Meta_PPI[,1] <- Meta_PPI1[PPI_Meta_Index]
Meta_PPI[,2] <- Meta_PPI2[PPI_Meta_Index]

InterDeg_Meta <- rep(0, length(V(Meta_Net)))
for(i_Meta in 1:length(V(Meta_Net)))
{
	InterDeg_Meta[i_Meta] <- length(which(Meta_PPI[,1]==i_Meta))
}



######### G2P Couplings Randmized
GPInterNodes <- intersect(which(Gene_Deg!=0),which(PPI_Deg!=0))
DependNodes_G <- GPInterNodes
DependNodes_P <- GPInterNodes

######### P2M Couplings Randmized

InterDeg_Meta <- -InterDeg_Meta
InDepend_Meta <- which(InterDeg_Meta==0)

Size_FuncGene <- array(rep(0,pmax*(k_max)), dim=c(pmax,k_max))
Size_FuncPPI <- array(rep(0,pmax*(k_max)), dim=c(pmax,k_max))
Size_FuncMeta <- array(rep(0,pmax*(k_max)*10), dim=c(pmax,k_max,10))
        
for(k_num in 1:k_max)
{
	Siz_funca <- array(0, dim = c(num_gfunc_max, pmax))
    Siz_funcb <- array(0, dim = c(num_gfunc_max, pmax))
   for(p_num in 1:pmax)
   {
    	g_ori <- g_Gene_read
		g_PPI <- g_PPI_Read
  		p <- p_num/pmax
      
        Del_Frac <- length(V(g_ori))*(1-p)
        if(Del_Frac>=1)
        {
            Del_Ver1 <- igraph.sample(1, length(V(g_ori)), length(V(g_ori))*(1-p))
        	Del_Ver2 <- neighborhood(g_ori, 1, nodes=Del_Ver1, "out")
        	Del_Ver <- unique(unlist(Del_Ver2))        
        	Rand_Ver <- setdiff(V(g_ori),Del_Ver)    
        	g_ori <- delete.edges(g_ori, E(g_ori)[V(g_ori)[Del_Ver] %--% V(g_ori)])
        	
        }	    	
        	Siz_funca[1] <- length(N_gene)
        	Siz_funcb[1] <- length(N_PPI)
 		
        ####Degrees distribution of the original network
        EROri_Deg <- degree(g_ori, V(g_ori), mode = c("all"))        
        Siz_funca[2] <- length(which(EROri_Deg!=0))
        
        #######  PPI
        Del_Vertices_ori <- which(EROri_Deg==0)
        Del_Vertices1 <- setdiff(Del_Vertices_ori, Isolates)
        Index_Del1<- which(DependNodes_G %in% Del_Vertices1)
        Del_Vertices <- DependNodes_P[Index_Del1]
        g_PPI <- delete.edges(g_PPI, E(g_PPI)[V(g_PPI)[Del_Vertices] %--% V(g_PPI)])
        	
        wccb <- clusters(g_PPI, mode="weak")
        largest_wcc_vb <- which(wccb$membership == which.max(wccb$csize))
        Siz_funcb[2] <- length(largest_wcc_vb)  
           
         k_while <- 2
         while((Siz_funca[k_while]!=Siz_funca[k_while-1]) || (Siz_funcb[k_while]!=Siz_funcb[k_while-1]))     {
                    k_while <- k_while+1
                    Del_Ver0 <- setdiff(V(g_PPI), largest_wcc_vb)
                    Del_Ver1 <- setdiff(Del_Ver0, Isolates)
                    Index_Del2<- which(DependNodes_P %in% Del_Ver1)
        			Del_Ver2 <- DependNodes_G[Index_Del2] 
        			Del_Ver3 <- neighborhood(g_ori, 1, nodes=Del_Ver2, "out")
        			Del_Ver <- unique(unlist(Del_Ver3))
        			g_ori <- delete.edges(g_ori, E(g_ori)[V(g_ori)[Del_Ver] %--% V(g_ori)])
        			EROri_Deg <- degree(g_ori, V(g_ori), mode = c("all"))        
        			Siz_funca[k_while] <- length(which(EROri_Deg!=0))
        
        			#######  PPI
        			Del_Vertices_ori <- which(EROri_Deg==0)
        			Del_Vertices <- setdiff(Del_Vertices_ori, Isolates)
        			Index_Del1<- which(DependNodes_G %in% Del_Vertices1)
        			Del_Vertices <- DependNodes_P[Index_Del1]  
        			g_PPI <- delete.edges(g_PPI, E(g_PPI)[V(g_PPI)[Del_Vertices] %--% V(g_PPI)])
        			wccb <- clusters(g_PPI, mode="weak")
        			largest_wcc_vb <- which(wccb$membership == which.max(wccb$csize))
        			Siz_funcb[k_while] <- length(largest_wcc_vb)     
        }
        
       Size_FuncGene[p_num,k_num] <- Siz_funca[k_while]
       Size_FuncPPI[p_num,k_num] <- Siz_funcb[k_while]
                             
        
         State_PPI <- rep(-1, length(V(g_PPI)))
        State_PPI[largest_wcc_vb] <- 0
        State_PPI[PPI_Isolates] <- 0
        Meta_PPI[,3] <- State_PPI[Meta_PPI[,2]]
        
#############################################     Metabolic network
        gb <- Meta_Net
        State_Meta <- rep(0, length(V(gb)))
        for(i_meta in 1:length(Meta_PPI[,1]))
        {
        	State_Meta[Meta_PPI[i_meta,1]] = State_Meta[Meta_PPI[i_meta,1]] + Meta_PPI[i_meta,3]
        }
        
        f_num <- 0
        for(Fail_Fraction in (1:10)/10)
        {
        	f_num <- f_num + 1
        	Meta_Fail <- which(State_Meta<=Fail_Fraction*InterDeg_Meta)
        	Meta_Fail <- setdiff(Meta_Fail, InDepend_Meta)
        
        	gb1 <- delete.edges(gb, E(gb)[V(gb)[Meta_Fail] %--% V(gb)])
        
        	wccm <- clusters(gb1, mode="weak")
        	Meta_Func_Final <- which(wccm$membership == which.max(wccm$csize))
        	Size_FuncMeta[p_num,k_num,f_num] <- length(Meta_Func_Final) 
        }        
    }    
    
    Size_FuncGene_Aver <- rowSums(Size_FuncGene)/N_gene/k_num
    write.table(Size_FuncGene_Aver, "Gene_GRNOutdegIndegAssort_ThreeLayerModels.txt",row.names = FALSE, col.names = FALSE)
    Size_FuncPPI_Aver <- rowSums(Size_FuncPPI)/N_PPI/k_num
    write.table(Size_FuncPPI_Aver, "PPI_GRNOutdegIndegAssort_ThreeLayerModels.txt",row.names = FALSE, col.names = FALSE)
    Size_FuncMeta_Aver <-  array(rep(0,pmax*10), dim=c(pmax,10))
    for(i_fp2m in 1:10)
    {
    	Size_FuncMeta_Aver[,i_fp2m] <- rowSums(Size_FuncMeta[,,i_fp2m])/N_Meta/k_num
    }
    write.table(Size_FuncMeta_Aver, "Meta_GRNOutdegIndegAssort_ThreeLayerModels_fpm01To1.txt",row.names = FALSE, col.names = FALSE)
  
}

