clc
% clear all
 close all
load snr-5.mat
dd=cmpn;
Y=cmpn;
d=cmp;
 %% parameters
 dt=0.002;s=0.02;rank=3;
 tic
for i=1:40
     i
     Ts(:,i)= SSTAN(dd(:,i),dt,s,rank);

end

 tic_SSAFT=toc;
   u=  0.3295;
 figure
   subplot 121
 plotseis(Ts,(0:size(d,1)-1)*dt,1:size(d,2),[],[1.5 u],1,1,[.1,0,0]);
 subplot 122
  plotseis(dd-Ts,(0:size(d,1)-1)*dt,1:size(d,2),[],[1.5 u],1,1,[.1,0,0]);
  %% 
 rd2=opt_out;
rd3=god_out;
rd4=ssa_out;
figure
subplot 121
plotseis(rd2,(0:size(d,1)-1)*dt,1:size(d,2),[],[1.5 u],1,1,[.1,0,0]);
ax = gca;
ax.FontSize=20;
box on
xlabel('Trace No.','FontSize',20)
ylabel('Time (s) ','FontSize',20)
text(-8,0,'c)','FontSize',20)
subplot 122
plotseis(Y-rd2,(0:size(d,1)-1)*dt,1:size(d,2),[],[1.5 u],1,1,[.1,0,0]);
ax = gca;
ax.FontSize=20;
box on
xlabel('Trace No.','FontSize',20)
ylabel('Time (s) ','FontSize',20)
text(-8,0,'d)','FontSize',20)
%% 
figure
subplot 121
plotseis(rd3,(0:size(d,1)-1)*dt,1:size(d,2),[],[1.5 u],1,1,[.1,0,0]);
ax = gca;
ax.FontSize=20;
box on
xlabel('Trace No.','FontSize',20)
ylabel('Time (s) ','FontSize',20)
text(-8,0,'e)','FontSize',20)
subplot 122
plotseis(Y-rd3,(0:size(d,1)-1)*dt,1:size(d,2),[],[1.5 u],1,1,[.1,0,0]);
ax = gca;
ax.FontSize=20;
box on
xlabel('Trace No.','FontSize',20)
ylabel('Time (s) ','FontSize',20)
text(-8,0,'f)','FontSize',20)
%%
figure
subplot 121
plotseis(rd4,(0:size(d,1)-1)*dt,1:size(d,2),[],[1.5 u],1,1,[.1,0,0]);
ax = gca;
ax.FontSize=20;
box on
xlabel('Trace No.','FontSize',20)
ylabel('Time (s) ','FontSize',20)
text(-8,0,'g)','FontSize',20)
subplot 122
plotseis(Y-rd4,(0:size(d,1)-1)*dt,1:size(d,2),[],[1.5 u],1,1,[.1,0,0]);
ax = gca;
ax.FontSize=20;
box on
xlabel('Trace No.','FontSize',20)
ylabel('Time (s) ','FontSize',20)
text(-8,0,'h)','FontSize',20)
  


 