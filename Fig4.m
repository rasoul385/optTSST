close all
clc
clear all
load snr-5.mat
figure;
% cmp=d;
God=god_out;dt=0.002;den_dataa=Ts;
SSA=ssa_out;optwsst_outt=opt_out;
pause(0.00001);
frame_h = get(handle(gcf),'JavaFrame');
set(frame_h,'Maximized',1);
% freq=(1/dt)*(0:size(dd,1)-1)/size(dd,1);
freq=(1/dt)*(0:size(dd,1)-1)/size(dd,1);
% A_free=sum(abs(fft(cmp)),2)/size(cmp,2);
A_noisy=sum(abs(fft(dd)),2)/size(dd,2);
A_opt=sum(abs(fft(den_dataa)),2)/size(den_dataa,2);
A_God=sum(abs(fft(God)),2)/size(God,2);
A_SSA=sum(abs(fft(SSA)),2)/size(SSA,2);
A_optwsst_out=sum(abs(fft(optwsst_outt)),2)/size(optwsst_outt,2);
% A_win=sum(abs(fft(win_out)),2)/size(win_out,2);
% A_free=A_free/max(A_free);
A_noisy=A_noisy/max(A_noisy);
A_opt=A_opt/max(A_opt);
A_God=A_God/max(A_God);
A_SSA=A_SSA/max(A_SSA);
A_optwsst_out=A_optwsst_out/max(A_optwsst_out);
% A_win=A_win/max(A_win);
% plot(freq,A_free,'--p','linewidth',2)
% hold on
plot(freq,A_noisy,'k-o','linewidth',1,'markersize',6,'markerfacecolor','y')
hold on
plot(freq,A_opt,'k-+','linewidth',1,'markersize',6,'markerfacecolor','g')
plot(freq,A_God,'k-^','linewidth',1,'markersize',6,'markerfacecolor','c')
plot(freq,A_SSA,'k:','linewidth',1,'markersize',6)
plot(freq,A_optwsst_out,'k-*','linewidth',1,'markersize',6,'markerfacecolor','b')
xlabel('Frequency (Hz)','FontSize',20)
ylabel('Amplitude','FontSize',20)
xlim([0 120])
% title('Average Amplitude Spectrum','FontSize',20)
legend('Clean data','Noisy data','Proposed  method','God-Wsst','f-x SSA','Opt-Wsst')
ax = gca;
ax.FontSize=20;
box on
