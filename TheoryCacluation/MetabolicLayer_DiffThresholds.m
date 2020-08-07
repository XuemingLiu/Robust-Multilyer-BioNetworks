clear

load('Meta12_Func_DifferentThresholds.mat')
Meta12_Func = Meta_Func;
load('Meta03_Func_DifferentThresholds.mat')
Meta03_Func = Meta_Func;
load('Meta23_Func_DifferentThresholds.mat')
Meta23_Func = Meta_Func;
load('Meta_Func_DifferentThresholds.mat')

fileID = fopen('Simulations/Meta_Simulation_WholeRobust_fpm01To1.txt');
Meta_FuncSizeSim_01To1 = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);

fileID = fopen('Simulations/Meta03_Simulation_WholeRobust_fpm01To1.txt');
Meta03_FuncSizeSim_01To1 = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);

fileID = fopen('Simulations/Meta12_Simulation_WholeRobust_fpm01To1.txt');
Meta12_FuncSizeSim_01To1 = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);

fileID = fopen('Simulations/Meta23_Simulation_WholeRobust_fpm01To1.txt');
Meta23_FuncSizeSim_01To1 = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);

figure(1)
subplot(2,2,1)
hold on
for k=1:1:10
    plot(0.01:0.01:1,Meta_FuncSizeSim_01To1{1,k},'o');
    plot(0.01:0.01:1,Meta_Func(:,k),'-');
end
hold off

subplot(2,2,2)
hold on
for k=1:1:10
    plot(0.01:0.01:1,Meta03_FuncSizeSim_01To1{1,k},'o');
    plot(0.01:0.01:1,Meta03_Func(:,k),'-');
end
hold off


subplot(2,2,3)
hold on
for k=1:1:10
    plot(0.01:0.01:1,Meta12_FuncSizeSim_01To1{1,k},'o');
    plot(0.01:0.01:1,Meta12_Func(:,k),'-');
end
hold off

subplot(2,2,4)
hold on
for k=1:1:10
    plot(0.01:0.01:1,Meta23_FuncSizeSim_01To1{1,k},'o');
    plot(0.01:0.01:1,Meta23_Func(:,k),'-');    
end
hold off

