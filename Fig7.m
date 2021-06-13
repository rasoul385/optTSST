% d=d(156:end,:);
close all

ui=13;
subplot 321
plot(d(:,ui),'linewidth',1,'markersize',6,'markerfacecolor','k')
hold on 
plot(dd(:,ui),'--','linewidth',1,'markersize',6)
legend(' Clean Trace', 'Noisy Trace')
text(-60,.25,'a)','FontSize',14)
ax = gca;
ax.FontSize=14;
box on
xlabel('Time(ms)','FontSize',14)
ylabel(' Amplitude','FontSize',14)
%% 
subplot 322
plot(d(:,ui),'linewidth',1,'markersize',6,'markerfacecolor','k')
hold on 
plot(Ts(:,ui),'--','linewidth',1,'markersize',6)
legend(' Clean Trace', 'proposed method')
text(-60,.25,'b)','FontSize',14)
ax = gca;
ax.FontSize=14;
box on
xlabel('Time(ms)','FontSize',14)
ylabel(' Amplitude','FontSize',14)
%% 
subplot 325
plot(d(:,ui),'linewidth',1,'markersize',6,'markerfacecolor','k')
hold on 
plot(opt_out(:,ui),'--','linewidth',1,'markersize',6)
legend(' Clean Trace', 'f-x SSA')
text(-60,.25,'c)','FontSize',14)
ax = gca;
ax.FontSize=14;
box on
xlabel('Time(ms)','FontSize',14)
ylabel(' Amplitude','FontSize',14)
%% 
subplot 323
plot(d(:,ui),'linewidth',1,'markersize',6,'markerfacecolor','k')
hold on 
plot(god_out(:,ui),'--','linewidth',1,'markersize',6)
legend(' Clean Trace', 'Opt-Wsst')
text(-60,.25,'d)','FontSize',14)
ax = gca;
ax.FontSize=14;
box on
xlabel('Time(ms)','FontSize',14)
ylabel(' Amplitude','FontSize',14)
%% 
subplot 324
plot(d(:,ui),'linewidth',1,'markersize',6,'markerfacecolor','k')
hold on 
plot(ssa_out(:,ui),'--','linewidth',1,'markersize',6)
legend(' Clean Trace', 'God-Wsst')
text(-60,.25,'e)','FontSize',14)
ax = gca;
ax.FontSize=14;
box on
xlabel('Time(ms)','FontSize',14)
ylabel(' Amplitude','FontSize',14)
%% 
% subplot 326
% plot(d(:,ui),'linewidth',1,'markersize',6,'markerfacecolor','k')
% hold on 
% plot(win_out(:,ui),'--','linewidth',1,'markersize',6)
% legend(' Clean Trace', 'DRR method')
% text(-68,1,'f)','FontSize',14)
% ax = gca;
% ax.FontSize=14;
% box on
% xlabel('Time(ms)','FontSize',14)
% ylabel(' Amplitude','FontSize',14)
