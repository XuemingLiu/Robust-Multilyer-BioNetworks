clear

fileID = fopen('PPIOri_LCC_Degree_Distribution.txt');
PPIdegDis = textscan(fileID,'%f');
fclose(fileID);
P_k = zeros(length(PPIdegDis{1,1}),1);
for ki = 1:1:length(PPIdegDis{1,1})
    P_k(ki) = PPIdegDis{1,1}(ki);
end

PPI_FuncSize = zeros(length(0.01:0.01:1),1);
Meta_Func = zeros(length(0.01:0.01:1),1);

%%%%%%%%%Metabolic network
load('PPIMeta.mat');
P_Meta2PPI = PPIMeta;
fileID = fopen('Metabolic_LCC_DegDis.txt');
MetadegDis = textscan(fileID,'%f');
fclose(fileID); 
Meta_DegDis = MetadegDis{1,1};

%qB = 1237/1292;
qB = 1211/1269;%1216/1269


%%%%%%%%%%%%%%%%%%%Functional size computation

num = 0;
for p = 0.01:0.01:1
    num = num + 1;
    FunctionPPI = FuncSizePPINet(P_k,p);
    PPI_FuncSize(num) = p * FunctionPPI;    
    Meta_Func(num) = FuncSizeMeta(PPI_FuncSize(num), P_Meta2PPI, qB, Meta_DegDis);
end

fileID = fopen('Simulations/PPI_PPIMeta2layers_Robust.txt');
PPI_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/Meta_PPIMeta2layers_Robust.txt');
Meta_FuncSizeSim = textscan(fileID,'%f');
fclose(fileID);
ps = 0.01:0.01:1;

figure(1)

gca = subplot(2,2,1);
gca2s = plot((0.01:0.01:1), PPI_FuncSizeSim{1,1},'o', 'MarkerSize',5,'LineWidth',1);
hold on
set(gca2s, 'Color', [0 50 0]./255)
gca3s = plot((0.01:0.01:1), Meta_FuncSizeSim{1,1},'*', 'MarkerSize',5,'LineWidth',1);
set(gca3s, 'Color', [220 71 0]./255)

gca2t = plot((0.01:0.01:1), PPI_FuncSize,'-','LineWidth',1.5);
set(gca2t, 'Color', [0 50 0]./255)
gca3t = plot((0.01:0.01:1), Meta_Func,'-','LineWidth',1.5);
set(gca3t, 'Color', [220 71 0]./255)

xlabel('p','Fontsize',12);
ylabel('f_{\rm S}','Fontsize',12);
% tit1 = title('a','Fontsize',12, 'FontWeight','bold');
% set(tit1,'Position',[-0.2 1.05 1.00011]);
ylim([0.0000099 1]);
gcalegend = legend('PPI','Metabolic',[200 270 0.15 0.03]);
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
print

print(gcf, '-depsc2', 'PPI_Metabolic_2Layers.eps')