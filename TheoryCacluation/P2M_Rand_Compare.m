fileID = fopen('Simulations/Meta_P2MDisAssort_fpm001To1.txt');
Meta_P2MDisAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);

fileID = fopen('Simulations/Meta_P2MAssortative_fpm001To1.txt');
Meta_P2MAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);

fileID = fopen('Simulations/Meta_OriginalModel_fpm001To1.txt');
Meta_Original = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);


R_dif(:,1) = zeros(100,1);
R_dif_Dis(:,1) = zeros(100,1);
for k=1:1:100
    R_dif(k) = sum(Meta_Original{1,k}-Meta_P2MAssort{1,k})*0.01; 
    R_dif_Dis(k) = sum(Meta_Original{1,k}-Meta_P2MDisAssort{1,k})*0.01;   
end

figure(3)
subplot(2,2,1)
plot(0.01:0.01:1, R_dif(1:1:100),'r:o'); 
% hold on
% plot(0.5:0.01:0.7, R_dif(50:1:70),'r:o'); 
% hold off
xlabel('f_{\rm P2M}'); 
ylabel('R_{Ori}-R_{P2M Assort}');
title('General vs P2M Assort')


subplot(2,2,2)
plot(0.01:0.01:1, R_dif_Dis(1:1:100),'r:o'); 
% hold on
% plot(0.5:0.01:0.7, R_dif_Dis(50:1:70),'r:o'); 
% hold off
xlabel('f_{\rm P2M}'); 
ylabel('R_{Ori}-R_{P2M DisAssort}');
title('General vs P2M DisAssort')


fileID = fopen('Simulations/Meta03_P2MDisAssort_fpm001To1.txt');
Meta03_P2MAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);

fileID = fopen('Simulations/Meta03_P2MAssort_fpm001To1.txt');
Meta03_P2MDisAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);

fileID = fopen('Simulations/Meta03_OriginalModel_fpm001To1.txt');
Meta03_Original = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);


R03_dif(:,1) = zeros(100,1);
R03_dif_Dis(:,1) = zeros(100,1);
for k=1:1:100
    R03_dif(k) = sum(Meta03_Original{1,k}-Meta03_P2MAssort{1,k})*0.01; 
    R03_dif_Dis(k) = sum(Meta03_Original{1,k}-Meta03_P2MDisAssort{1,k})*0.01;   
end

figure(4)
subplot(2,2,1)
plot(0.01:0.01:1, R03_dif(1:1:100),'r:o');    
xlabel('f_{\rm P2M}'); 
ylabel('R03_{Ori}-R03_{P2M Assort}');
title('GRN 03 vs P2M Assort')

% 
subplot(2,2,2)
plot(0.01:0.01:1, R03_dif_Dis(1:1:100),'r:o');
xlabel('f_{\rm P2M}');
ylabel('R03_{Ori}-R03_{P2M DisAssort}');
title('GRN 03 vs P2M DisAssort')







fileID = fopen('Simulations/Meta12_P2MDisAssort_fpm001To1.txt');
Meta12_P2MAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);

fileID = fopen('Simulations/Meta12_P2MAssort_fpm001To1.txt');
Meta12_P2MDisAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);

fileID = fopen('Simulations/Meta12_OriginalModel_fpm001To1.txt');
Meta12_Original = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);


R12_dif(:,1) = zeros(100,1);
R12_dif_Dis(:,1) = zeros(100,1);
for k=1:1:100
    R12_dif(k) = sum(Meta12_Original{1,k}-Meta12_P2MAssort{1,k})*0.01; 
    R12_dif_Dis(k) = sum(Meta12_Original{1,k}-Meta12_P2MDisAssort{1,k})*0.01;   
end

figure(3)
subplot(2,2,3)
plot(0.01:0.01:1, R12_dif(1:1:100),'r:o');    
xlabel('f_{\rm P2M}'); 
ylabel('R12_{Ori}-R12_{P2M Assort}');
title('GRN 12 vs P2M Assort')

% 
subplot(2,2,4)
plot(0.01:0.01:1, R12_dif_Dis(1:1:100),'r:o');
xlabel('f_{\rm P2M}');
ylabel('R12_{Ori}-R12_{P2M DisAssort}');
title('GRN 12 vs P2M DisAssort')






fileID = fopen('Simulations/Meta23_P2MDisAssort_fpm001To1.txt');
Meta23_P2MAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);

fileID = fopen('Simulations/Meta23_P2MAssort_fpm001To1.txt');
Meta23_P2MDisAssort = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);

fileID = fopen('Simulations/Meta23_OriginalModel_fpm001To1.txt');
Meta23_Original = textscan(fileID,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f');
fclose(fileID);


R23_dif(:,1) = zeros(100,1);
R23_dif_Dis(:,1) = zeros(100,1);
for k=1:1:100
    R23_dif(k) = sum(Meta23_Original{1,k}-Meta23_P2MAssort{1,k})*0.01; 
    R23_dif_Dis(k) = sum(Meta23_Original{1,k}-Meta23_P2MDisAssort{1,k})*0.01;   
end

figure(4)
subplot(2,2,3)
plot(0.01:0.01:1, R23_dif(1:1:100),'r:o');    
xlabel('f_{\rm P2M}'); 
ylabel('R23_{Ori}-R23_{P2M Assort}');
title('GRN 23 vs P2M Assort')

% 
subplot(2,2,4)
plot(0.01:0.01:1, R23_dif_Dis(1:1:100),'r:o');
xlabel('f_{\rm P2M}');
ylabel('R23_{Ori}-R23_{P2M DisAssort}');
title('GRN 23 vs P2M DisAssort')

print(gcf, '-depsc2', 'Gene12_Gene23_P2MDiff.eps')