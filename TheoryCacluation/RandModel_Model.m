clear

fileID = fopen('Simulations/Gene_Simulation_WholeRobust_fpm1.txt');
Gene_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/PPI_Simulation_WholeRobust_fpm1.txt');
PPI_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/Meta_Simulation_WholeRobust_fpm1.txt');
Meta_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);


fileID = fopen('Simulations/Gene_CoulpRand_WholeRobust_fpm1.txt');
CouplRandGene_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/PPI_CoulpRand_WholeRobust_fpm1.txt');
CouplRandPPI_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/Meta_CoulpRand_WholeRobust_fpm1.txt');
CouplRandMeta_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);

fileID = fopen('Simulations/Gene_G2PRandCoup_WholeRobust_fpm1.txt');
G2PRandGene_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/PPI_G2PRandCoup_WholeRobust_fpm1.txt');
G2PRandPPI_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/Meta_G2PRandCoup_WholeRobust_fpm1.txt');
G2PRandMeta_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);

fileID = fopen('Simulations/Gene_G2PTotalRandCoup_WholeRobust_fpm1.txt');
G2PTotalRand_Gene_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/PPI_G2PTotalRandCoup_WholeRobust_fpm1.txt');
G2PTotalRand_PPI_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/Meta_G2PTotalRandCoup_WholeRobust_fpm1.txt');
G2PTotalRand_Meta_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);





fileID = fopen('Simulations/Gene_P2MRandCoup_WholeRobust_fpm1.txt');
P2MRandGene_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/PPI_P2MRandCoup_WholeRobust_fpm1.txt');
P2MRandPPI_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/Meta_P2MRandCoup_WholeRobust_fpm1.txt');
P2MRandMeta_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);


fileID = fopen('Simulations/ERRandGene_Simulation_WholeRobust.txt');
ERRandGene_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/ERRandPPI_Simulation_WholeRobust.txt');
ERRandPPI_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/ERRandMeta_Simulation_WholeRobust.txt');
ERRandMeta_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);


fileID = fopen('Simulations/DegSeqGene_InOutRelationPreserved_Robust.txt');
DegSeqGene_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/DegSeqPPI_InOutRelationPreserved_Robust.txt');
DegSeqPPI_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/DegSeqMeta_InOutRelationPreserved_Robust.txt');
DegSeqMeta_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);

fileID = fopen('Simulations/DegSeqGene_InOutRelationPreserved_Robust.txt');
DegSeqRand_InOutPreserv_Gene = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/DegSeqPPI_InOutRelationPreserved_Robust.txt');
DegSeqRand_InOutPreserv_PPI = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/DegSeqMeta_InOutRelationPreserved_Robust.txt');
DegSeqRand_InOutPreserv_Meta = textscan(fileID,'%f');
fclose(fileID);


fileID = fopen('Simulations/Gene_P2MTotalRandCouplings.txt');
P2MRandGene_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/PPI_P2MTotalRandCouplings.txt');
P2MRandPPI_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/Meta_P2MTotalRandCouplings.txt');
P2MRandMeta_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);

ps = 0.01:0.01:1;
figure(1)

% gca = subplot(2,2,1);
% gca1s = plot((0.01:0.01:1), Gene_FuncSizeSim{1,1},'-.', 'MarkerSize',5, 'LineWidth',1);
% hold on 
% set(gca1s, 'Color', [170 0 255]./255)
% gca2s = plot((0.01:0.01:1), PPI_FuncSizeSim{1,1},'-.', 'MarkerSize',5,'LineWidth',1);
% set(gca2s, 'Color', [0 50 0]./255)
% gca3s = plot((0.01:0.01:1), Meta_FuncSizeSim{1,1},'-.', 'MarkerSize',5,'LineWidth',1);
% set(gca3s, 'Color', [220 71 0]./255)
% 
% gca1s = plot((0.01:0.01:1), RandGene_FuncSizeSim3{1,1},':', 'MarkerSize',5, 'LineWidth',2);
% set(gca1s, 'Color', [170 0 255]./255)
% gca2s = plot((0.01:0.01:1), RandPPI_FuncSizeSim3{1,1},':', 'MarkerSize',5,'LineWidth',2);
% set(gca2s, 'Color', [0 50 0]./255)
% gca3s = plot((0.01:0.01:1), RandMeta_FuncSizeSim3{1,1},':', 'MarkerSize',5,'LineWidth',2);
% set(gca3s, 'Color', [220 71 0]./255)
% 
% xlabel('p','Fontsize',12);
% ylabel('f_{\rm S}','Fontsize',12);
% tit1 = title('a','Fontsize',12, 'FontWeight','bold');
% set(tit1,'Position',[0 1.05 1.00011]);
% ylim([0.0000099 1]);
% gcalegend = legend('General GRN','PPI','Metabolic',[120 300 0.15 0.03]);
% legend('boxoff');
% set(gcalegend, 'fontsize', 12)
% set(gca, 'LineWidth', 1.2)
% set(gca, 'fontsize', 12)
% set(gca, 'xminortick','off','ticklength',[0.025 0.025], 'tickdir','in')
% set(gca, 'yminortick','off','ticklength',[0.025 0.025], 'tickdir','in')
% 
% 
% xL=xlim;yL=ylim;
% plot(xL,[yL(2),yL(2)],'k',[xL(2),xL(2)],[yL(1),yL(2)],'k', 'LineWidth',1)
% box off
% axis([xL yL]) 
% 
% hold off



gca = subplot(2,2,1);
gca1s = plot((0.01:0.01:1), Gene_FuncSizeSim{1,1},'-.', 'MarkerSize',5, 'LineWidth',1);
hold on 
set(gca1s, 'Color', [170 0 255]./255)
gca2s = plot((0.01:0.01:1), PPI_FuncSizeSim{1,1},'-.', 'MarkerSize',5,'LineWidth',1);
set(gca2s, 'Color', [0 50 0]./255)
gca3s = plot((0.01:0.01:1), Meta_FuncSizeSim{1,1},'-.', 'MarkerSize',5,'LineWidth',1);
set(gca3s, 'Color', [220 71 0]./255)

gca1s = plot((0.01:0.01:1), ERRandGene_FuncSizeSim{1,1},'-', 'MarkerSize',5, 'LineWidth',2);
set(gca1s, 'Color', [170 0 255]./255)
gca2s = plot((0.01:0.01:1), ERRandPPI_FuncSizeSim{1,1},'-', 'MarkerSize',5,'LineWidth',2);
set(gca2s, 'Color', [0 50 0]./255)
gca3s = plot((0.01:0.01:1), ERRandMeta_FuncSizeSim{1,1},'-', 'MarkerSize',5,'LineWidth',2);
set(gca3s, 'Color', [220 71 0]./255)

xlabel('p','Fontsize',12);
ylabel('f_{\rm S}','Fontsize',12);
tit1 = title('ER Rand','Fontsize',12, 'FontWeight','bold');
set(tit1,'Position',[0 1.05 1.00011]);
ylim([0.0000099 1]);
gcalegend = legend('General GRN','PPI','Metabolic',[120 300 0.15 0.03]);
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



gca = subplot(2,2,2);
gca1s = plot((0.01:0.01:1), Gene_FuncSizeSim{1,1},'-.', 'MarkerSize',5, 'LineWidth',1);
hold on 
set(gca1s, 'Color', [170 0 255]./255)
gca2s = plot((0.01:0.01:1), PPI_FuncSizeSim{1,1},'-.', 'MarkerSize',5,'LineWidth',1);
set(gca2s, 'Color', [0 50 0]./255)
gca3s = plot((0.01:0.01:1), Meta_FuncSizeSim{1,1},'-.', 'MarkerSize',5,'LineWidth',1);
set(gca3s, 'Color', [220 71 0]./255)

gca1s = plot((0.01:0.01:1), DegSeqGene_FuncSizeSim{1,1},'-', 'MarkerSize',5, 'LineWidth',2);
set(gca1s, 'Color', [170 0 255]./255)
gca2s = plot((0.01:0.01:1), DegSeqPPI_FuncSizeSim{1,1},'-', 'MarkerSize',5,'LineWidth',2);
set(gca2s, 'Color', [0 50 0]./255)
gca3s = plot((0.01:0.01:1), DegSeqMeta_FuncSizeSim{1,1},'-', 'MarkerSize',5,'LineWidth',2);
set(gca3s, 'Color', [220 71 0]./255)

xlabel('p','Fontsize',12);
ylabel('f_{\rm S}','Fontsize',12);
tit1 = title('DegreeSeq Rand','Fontsize',12, 'FontWeight','bold');
set(tit1,'Position',[0 1.05 1.00011]);
ylim([0.0000099 1]);
gcalegend = legend('General GRN','PPI','Metabolic',[120 300 0.15 0.03]);
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


gca = subplot(2,2,3);
gca1s = plot((0.01:0.01:1), Gene_FuncSizeSim{1,1},'-.', 'MarkerSize',5, 'LineWidth',1);
hold on 
set(gca1s, 'Color', [170 0 255]./255)
gca2s = plot((0.01:0.01:1), PPI_FuncSizeSim{1,1},'-.', 'MarkerSize',5,'LineWidth',1);
set(gca2s, 'Color', [0 50 0]./255)
gca3s = plot((0.01:0.01:1), Meta_FuncSizeSim{1,1},'-.', 'MarkerSize',5,'LineWidth',1);
set(gca3s, 'Color', [220 71 0]./255)

gca1s = plot((0.01:0.01:1), DegSeqRand_InOutPreserv_Gene{1,1},'-', 'MarkerSize',5, 'LineWidth',2);
set(gca1s, 'Color', [170 0 255]./255)
gca2s = plot((0.01:0.01:1), DegSeqRand_InOutPreserv_PPI{1,1},'-', 'MarkerSize',5,'LineWidth',2);
set(gca2s, 'Color', [0 50 0]./255)
gca3s = plot((0.01:0.01:1), DegSeqRand_InOutPreserv_Meta{1,1},'-', 'MarkerSize',5,'LineWidth',2);
set(gca3s, 'Color', [220 71 0]./255)

xlabel('p','Fontsize',12);
ylabel('f_{\rm S}','Fontsize',12);
tit1 = title('Coupling Rand','Fontsize',12, 'FontWeight','bold');
set(tit1,'Position',[0 1.05 1.00011]);
ylim([0.0000099 1]);
gcalegend = legend('General GRN','PPI','Metabolic',[120 300 0.15 0.03]);
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


% 
% gca = subplot(2,2,4);
% gca1s = plot((0.01:0.01:1), Gene_FuncSizeSim{1,1},'-.', 'MarkerSize',5, 'LineWidth',1);
% hold on 
% set(gca1s, 'Color', [170 0 255]./255)
% gca2s = plot((0.01:0.01:1), PPI_FuncSizeSim{1,1},'-.', 'MarkerSize',5,'LineWidth',1);
% set(gca2s, 'Color', [0 50 0]./255)
% gca3s = plot((0.01:0.01:1), Meta_FuncSizeSim{1,1},'-.', 'MarkerSize',5,'LineWidth',1);
% set(gca3s, 'Color', [220 71 0]./255)
% 
% gca1s = plot((0.01:0.01:1), P2MRandGene_FuncSizeSim{1,1},'-', 'MarkerSize',5, 'LineWidth',2);
% set(gca1s, 'Color', [170 0 255]./255)
% gca2s = plot((0.01:0.01:1), P2MRandPPI_FuncSizeSim{1,1},'-', 'MarkerSize',5,'LineWidth',2);
% set(gca2s, 'Color', [0 50 0]./255)
% gca3s = plot((0.01:0.01:1), P2MRandMeta_FuncSizeSim{1,1},'-', 'MarkerSize',5,'LineWidth',2);
% set(gca3s, 'Color', [220 71 0]./255)
% 
% xlabel('p','Fontsize',12);
% ylabel('f_{\rm S}','Fontsize',12);
% tit1 = title('P2M Coupling Rand','Fontsize',12, 'FontWeight','bold');
% set(tit1,'Position',[0 1.05 1.00011]);
% ylim([0.0000099 1]);
% gcalegend = legend('General GRN','PPI','Metabolic',[120 300 0.15 0.03]);
% legend('boxoff');
% set(gcalegend, 'fontsize', 12)
% set(gca, 'LineWidth', 1.2)
% set(gca, 'fontsize', 12)
% set(gca, 'xminortick','off','ticklength',[0.025 0.025], 'tickdir','in')
% set(gca, 'yminortick','off','ticklength',[0.025 0.025], 'tickdir','in')
% 
% 
% xL=xlim;yL=ylim;
% plot(xL,[yL(2),yL(2)],'k',[xL(2),xL(2)],[yL(1),yL(2)],'k', 'LineWidth',1)
% box off
% axis([xL yL]) 
% 
% hold off
% 
% 
% gca = subplot(2,2,5);
% gca1s = plot((0.01:0.01:1), Gene_FuncSizeSim{1,1},'-.', 'MarkerSize',5, 'LineWidth',1);
% hold on 
% set(gca1s, 'Color', [170 0 255]./255)
% gca2s = plot((0.01:0.01:1), PPI_FuncSizeSim{1,1},'-.', 'MarkerSize',5,'LineWidth',1);
% set(gca2s, 'Color', [0 50 0]./255)
% gca3s = plot((0.01:0.01:1), Meta_FuncSizeSim{1,1},'-.', 'MarkerSize',5,'LineWidth',1);
% set(gca3s, 'Color', [220 71 0]./255)
% 
% gca1s = plot((0.01:0.01:1), G2PRandGene_FuncSizeSim{1,1},'-', 'MarkerSize',5, 'LineWidth',2);
% set(gca1s, 'Color', [170 0 255]./255)
% gca2s = plot((0.01:0.01:1), G2PRandPPI_FuncSizeSim{1,1},'-', 'MarkerSize',5,'LineWidth',2);
% set(gca2s, 'Color', [0 50 0]./255)
% gca3s = plot((0.01:0.01:1), G2PRandMeta_FuncSizeSim{1,1},'-', 'MarkerSize',5,'LineWidth',2);
% set(gca3s, 'Color', [220 71 0]./255)
% 
% xlabel('p','Fontsize',12);
% ylabel('f_{\rm S}','Fontsize',12);
% tit1 = title('G2P Coupling Rand','Fontsize',12, 'FontWeight','bold');
% set(tit1,'Position',[0 1.05 1.00011]);
% ylim([0.0000099 1]);
% gcalegend = legend('General GRN','PPI','Metabolic',[120 300 0.15 0.03]);
% legend('boxoff');
% set(gcalegend, 'fontsize', 12)
% set(gca, 'LineWidth', 1.2)
% set(gca, 'fontsize', 12)
% set(gca, 'xminortick','off','ticklength',[0.025 0.025], 'tickdir','in')
% set(gca, 'yminortick','off','ticklength',[0.025 0.025], 'tickdir','in')
% 
% 
% xL=xlim;yL=ylim;
% plot(xL,[yL(2),yL(2)],'k',[xL(2),xL(2)],[yL(1),yL(2)],'k', 'LineWidth',1)
% box off
% axis([xL yL]) 
% 
% hold off
% 
% 
% 
% gca = subplot(2,2,5);
% gca1s = plot((0.01:0.01:1), Gene_FuncSizeSim{1,1},'-.', 'MarkerSize',5, 'LineWidth',1);
% hold on 
% set(gca1s, 'Color', [170 0 255]./255)
% gca2s = plot((0.01:0.01:1), PPI_FuncSizeSim{1,1},'-.', 'MarkerSize',5,'LineWidth',1);
% set(gca2s, 'Color', [0 50 0]./255)
% gca3s = plot((0.01:0.01:1), Meta_FuncSizeSim{1,1},'-.', 'MarkerSize',5,'LineWidth',1);
% set(gca3s, 'Color', [220 71 0]./255)
% 
% gca1s = plot((0.01:0.01:1), G2PTotalRand_Gene_FuncSizeSim{1,1},'-', 'MarkerSize',5, 'LineWidth',2);
% set(gca1s, 'Color', [170 0 255]./255)
% gca2s = plot((0.01:0.01:1), G2PTotalRand_PPI_FuncSizeSim{1,1},'-', 'MarkerSize',5,'LineWidth',2);
% set(gca2s, 'Color', [0 50 0]./255)
% gca3s = plot((0.01:0.01:1), G2PTotalRand_Meta_FuncSizeSim{1,1},'-', 'MarkerSize',5,'LineWidth',2);
% set(gca3s, 'Color', [220 71 0]./255)
% 
% xlabel('p','Fontsize',12);
% ylabel('f_{\rm S}','Fontsize',12);
% tit1 = title('G2P Coupling Rand','Fontsize',12, 'FontWeight','bold');
% set(tit1,'Position',[0 1.05 1.00011]);
% ylim([0.0000099 1]);
% gcalegend = legend('General GRN','PPI','Metabolic',[120 300 0.15 0.03]);
% legend('boxoff');
% set(gcalegend, 'fontsize', 12)
% set(gca, 'LineWidth', 1.2)
% set(gca, 'fontsize', 12)
% set(gca, 'xminortick','off','ticklength',[0.025 0.025], 'tickdir','in')
% set(gca, 'yminortick','off','ticklength',[0.025 0.025], 'tickdir','in')
% 
% 
% xL=xlim;yL=ylim;
% plot(xL,[yL(2),yL(2)],'k',[xL(2),xL(2)],[yL(1),yL(2)],'k', 'LineWidth',1)
% box off
% axis([xL yL]) 
% 
% hold off
% 
% 
% 
% 
% gca = subplot(2,2,6);
% gca1s = plot((0.01:0.01:1), Gene_FuncSizeSim{1,1},'-.', 'MarkerSize',5, 'LineWidth',1);
% hold on 
% set(gca1s, 'Color', [170 0 255]./255)
% gca2s = plot((0.01:0.01:1), PPI_FuncSizeSim{1,1},'-.', 'MarkerSize',5,'LineWidth',1);
% set(gca2s, 'Color', [0 50 0]./255)
% gca3s = plot((0.01:0.01:1), Meta_FuncSizeSim{1,1},'-.', 'MarkerSize',5,'LineWidth',1);
% set(gca3s, 'Color', [220 71 0]./255)
% 
% gca1s = plot((0.01:0.01:1), P2MRandGene_FuncSizeSim{1,1},'-', 'MarkerSize',5, 'LineWidth',2);
% set(gca1s, 'Color', [170 0 255]./255)
% gca2s = plot((0.01:0.01:1), P2MRandPPI_FuncSizeSim{1,1},'-', 'MarkerSize',5,'LineWidth',2);
% set(gca2s, 'Color', [0 50 0]./255)
% gca3s = plot((0.01:0.01:1), P2MRandMeta_FuncSizeSim{1,1},'-', 'MarkerSize',5,'LineWidth',2);
% set(gca3s, 'Color', [220 71 0]./255)
% 
% xlabel('p','Fontsize',12);
% ylabel('f_{\rm S}','Fontsize',12);
% tit1 = title('P2M TotalRand Coupling','Fontsize',12, 'FontWeight','bold');
% set(tit1,'Position',[0 1.05 1.00011]);
% ylim([0.0000099 1.2]);
% gcalegend = legend('General GRN','PPI','Metabolic',[120 300 0.15 0.03]);
% legend('boxoff');
% set(gcalegend, 'fontsize', 12)
% set(gca, 'LineWidth', 1.2)
% set(gca, 'fontsize', 12)
% set(gca, 'xminortick','off','ticklength',[0.025 0.025], 'tickdir','in')
% set(gca, 'yminortick','off','ticklength',[0.025 0.025], 'tickdir','in')
% 
% 
% xL=xlim;yL=ylim;
% plot(xL,[yL(2),yL(2)],'k',[xL(2),xL(2)],[yL(1),yL(2)],'k', 'LineWidth',1)
% box off
% axis([xL yL]) 
% 
% hold off
% 
% 
% 
% 
