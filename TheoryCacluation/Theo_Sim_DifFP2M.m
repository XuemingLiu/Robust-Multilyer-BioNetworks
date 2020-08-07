fileID = fopen('Simulations/Meta_Simulation_WholeRobust_fpm01To1.txt');
Meta_f01To1 = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);
fileID = fopen('Simulations/Meta03_Simulation_WholeRobust_fpm01To1.txt');
Meta03_f01To1 = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);
fileID = fopen('Simulations/Meta12_Simulation_WholeRobust_fpm01To1.txt');
Meta12_f01To1 = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);
fileID = fopen('Simulations/Meta23_Simulation_WholeRobust_fpm01To1.txt');
Meta23_f01To1 = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);


load('Meta_Func_DifferentThresholds.mat');
Meta_Theo = Meta_Func;
load('Meta03_Func_DifferentThresholds.mat');
Meta03_Theo = Meta_Func;
load('Meta12_Func_DifferentThresholds.mat');
Meta12_Theo = Meta_Func;
load('Meta23_Func_DifferentThresholds.mat');
Meta23_Theo = Meta_Func;


figure(1)
subplot(2,2,1)
plot(0.01:0.01:1,Meta_Theo);
hold on
for k = 1:1:10
    plot(0.01:0.01:1,Meta_f01To1{1,k},'o');
end
hold off


subplot(2,2,2)
plot(0.01:0.01:1,Meta03_Theo);
hold on
for k = 1:1:10
    plot(0.01:0.01:1,Meta03_f01To1{1,k},'o');
end
hold off



subplot(2,2,3)
plot(0.01:0.01:1,Meta12_Theo);
hold on
for k = 1:1:10
    plot(0.01:0.01:1,Meta12_f01To1{1,k},'o');
end
hold off

subplot(2,2,4)
plot(0.01:0.01:1,Meta23_Theo);
hold on
for k = 1:1:10
    plot(0.01:0.01:1,Meta23_f01To1{1,k},'o');
end
hold off
