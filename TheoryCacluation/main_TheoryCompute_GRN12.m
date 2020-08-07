%%%%% Calculate the final functional sizes of the GRN12, PPI and metabolic
%%%%% networks. Input: degree distributions of intra- and inter- layer
%%%%% connections. Output: FuncFrac, PPI_FuncSize, Meta_Func, respectively
%%%%% denote the final functional sizes of the GRN12, PPI and metabolic
%%%%% netwokrs.

clear
%%%% Read the joint degree distribution of the GRN
load('Deg_NetA_12.mat')
fileID = fopen('Gene12_DegDis.txt');
DegDis = textscan(fileID,'%f');
fclose(fileID);

%%%% Remove the affect of isolates in the GRN
Isolates_Frac = Deg_NetA(1,3);
Deg_NetA(1,3) = 0;
Deg_NetA(2:length(Deg_NetA(:,3)),3) = Deg_NetA(2:length(Deg_NetA(:,3)),3)./(1-Isolates_Frac);
DegDis{1,1}(1) = DegDis{1,1}(1) - Isolates_Frac;
DegDisArrary = DegDis{1,1}();
DegDisArrary = DegDisArrary./(1-Isolates_Frac);

FuncFrac = zeros(length(0.01:0.01:1),1);



%%%%%%%%%%%%%%%%%% PPI network Degree distribution
%fileID = fopen('PPIOri_LCC_Degree_Distribution.txt');
fileID = fopen('PPI_NoSelfLoop_LCC_DegreeDistribution.txt');
PPIdegDis = textscan(fileID,'%f');
fclose(fileID);

P_k = zeros(length(PPIdegDis{1,1}),1);
for ki = 1:1:length(PPIdegDis{1,1})
    P_k(ki) = PPIdegDis{1,1}(ki);
end


% Coupling_G = 10350/11643;
% Coupling_P = 10350/15906;
Coupling_G = 1-0.6691;
Coupling_P = 1-0.2618;%0.74;%0.8236776; %Gene12

PPI_FuncSize = zeros(length(0.01:0.01:1),1);




%%%%%%%%%Metabolic network
load('PPIMeta.mat');
P_Meta2PPI = PPIMeta;
fileID = fopen('Metabolic_LCC_DegDis.txt');
MetadegDis = textscan(fileID,'%f');
fclose(fileID); 
Meta_DegDis = MetadegDis{1,1};

%qB = 1237/1292;
qB = 1211/1269;%1216/1269
Meta_Func = zeros(length(0.01:0.01:1),1);

%%%%%%%%%%%%%%%%%%%Functional size computation
Isolates_Frac = 0;

num = 0;
for p = 0.01:0.01:1
    num = num + 1;

Gene_Remain_temp1(:,1) = zeros(50,1);
Gene_Func_temp1(:,1) = zeros(50,1);
PPI_Remain_temp1(:,1) = zeros(50,1);
PPI_Func_temp1(:,1) = zeros(50,1);

    Gene_Remain_temp1(1) = p;
    Gene_Func_temp1(1) = FuncSizeGeneNet(Deg_NetA,   Gene_Remain_temp1(1));
    
    PPI_Remain_temp1(1) = 1 - Coupling_P * (1- p*Gene_Func_temp1(1)/Gene_Remain_temp1(1));
    FunctionPPI = FuncSizePPINet(P_k,PPI_Remain_temp1(1));
    PPI_Func_temp1(1) = PPI_Remain_temp1(1) * FunctionPPI;
    
    
    Gene_Remain_temp1(2) = p*(1-Coupling_G*(1-FunctionPPI));
    Gene_Func_temp1(2) = FuncSizeGeneNet(Deg_NetA,   Gene_Remain_temp1(2));
    
    PPI_Remain_temp1(2) = 1 - Coupling_P * (1- p*Gene_Func_temp1(2)/Gene_Remain_temp1(2));
    FunctionPPI = FuncSizePPINet(P_k,PPI_Remain_temp1(2));
    PPI_Func_temp1(2) = PPI_Remain_temp1(2) * FunctionPPI;
    
    k_Rep = 2;
    while((abs(Gene_Func_temp1(k_Rep)-Gene_Func_temp1(k_Rep-1))>=0.00001) || (abs(PPI_Func_temp1(k_Rep)-PPI_Func_temp1(k_Rep-1))>0.00001))
    Gene_Remain_temp1(k_Rep+1) = Gene_Remain_temp1(k_Rep);
    Gene_Func_temp1(k_Rep+1) = Gene_Func_temp1(k_Rep);
    PPI_Remain_temp1(k_Rep+1) = PPI_Remain_temp1(k_Rep);
    PPI_Func_temp1(k_Rep+1) = PPI_Func_temp1(k_Rep);
    
    k_Rep = k_Rep + 1;
    
    Gene_Remain_temp1(k_Rep) = p*(1-Coupling_G*(1-FunctionPPI));
    Gene_Func_temp1(k_Rep) = FuncSizeGeneNet(Deg_NetA,   Gene_Remain_temp1(k_Rep));
    
    PPI_Remain_temp1(k_Rep) = 1 - Coupling_P * (1- p*Gene_Func_temp1(k_Rep)/Gene_Remain_temp1(k_Rep));
    FunctionPPI = FuncSizePPINet(P_k,PPI_Remain_temp1(k_Rep));
    PPI_Func_temp1(k_Rep) = PPI_Remain_temp1(k_Rep) * FunctionPPI;
            
        if k_Rep >100000
            break
        end
    end
     FuncFrac(num) = Gene_Func_temp1(k_Rep);    
    PPI_FuncSize(num) = PPI_Func_temp1(k_Rep);
    Meta_Func(num) = FuncSizeMeta(PPI_FuncSize(num), P_Meta2PPI, qB, Meta_DegDis);
end


%%%%%%%%%%%  Visualization of the results


%%%%%%%%%% Read the simulation results


fileID = fopen('Simulations/Gene12_Simulation_WholeRobust_fpm1.txt');
Gene_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/PPI12_Simulation_WholeRobust_fpm1.txt');
PPI_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/Meta12_Simulation_WholeRobust_fpm1.txt');
Meta_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);
ps = 0.01:0.01:1;
figure(3)

gca = subplot(2,2,3);
gca1s = plot((0.01:0.01:1), Gene_FuncSizeSim{1,1},'s', 'MarkerSize',5, 'LineWidth',1);
hold on 
set(gca1s, 'Color', [170 0 255]./255)
gca2s = plot((0.01:0.01:1), PPI_FuncSizeSim{1,1},'o', 'MarkerSize',5,'LineWidth',1);
set(gca2s, 'Color', [0 50 0]./255)
gca3s = plot((0.01:0.01:1), Meta_FuncSizeSim{1,1},'*', 'MarkerSize',5,'LineWidth',1);
set(gca3s, 'Color', [220 71 0]./255)

gca1t = plot((0.01:0.01:1), FuncFrac,'-','LineWidth',1.5);
hold on
set(gca1t, 'Color', [170 0 255]./255)
gca2t = plot((0.01:0.01:1), PPI_FuncSize,'-','LineWidth',1.5);
set(gca2t, 'Color', [0 50 0]./255)
gca3t = plot((0.01:0.01:1), Meta_Func,'-','LineWidth',1.5);
set(gca3t, 'Color', [220 71 0]./255)

xlabel('p','Fontsize',12);
ylabel('f_{\rm S}','Fontsize',12);
tit1 = title('c','Fontsize',12, 'FontWeight','bold');
set(tit1,'Position',[-0.2 1.05 1.00011]);
ylim([0.0000099 1]);
gcalegend = legend('Lymphocytes GRN','PPI','Metabolic',[150 120 0.15 0.03]);
legend('boxoff');
set(gcalegend, 'fontsize', 12)
set(gca, 'LineWidth', 1.2)
set(gca, 'fontsize', 12)
set(gca, 'xminortick','off','ticklength',[0.025 0.025], 'tickdir','in')
set(gca, 'yminortick','off','ticklength',[0.025 0.025], 'tickdir','in')


xL=xlim;yL=ylim;
plot(xL,[yL(2),yL(2)],'k',[xL(2),xL(2)],[yL(1),yL(2)],'k', 'LineWidth',1)
box off
axis([xL yL]) 

hold off

FuncFrac12 = FuncFrac; 
PPI_FuncSize12 = PPI_FuncSize; 
Meta_Func12 = Meta_Func;
save Theo_Simu_Gene12 FuncFrac12 PPI_FuncSize12 Meta_Func12
