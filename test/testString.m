%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����ڲ���MATLAB��������ַ���ʹ�� ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


StartSweepFreq = 1;
EndSweepFreq = 10;
SweepName = ['Fast' num2str(StartSweepFreq) 'to' num2str(EndSweepFreq) 'GHz'];
disp(SweepName);

SetupFreq = 8.34;
SetupFreqName = num2str(SetupFreq);
SetupFreqName = strrep(SetupFreqName, '.', '_');
disp(SetupFreqName);