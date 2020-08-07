clear

% fileID = fopen('Simulations/Gene_GRNDisAssort_ThreeLayerModels.txt');
% Gene_GRNDisAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
% fclose(fileID);
% fileID = fopen('Simulations/PPI_GRNDisAssort_ThreeLayerModels.txt');
% PPI_GRNDisAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
% fclose(fileID);
% fileID = fopen('Simulations/Meta_GRNDisAssort_ThreeLayerModels_fpm01To1.txt');
% Meta_GRNDisAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
% fclose(fileID);


fileID = fopen('Simulations/Gene_GRNExtremeDisAssort_ThreeLayerModels.txt');
Gene_GRNDisAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);
fileID = fopen('Simulations/PPI_GRNExtremeDisAssort_ThreeLayerModels.txt');
PPI_GRNDisAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);
fileID = fopen('Simulations/Meta_GRNExtremeDisAssort_ThreeLayerModels_fpm01To1.txt');
Meta_GRNDisAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);


fileID = fopen('Simulations/Gene_GRNProbabDisassort_ThreeLayerModels.txt');
Gene_GRNProbDisAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);
fileID = fopen('Simulations/PPI_GRNProbabDisassort_ThreeLayerModels.txt');
PPI_GRNProbDisAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);
fileID = fopen('Simulations/Meta_GRNProbabDisassort_ThreeLayerModels_fpm01To1.txt');
Meta_GRNProbDisAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);

fileID = fopen('Simulations/Gene_GRNExtremeAssort_ThreeLayerModels.txt');
Gene_GRNAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);
fileID = fopen('Simulations/PPI_GRNExtremeAssort_ThreeLayerModels.txt');
PPI_GRNAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);
fileID = fopen('Simulations/Meta_GRNExtremeAssort_ThreeLayerModels_fpm01To1.txt');
Meta_GRNAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);

fileID = fopen('Simulations/Gene_GRNExtremeAssortNoLoop_ThreeLayerModels.txt');
Gene_GRNAssort_Noloop = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);
fileID = fopen('Simulations/PPI_GRNExtremeAssortNoLoop_ThreeLayerModels.txt');
PPI_GRNAssort_Noloop = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);
fileID = fopen('Simulations/Meta_GRNExtremeAssortNoLoop_ThreeLayerModels_fpm01To1.txt');
Meta_GRNAssort_Noloop = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);



fileID = fopen('Simulations/Gene_GRNProbabAssort_ThreeLayerModels.txt');
Gene_GRNProbAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);
fileID = fopen('Simulations/PPI_GRNProbabAssort_ThreeLayerModels.txt');
PPI_GRNProbAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);
fileID = fopen('Simulations/Meta_GRNProbabAssort_ThreeLayerModels_fpm01To1.txt');
Meta_GRNProbAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);



fileID = fopen('Simulations/Gene_G2PCouplingsAssortavive.txt');
Gene_G2PAssort = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/PPI_G2PCouplingsAssortavive.txt');
PPI_G2PAssort = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/Meta_G2PCouplingsAssortavive_fpm01To1.txt');
Meta_G2PAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);

fileID = fopen('Simulations/Gene_Simulation_WholeRobust_fpm1.txt');
Gene_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/PPI_Simulation_WholeRobust_fpm1.txt');
PPI_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/Meta_Simulation_WholeRobust_fpm01To1.txt');
Meta_FuncSizeSim = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);
ps = 0.01:0.01:1;

figure(4)
gca = subplot(2,2,1);
gca1s = plot((0.05:0.05:1), Gene_FuncSizeSim{1,1}(5:5:100),'s:', 'MarkerSize',5.5, 'MarkerFaceColor', [139,0,139]./255, 'LineWidth',1);
hold on 
%set(gca1s, 'Color', [170 0 255]./255)
set(gca1s, 'Color', [139,0,139]./255)

gca2s = plot((0.05:0.05:1), PPI_FuncSizeSim{1,1}(5:5:100),'o:', 'MarkerSize',5,'MarkerFaceColor', [46,139,87]./255,'LineWidth',1);
set(gca2s, 'Color', [46,139,87]./255)
gca3s = plot((0.05:0.05:1), Meta_FuncSizeSim{1,7}(5:5:100),'d:', 'MarkerSize',5,'MarkerFaceColor', [255,127,80]./255,'LineWidth',1);
set(gca3s, 'Color', [255,127,80]./255)


gca1s = plot((0.05:0.05:1), Gene_GRNProbAssort{1,1}(5:5:100),'s-', 'MarkerSize',5.5, 'MarkerFaceColor', [255,255,255]./255, 'LineWidth',1);
set(gca1s, 'Color', [139,0,139]./255)

gca2s = plot((0.05:0.05:1), PPI_GRNProbAssort{1,1}(5:5:100),'o-', 'MarkerSize',5,'MarkerFaceColor', [255,255,255]./255,'LineWidth',1);
set(gca2s, 'Color', [46,139,87]./255)
gca3s = plot((0.05:0.05:1), Meta_GRNProbAssort{1,7}(5:5:100),'d-', 'MarkerSize',5,'MarkerFaceColor', [255,255,255]./255,'LineWidth',1);
set(gca3s, 'Color', [255,127,80]./255)


hold off
title('a','Fontsize',14,'fontweight','bold', 'Position', [-0.21, 1, 0]);
text(0.3,1.1,'GRN-ProbAssort','Fontsize',12)
xlabel('p','Fontsize',12);
ylabel('f_{\rm S}','Fontsize',12);
gcalegend = legend('GRN','PPI','Metabolic',[120 368 0.15 0.03]);
legend('boxoff');
set(gcalegend, 'fontsize', 9)
set(gca, 'LineWidth', 1.2)
set(gca, 'fontsize', 12)
set(gca, 'xminortick','off','ticklength',[0.025 0.025], 'tickdir','in')
set(gca, 'yminortick','off','ticklength',[0.025 0.025], 'tickdir','in')
xlim([0 1.03]);
ylim([0 1.03]);




gca = subplot(2,2,3);
gca1s = plot((0.05:0.05:1), Gene_FuncSizeSim{1,1}(5:5:100),'s:', 'MarkerSize',5.5, 'MarkerFaceColor', [139,0,139]./255, 'LineWidth',1);
hold on 
%set(gca1s, 'Color', [170 0 255]./255)
set(gca1s, 'Color', [139,0,139]./255)

gca2s = plot((0.05:0.05:1), PPI_FuncSizeSim{1,1}(5:5:100),'o:', 'MarkerSize',5,'MarkerFaceColor', [46,139,87]./255,'LineWidth',1);
set(gca2s, 'Color', [46,139,87]./255)
gca3s = plot((0.05:0.05:1), Meta_FuncSizeSim{1,7}(5:5:100),'d:', 'MarkerSize',5,'MarkerFaceColor', [255,127,80]./255,'LineWidth',1);
set(gca3s, 'Color', [255,127,80]./255)


gca1s = plot((0.05:0.05:1), Gene_GRNDisAssort{1,1}(5:5:100),'s-', 'MarkerSize',5.5, 'MarkerFaceColor', [255,255,255]./255, 'LineWidth',1);
set(gca1s, 'Color', [139,0,139]./255)

gca2s = plot((0.05:0.05:1), PPI_GRNDisAssort{1,1}(5:5:100),'o-', 'MarkerSize',5,'MarkerFaceColor', [255,255,255]./255,'LineWidth',1);
set(gca2s, 'Color', [46,139,87]./255)
gca3s = plot((0.05:0.05:1), Meta_GRNDisAssort{1,7}(5:5:100),'d-', 'MarkerSize',5,'MarkerFaceColor', [255,255,255]./255,'LineWidth',1);
set(gca3s, 'Color', [255,127,80]./255)


hold off
title('c','Fontsize',14,'fontweight','bold', 'Position', [-0.21, 1, 0]);
text(0.1,1.1,'GRN-ExtremeDisAssort','Fontsize',12)
xlabel('p','Fontsize',12);
ylabel('f_{\rm S}','Fontsize',12);
gcalegend = legend('GRN','PPI','Metabolic',[120 168 0.15 0.03]);
legend('boxoff');
set(gcalegend, 'fontsize', 9)
set(gca, 'LineWidth', 1.2)
set(gca, 'fontsize', 12)
set(gca, 'xminortick','off','ticklength',[0.025 0.025], 'tickdir','in')
set(gca, 'yminortick','off','ticklength',[0.025 0.025], 'tickdir','in')
xlim([0 1.03]);
ylim([0 1.03]);



gca = subplot(2,2,4);
gca1s = plot((0.05:0.05:1), Gene_FuncSizeSim{1,1}(5:5:100),'s:', 'MarkerSize',5.5, 'MarkerFaceColor', [139,0,139]./255, 'LineWidth',1);
hold on 
%set(gca1s, 'Color', [170 0 255]./255)
set(gca1s, 'Color', [139,0,139]./255)

gca2s = plot((0.05:0.05:1), PPI_FuncSizeSim{1,1}(5:5:100),'o:', 'MarkerSize',5,'MarkerFaceColor', [46,139,87]./255,'LineWidth',1);
set(gca2s, 'Color', [46,139,87]./255)
gca3s = plot((0.05:0.05:1), Meta_FuncSizeSim{1,7}(5:5:100),'d:', 'MarkerSize',5,'MarkerFaceColor', [255,127,80]./255,'LineWidth',1);
set(gca3s, 'Color', [255,127,80]./255)


gca1s = plot((0.05:0.05:1), Gene_GRNProbDisAssort{1,1}(5:5:100),'s-', 'MarkerSize',5.5, 'MarkerFaceColor', [255,255,255]./255, 'LineWidth',1);
set(gca1s, 'Color', [139,0,139]./255)

gca2s = plot((0.05:0.05:1), PPI_GRNProbDisAssort{1,1}(5:5:100),'o-', 'MarkerSize',5,'MarkerFaceColor', [255,255,255]./255,'LineWidth',1);
set(gca2s, 'Color', [46,139,87]./255)
gca3s = plot((0.05:0.05:1), Meta_GRNProbDisAssort{1,7}(5:5:100),'d-', 'MarkerSize',5,'MarkerFaceColor', [255,255,255]./255,'LineWidth',1);
set(gca3s, 'Color', [255,127,80]./255)


hold off
title('d','Fontsize',14,'fontweight','bold', 'Position', [-0.21, 1, 0]);
text(0.2,1.1,'GRN-ProbDisAssort','Fontsize',12)
xlabel('p','Fontsize',12);
ylabel('f_{\rm S}','Fontsize',12);
gcalegend = legend('GRN','PPI','Metabolic',[370 168 0.15 0.03]);
legend('boxoff');
set(gcalegend, 'fontsize', 9)
set(gca, 'LineWidth', 1.2)
set(gca, 'fontsize', 12)
set(gca, 'xminortick','off','ticklength',[0.025 0.025], 'tickdir','in')
set(gca, 'yminortick','off','ticklength',[0.025 0.025], 'tickdir','in')
xlim([0 1.03]);
ylim([0 1.03]);


R_dif(:,1) = zeros(10,1);
for k=1:1:10
    R_dif(k) = sum(Meta_FuncSizeSim{1,k}-Meta_GRNAssort{1,k})*0.01;    
end
RDis_dif(:,1) = zeros(10,1);
for k=1:1:10
    RDis_dif(k) = sum(Meta_FuncSizeSim{1,k}-Meta_GRNDisAssort{1,k})*0.01;    
end



subplot(2,2,2)
gca1s = plot(0.1:0.1:1, R_dif,'o-', 'MarkerSize',5,'MarkerFaceColor', [255,127,80]./255,'LineWidth',1); 
set(gca1s, 'Color', [139,0,139]./255)
hold on
gca2s = plot(0.1:0.1:1, RDis_dif,'o-', 'MarkerSize',5,'MarkerFaceColor', [70,130,180]./255,'LineWidth',1); 
set(gca2s, 'Color', [25,25,112]./255)
hold off
xlabel('f_{\rm P2M}','Fontsize',12); 
ylabel('R^O_{Meta}-R^{GRN-Rand}_{Meta}','Fontsize',12);
title('b','Fontsize',14,'fontweight','bold', 'Position', [-0.21, 0.255, 0]);
xlim([0 1.1])
gcalegend = legend('GRN-Assort','GRN-DisAssort',[370 368 0.15 0.03]);
legend('boxoff');
set(gcalegend, 'fontsize', 9)

print(gcf, '-depsc2', 'GRNAssort_GRNDisAssort_plot_SI.eps')
