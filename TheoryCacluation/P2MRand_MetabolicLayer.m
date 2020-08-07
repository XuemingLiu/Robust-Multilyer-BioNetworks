clear
fileID = fopen('Simulations/Meta_Simulation_fpm01To1_ALL.txt');
MetalipidsCell = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f');
Metalipids1 = cell2mat(MetalipidsCell);
Metalipids2 = transpose(Metalipids1./1269);

fileID = fopen('Simulations/Meta_P2MDisAssort_fpm01To1_ALL.txt');
MetalipidsDegCell = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f');
MetalipidsDeg1 = cell2mat(MetalipidsDegCell);
MetalipidsDeg2 = transpose(MetalipidsDeg1./1269);

for k1 = 100:(-1):1
    if Metalipids2(k1,1)~=0
        break
    end
end  
for k2 = 100:(-1):1
    if MetalipidsDeg2(k2,1)~=0
        break
    end
end  
k = min(k1,k2);

for k_fp2m = 0:1:9
    Metalipids = Metalipids2((k_fp2m*10+1):(k+k_fp2m*10),:);
    Metalipidsplot = zeros(length(Metalipids(:,1)),10);
    for i = 0.1:0.1:1
        num = round(length(Metalipids(1,:))*i);
        Metalipidsplot(:,int8(i*10)) = Metalipids(:,num);
    end
    
    
    MetalipidsDeg = MetalipidsDeg2((k_fp2m*10+1):(k+k_fp2m*10),:);
    
    MetalipidsDegplot = zeros(length(MetalipidsDeg(:,1)),10);
    for i = 0.1:0.1:1
        num = round(length(MetalipidsDeg(1,:))*i);
        MetalipidsDegplot(:,int8(i*10)) = MetalipidsDeg(:,num);
    end
    
    p_Value = zeros(length(((1:1:length(MetalipidsDeg(1,:)))./length(MetalipidsDeg(1,:)))./length(MetalipidsDeg(1,:))),1);
    num = 0;
    for i = ((1:1:length(MetalipidsDeg(1,:)))./length(MetalipidsDeg(1,:)))./length(MetalipidsDeg(1,:))
        num = num + 1;
        p_Value(num) = ranksum(Metalipids(:,num),MetalipidsDeg(:,num),'tail','left');
    end
    
    subplot(3,4,k_fp2m+1)
    boxplot(Metalipidsplot, 'Notch','on','Color',[0.7 0.1 0.2]);
    hold on
    boxplot(MetalipidsDegplot, 'Notch','on','Color',[0.1 0.1 1],'labels',{' ','.2',' ','.4',' ','.6',' ','.8',' ','1'});
    hold off
    xlabel('$p$','Fontsize',12,'Interpreter','Latex');
    ylabel(' ', 'Fontsize',12,'Interpreter','Latex');
    %title('$f_{\rm P2M}$ = 1','Fontsize',12,'Interpreter','Latex');

end



clear
% fileID = fopen('Simulations/Meta_OriginalModel_fpm01To1_060To069.txt');
% Meta_FuncSizeSim = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f');
% fclose(fileID);


fileID = fopen('Simulations/Meta_OriginalModel_fpm045_051To059.txt');
Meta_FuncSizeSim_f045f051To059 = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);

fileID = fopen('Simulations/Meta_OriginalModel_fpm060To069.txt');
Meta_FuncSizeSim_f06To069 = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);

fileID = fopen('Simulations/Meta_OriginalModel_fpm01To1.txt');
Meta_FuncSizeSim_f01To1 = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);


Meta_FuncSizeSim = zeros(100,19);
for i = 1:1:6
    Meta_FuncSizeSim(:,i) = Meta_FuncSizeSim_f01To1{1,i};
end
for i = 7:1:15
    Meta_FuncSizeSim(:,i) = Meta_FuncSizeSim_f06To069{1,i-5};    
end
for i = 16:1:19
    Meta_FuncSizeSim(:,i) = Meta_FuncSizeSim_f01To1{1,i-9};
end



fileID = fopen('Simulations/Meta_P2MAssortative_fpm01To1_06To069.txt');
Meta_P2MAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);


fileID = fopen('Simulations/Meta_P2MAssortative_fpm045_051To059.txt');
Meta_P2MAssort_f045f051To059 = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);
fileID = fopen('Simulations/Meta_P2MAssortative_fpm06To069.txt');
Meta_P2MAssort_f06To069 = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);
fileID = fopen('Simulations/Meta_P2MAssortative_fpm01To1.txt');
Meta_P2MAssort_f01To1 = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);

Meta_P2MAssortSim = zeros(100,19);
for i = 1:1:6
    Meta_P2MAssortSim(:,i) = Meta_P2MAssort_f01To1{1,i};
end
for i = 7:1:15
    Meta_P2MAssortSim(:,i) = Meta_P2MAssort_f06To069{1,i-5};    
end
for i = 16:1:19
    Meta_P2MAssortSim(:,i) = Meta_P2MAssort_f01To1{1,i-9};
end


fileID = fopen('Simulations/Meta_P2MDisAssort_fpm01To1_061to069.txt');
Meta_P2MDisAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);


figure(2)
for k=1:1:19
    ColorVec = rand(1,3);
    subplot(4,5,k)
   % hold on
    plot(0.01:0.01:1,Meta_FuncSizeSim(:,k),'r-.');%,'color',ColorVec);
    hold on
    plot(0.01:0.01:1, Meta_P2MDisAssort{1,k},'b-');%,'color',ColorVec);       
    %plot(0.01:0.01:1, Meta_P2MAssort{1,k},'k:');%,'color',ColorVec);    
    ylim([0 1])
    % pause()
    % hold off
end
%title('Metabolic P2MDisassort')

figure(3)
subplot(2,2,1)
R_dif(:,1) = zeros(19,1);
for k=1:1:19
    R_dif(k) = sum(Meta_FuncSizeSim(:,k)-Meta_P2MDisAssort{1,k})*0.01;    
end

plot([0.1:0.1:0.6,0.61:0.01:0.69,0.7:0.1:1], R_dif,'r:o');    
xlabel('f_{\rm P2M}'); 
ylabel('R_{Ori}-R_{P2M DisAssort}');

title('PPI to Metabolic DisAssortative Random')

subplot(2,2,2)
R_dif(:,1) = zeros(19,1);
for k=1:1:19
    R_dif(k) = sum(Meta_FuncSizeSim(:,k)-Meta_P2MAssortSim(:,k))*0.01;    
end
R_dif2(:,1) = zeros(10,1);
for k=1:1:10
    R_dif2(k) = sum(Meta_FuncSizeSim_f045f051To059{1,k}-Meta_P2MAssort_f045f051To059{1,k})*0.01;    
end

plot([0.1:0.1:0.6,0.61:0.01:0.69,0.7:0.1:1], R_dif,'r:o');    
% hold on
% plot([0.45,0.51:0.01:0.59], R_dif2,'r:o'); 
% hold off
xlabel('f_{\rm P2M}'); 
ylabel('R_{Ori}-R_{P2M Assort}');
title('PPI to Metabolic Assortative Random')


