function mypow()
%FIND �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
clc;
clear;
close all;
options = gaoptimset('PopulationType','bitString'); %���ó�bitString�ķ�ʽ
options = gaoptimset(options,'PlotFcns',{@gaplotbestf,@gaplotscores,@gaplotbestindiv,@gaplotstopping});
FitnessFcn = @findpow;
GenomeLength = 2; % 32 bit representation (might have to increase
[x,fval,exitflag,output] = ga(FitnessFcn,GenomeLength,options)
end