
clear
fileID = fopen('PPIOri_LCC_Degree_Distribution.txt');
PPIdegDis = textscan(fileID,'%f');
fclose(fileID);

P_k = zeros(length(PPIdegDis{1,1}),1);
for ki = 1:1:length(PPIdegDis{1,1})
    P_k(ki) = PPIdegDis{1,1}(ki);
end

SinglePPI_Func(:,1) = zeros(length(0.01:0.01:1),1);
num = 0;

for p = 0.01:0.01:1
    num = num + 1;
    SinglePPI_Func(num) = p*FuncSizePPINet(P_k,p);
end

figure(4)
plot(0.01:0.01:1, SinglePPI_Func);
hold on
plot([0 1],[0.20665158 0.20665158],'k');
hold off
Coupling_P = 0.6311;

