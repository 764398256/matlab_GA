function myGATestForRA()
%FIND �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
clc;
clear;
close all;
options = gaoptimset('PopulationType','bitString'); %���ó�bitString�ķ�ʽ
options = gaoptimset(options,'PlotFcns',{@gaplotbestf,@gaplotscores,@gaplotbestindiv,@gaplotstopping});
FitnessFcn = @objFuncOfReconfigurableAntenna; % Ŀ�꺯����Ҳ������Ӧ�Ⱥ���
GenomeLength = 12; % Ⱦɫ��ĳ���
[x,fval,exitflag,output] = ga(FitnessFcn,GenomeLength,options)
end

