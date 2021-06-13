close all
rd1=Ts;
rd2=opt_out;
rd3=god_out;
rd4=ssa_out;
dt=0.002;u= 7.0116;
% Y=data1;
subplot 121
cormat=c_corr(dd,rd1, 5);
imagesc(1:size(d,2),(0:size(d,1)-1)*dt,abs(cormat))
ax = gca;
ax.FontSize=20;
box on
xlabel('Trace No.','FontSize',20)
ylabel('Time (s) ','FontSize',20)
text(-8,0,'a)','FontSize',20)
subplot 122
cormat2=c_corr(dd,rd2, 5);
imagesc(1:size(d,2),(0:size(d,1)-1)*dt,abs(cormat2))
ax = gca;
ax.FontSize=20;
box on
xlabel('Trace No.','FontSize',20)
ylabel('Time (s) ','FontSize',20)
text(-8,0,'b)','FontSize',20)
%%
figure
subplot 121
cormat3=c_corr(dd,rd3, 5);
imagesc(1:size(d,2),(0:size(d,1)-1)*dt,abs(cormat3))
ax = gca;
ax.FontSize=20;
box on
xlabel('Trace No.','FontSize',20)
ylabel('Time (s) ','FontSize',20)
text(-8,0,'c)','FontSize',20)
subplot 122
cormat4=c_corr(dd,rd4, 5);
imagesc(1:size(d,2),(0:size(d,1)-1)*dt,abs(cormat4))
ax = gca;
ax.FontSize=20;
box on
xlabel('Trace No.','FontSize',20)
ylabel('Time (s) ','FontSize',20)
text(-8,0,'d)','FontSize',20)
