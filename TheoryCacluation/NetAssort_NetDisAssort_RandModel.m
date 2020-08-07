clear

fileID = fopen('Simulations/Gene_GRNDisAssort_ThreeLayerModels.txt');
Gene_GRNDisAssort = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/PPI_GRNDisAssort_ThreeLayerModels.txt');
PPI_GRNDisAssort = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/Meta_GRNDisAssort_ThreeLayerModels_fpm01To1.txt');
Meta_GRNDisAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);


fileID = fopen('Simulations/Gene_GRNAssortative_ThreeLayerModels.txt');
Gene_GRNAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);
fileID = fopen('Simulations/PPI_GRNAssortative_ThreeLayerModels.txt');
PPI_GRNAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);
fileID = fopen('Simulations/Meta_GRNAssortative_ThreeLayerModels_fpm01To1.txt');
Meta_GRNAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);

fileID = fopen('Simulations/Gene_PPIAssortative_ThreeLayerModels.txt');
Gene_PPIAssort = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/PPI_PPIAssortative_ThreeLayerModels.txt');
PPI_PPIAssort = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/Meta_PPIAssortative_ThreeLayerModels_fpm01To1.txt');
Meta_PPIAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);

fileID = fopen('Simulations/Gene_PPIDisAssort_ThreeLayerModels.txt');
Gene_PPIDisAssort = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/PPI_PPIDisAssort_ThreeLayerModels.txt');
PPI_PPIDisAssort = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/Meta_PPIDisAssort_ThreeLayerModels_fpm01To1.txt');
Meta_PPIDisAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);


fileID = fopen('Simulations/Gene_MetaDisAssort_ThreeLayerModels.txt');
Gene_MetaDisAssort = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/PPI_MetaDisAssort_ThreeLayerModels.txt');
PPI_MetaDisAssort = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/Meta_MetaDisAssort_ThreeLayerModels_fpm01To1.txt');
Meta_MetaDisAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);


fileID = fopen('Simulations/Gene_MetaAssortative_ThreeLayerModels.txt');
Gene_MetaAssort = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/PPI_MetaAssortative_ThreeLayerModels.txt');
PPI_MetaAssort = textscan(fileID,'%f');
fclose(fileID);
fileID = fopen('Simulations/Meta_MetaAssortative_ThreeLayerModels_fpm01To1.txt');
Meta_MetaAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
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

figure(2)

gca = subplot(4,3,1);
gca1s = plot((0.01:0.01:1), Gene_FuncSizeSim{1,1},'-.', 'MarkerSize',5, 'LineWidth',1);
hold on 
set(gca1s, 'Color', [170 0 255]./255)
gca2s = plot((0.01:0.01:1), PPI_FuncSizeSim{1,1},'-.', 'MarkerSize',5,'LineWidth',1);
set(gca2s, 'Color', [0 50 0]./255)
gca3s = plot((0.01:0.01:1), Meta_FuncSizeSim{1,10},'-.', 'MarkerSize',5,'LineWidth',1);
set(gca3s, 'Color', [220 71 0]./255)


gca1s = plot((0.01:0.01:1), Gene_GRNAssort{1,1}, 'MarkerSize',5, 'LineWidth',1); 
set(gca1s, 'Color', [170 0 255]./255)
gca2s = plot((0.01:0.01:1), PPI_GRNAssort{1,1}, 'MarkerSize',5,'LineWidth',1);
set(gca2s, 'Color', [0 50 0]./255)
gca3s = plot((0.01:0.01:1), Meta_GRNAssort{1,10}, 'MarkerSize',5,'LineWidth',1);
set(gca3s, 'Color', [220 71 0]./255)
hold off
title('GRN Assortative Random')


gca = subplot(4,3,4);
gca1s = plot((0.01:0.01:1), Gene_FuncSizeSim{1,1},'-.', 'MarkerSize',5, 'LineWidth',1);
hold on 
set(gca1s, 'Color', [170 0 255]./255)
gca2s = plot((0.01:0.01:1), PPI_FuncSizeSim{1,1},'-.', 'MarkerSize',5,'LineWidth',1);
set(gca2s, 'Color', [0 50 0]./255)
gca3s = plot((0.01:0.01:1), Meta_FuncSizeSim{1,10},'-.', 'MarkerSize',5,'LineWidth',1);
set(gca3s, 'Color', [220 71 0]./255)


gca1s = plot((0.01:0.01:1), Gene_GRNDisAssort{1,1}, 'MarkerSize',5, 'LineWidth',1); 
set(gca1s, 'Color', [170 0 255]./255)
gca2s = plot((0.01:0.01:1), PPI_GRNDisAssort{1,1}, 'MarkerSize',5,'LineWidth',1);
set(gca2s, 'Color', [0 50 0]./255)
gca3s = plot((0.01:0.01:1), Meta_GRNDisAssort{1,10}, 'MarkerSize',5,'LineWidth',1);
set(gca3s, 'Color', [220 71 0]./255)
hold off
title('GRN Disassortative Random')


gca = subplot(4,3,7);
for k=1:1:10
    plot(0.01:0.01:1,Meta_FuncSizeSim{1,k},'-.');
    hold on
    plot(0.01:0.01:1, Meta_GRNDisAssort{1,k},'-');    
    ylim([0 1])
end
title('GRN Disassortative Random')
gca = subplot(4,3,10);
for k=1:1:10
    plot(0.01:0.01:1,Meta_FuncSizeSim{1,k},'-.');
    hold on
    plot(0.01:0.01:1, Meta_GRNAssort{1,k},'-');    
    ylim([0 1])
end
title('GRN Assortative Random')


gca = subplot(4,3,2);
gca1s = plot((0.01:0.01:1), Gene_FuncSizeSim{1,1},'-.', 'MarkerSize',5, 'LineWidth',1);
hold on 
set(gca1s, 'Color', [170 0 255]./255)
gca2s = plot((0.01:0.01:1), PPI_FuncSizeSim{1,1},'-.', 'MarkerSize',5,'LineWidth',1);
set(gca2s, 'Color', [0 50 0]./255)
gca3s = plot((0.01:0.01:1), Meta_FuncSizeSim{1,10},'-.', 'MarkerSize',5,'LineWidth',1);
set(gca3s, 'Color', [220 71 0]./255)


gca1s = plot((0.01:0.01:1), Gene_PPIAssort{1,1}, 'MarkerSize',5, 'LineWidth',1); 
set(gca1s, 'Color', [170 0 255]./255)
gca2s = plot((0.01:0.01:1), PPI_PPIAssort{1,1}, 'MarkerSize',5,'LineWidth',1);
set(gca2s, 'Color', [0 50 0]./255)
gca3s = plot((0.01:0.01:1), Meta_PPIAssort{1,10}, 'MarkerSize',5,'LineWidth',1);
set(gca3s, 'Color', [220 71 0]./255)
hold off
title('PPI Assortative Random')

gca = subplot(4,3,5);
gca1s = plot((0.01:0.01:1), Gene_FuncSizeSim{1,1},'-.', 'MarkerSize',5, 'LineWidth',1);
hold on 
set(gca1s, 'Color', [170 0 255]./255)
gca2s = plot((0.01:0.01:1), PPI_FuncSizeSim{1,1},'-.', 'MarkerSize',5,'LineWidth',1);
set(gca2s, 'Color', [0 50 0]./255)
gca3s = plot((0.01:0.01:1), Meta_FuncSizeSim{1,10},'-.', 'MarkerSize',5,'LineWidth',1);
set(gca3s, 'Color', [220 71 0]./255)


gca1s = plot((0.01:0.01:1), Gene_PPIDisAssort{1,1}, 'MarkerSize',5, 'LineWidth',1); 
set(gca1s, 'Color', [170 0 255]./255)
gca2s = plot((0.01:0.01:1), PPI_PPIDisAssort{1,1}, 'MarkerSize',5,'LineWidth',1);
set(gca2s, 'Color', [0 50 0]./255)
gca3s = plot((0.01:0.01:1), Meta_PPIDisAssort{1,10}, 'MarkerSize',5,'LineWidth',1);
set(gca3s, 'Color', [220 71 0]./255)
hold off
title('PPI Disassortative Random')

gca = subplot(4,3,8);
for k=1:1:10
    plot(0.01:0.01:1,Meta_FuncSizeSim{1,k},'-.');
    hold on
    plot(0.01:0.01:1, Meta_PPIDisAssort{1,k},'-');    
    ylim([0 1])
end
title('PPI Disassortative Random')
gca = subplot(4,3,11);
for k=1:1:10
    plot(0.01:0.01:1,Meta_FuncSizeSim{1,k},'-.');
    hold on
    plot(0.01:0.01:1, Meta_PPIAssort{1,k},'-');    
    ylim([0 1])
end
title('PPI Assortative Random')



gca = subplot(4,3,3);
gca1s = plot((0.01:0.01:1), Gene_FuncSizeSim{1,1},'-.', 'MarkerSize',5, 'LineWidth',1);
hold on 
set(gca1s, 'Color', [170 0 255]./255)
gca2s = plot((0.01:0.01:1), PPI_FuncSizeSim{1,1},'-.', 'MarkerSize',5,'LineWidth',1);
set(gca2s, 'Color', [0 50 0]./255)
gca3s = plot((0.01:0.01:1), Meta_FuncSizeSim{1,10},'-.', 'MarkerSize',5,'LineWidth',1);
set(gca3s, 'Color', [220 71 0]./255)


gca1s = plot((0.01:0.01:1), Gene_MetaAssort{1,1}, 'MarkerSize',5, 'LineWidth',1); 
set(gca1s, 'Color', [170 0 255]./255)
gca2s = plot((0.01:0.01:1), PPI_MetaAssort{1,1}, 'MarkerSize',5,'LineWidth',1);
set(gca2s, 'Color', [0 50 0]./255)
gca3s = plot((0.01:0.01:1), Meta_MetaAssort{1,10}, 'MarkerSize',5,'LineWidth',1);
set(gca3s, 'Color', [220 71 0]./255)
hold off
title('Meta Assortative Random')


gca = subplot(4,3,6);
gca1s = plot((0.01:0.01:1), Gene_FuncSizeSim{1,1},'-.', 'MarkerSize',5, 'LineWidth',1);
hold on 
set(gca1s, 'Color', [170 0 255]./255)
gca2s = plot((0.01:0.01:1), PPI_FuncSizeSim{1,1},'-.', 'MarkerSize',5,'LineWidth',1);
set(gca2s, 'Color', [0 50 0]./255)
gca3s = plot((0.01:0.01:1), Meta_FuncSizeSim{1,10},'-.', 'MarkerSize',5,'LineWidth',1);
set(gca3s, 'Color', [220 71 0]./255)


gca1s = plot((0.01:0.01:1), Gene_MetaDisAssort{1,1}, 'MarkerSize',5, 'LineWidth',1); 
set(gca1s, 'Color', [170 0 255]./255)
gca2s = plot((0.01:0.01:1), PPI_MetaDisAssort{1,1}, 'MarkerSize',5,'LineWidth',1);
set(gca2s, 'Color', [0 50 0]./255)
gca3s = plot((0.01:0.01:1), Meta_MetaDisAssort{1,10}, 'MarkerSize',5,'LineWidth',1);
set(gca3s, 'Color', [220 71 0]./255)
hold off
title('Meta Disassortative Random')

gca = subplot(4,3,9);
for k=1:1:10
    plot(0.01:0.01:1,Meta_FuncSizeSim{1,k},'-.');
    hold on
    plot(0.01:0.01:1, Meta_MetaDisAssort{1,k},'-');    
    ylim([0 1])
end
title('Meta Disassortative Random')


%gca = subplot(4,3,12);
for k=1:1:10
    plot(0.01:0.01:1,Meta_FuncSizeSim{1,k},'-.');
    hold on
    plot(0.01:0.01:1, Meta_MetaDisAssort{1,k},'-');    
    ylim([0 1])
end
title('Meta DisAssortative Random')