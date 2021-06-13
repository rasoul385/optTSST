clc
% clear all
 close all
load real_data.mat
% dd=cmpn;
% Y=cmpn;
% d=cmp;
 %% parameters
 dt=0.002;s=0.02;rank=20;
 tic
for i=1:48
     i
     Ts(:,i)= SSTAN(dd(:,i),dt,s,rank);

end

 tic_SSAFT=toc;
   u=  7.0116;
 figure
   subplot 121
 plotseis(Ts,(0:size(d,1)-1)*dt,1:size(d,2),[],[1.5 u],1,1,[.1,0,0]);
 subplot 122
  plotseis(dd-Ts,(0:size(d,1)-1)*dt,1:size(d,2),[],[1.5 u],1,1,[.1,0,0]);
  figure
  cormat=c_corr(dd,Ts, 5);
imagesc(1:size(d,2),(0:size(d,1)-1)*dt,abs(cormat))
ax = gca;
ax.FontSize=20;
box on
xlabel('Trace No.','FontSize',20)
ylabel('Time (s) ','FontSize',20)
text(-8,0,'a)','FontSize',20)