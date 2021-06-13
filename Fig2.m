load syn.mat
u=  0.3295;
figure
  subplot 121
 plotseis(cmp,(0:size(cmp,1)-1)*dt,1:size(cmp,2),[],[1.5 u],1,1,[.1,0,0]);
 ax = gca;
ax.FontSize=20;
box on
xlabel('Trace No.','FontSize',20)
ylabel('Time (s) ','FontSize',20)
text(-8,0,'a)','FontSize',20)
 subplot 122
  plotseis(cmpn,(0:size(cmpn,1)-1)*dt,1:size(cmpn,2),[],[1.5 u],1,1,[.1,0,0]);
  ax = gca;
ax.FontSize=20;
box on
xlabel('Trace No.','FontSize',20)
ylabel('Time (s) ','FontSize',20)
text(-8,0,'b)','FontSize',20)