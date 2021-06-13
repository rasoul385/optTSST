    clc; clear; 
    close all; 
%% Open File
    folder1 = 'ridge';
    addpath(genpath(folder1));
    folder2 = 'other';
    addpath(genpath(folder2));
    folder3 = 'method';
    addpath(genpath(folder3));
    folder4 = 'indicator';
    addpath(genpath(folder4));
    folder5 = 'mfiles';
    addpath(genpath(folder5));
    folder6 = 'ST';
    addpath(genpath(folder6));
    %% 
%     load('E:\rasoul anvari\new file of master\kode\data\seismic data\saltdome2.mat')
%     data=saltdome2;dt=0.002;
N = 512;
    fs = 500;
    t = (0:N-1)/fs;
    f = (0:N/2)*fs/N;
    rng('default')
    %% 
    sampling_interval=.002;
% %%%%%%%%%%%%%%%%%%%%%%%
wavelet=ricker(sampling_interval,25);
wavelet1=ricker(sampling_interval,55);
wavelet2=ricker(sampling_interval,35);
%% length 512 uncomment below code
wavelet3=ricker(sampling_interval,45);
sign_free_noise=[-wavelet;-wavelet1;wavelet2;wavelet3];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
% sign_free_noise=[wavelet;-wavelet1;wavelet2];
sign_free_noise=sign_free_noise/max(abs(sign_free_noise));
y=sign_free_noise+randn(size(sign_free_noise))/10.6;
%% 
%    Parameters
    map = jet ;
    %Window Parameter
    WindowOpt = struct('type','gauss','s',.009);
    %Frequency axis Parameter
    Parameter = struct('L',N/2+1,'fmin',0,'fmax',fs/2); 
[TTs,t,f,xMean,~] = tsst(y, fs,  WindowOpt, Parameter, '2Ord');
%% 
% [Shat,relmse_hat,mse_hat] = optshrink(TTs,4);
%% 
% [U S V]=svd(TTs,'econ');
% ss = optimal_shrinkage(diag(S),.45,'op',.008);
% ss=atanT(diag(S),.01,.095);
% Shat=U*diag(ss)*V';
%% 
%         Ts = itsst(Shat,fs, xMean);
        %% 
            WindowOpt = struct('type','gauss','s',.01);
        [TTs,t,f,xMean,~] = tsst(y, fs,  WindowOpt, Parameter, '1Ord');
[Shat,relmse_hat,mse_hat] = optshrink(TTs,7);
        Ts = itsst(Shat,fs, xMean);
        Ts=smooth(Ts, 'lowess')

%         Ts=Ts./max(max(Ts)).*max(max(y));
       [ snr(sign_free_noise,Ts-sign_free_noise) snr(sign_free_noise,y-sign_free_noise)]
%        subplot 211
plot(Ts)
% subplot 212
hold on
plot(sign_free_noise)
%% 
%  figure
% % imagesc(t,f,abs(Ts));axis xy;colormap(map);axis tight; 
%     xlabel({'Time (s)','(d)'},'FontSize',20);
%     ylabel('Frequency (Hz)','FontSize',20); 
% subplot 212
% imagesc(t,f,abs(TTs));axis xy;colormap(map);axis tight; 
%     xlabel({'Time (s)','(d)'},'FontSize',20);
%     ylabel('Frequency (Hz)','FontSize',20); 