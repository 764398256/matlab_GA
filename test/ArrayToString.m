%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���������ڲ��Խ�����ת�����ַ��� ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ---- ��������
    % ---- ���������Ϣ��1 1 0 1 0 0 0 1 1 1 1 0 3.85 -11.82 3359
    SwitchArray = [1 1 0 1 0 0 0 1 1 1 1 0 3.85 -11.82 3359];
%% ---- ������ת�����ַ���
    SwitchArrayString = num2str(SwitchArray(15));
%% ---- ���SwitchArrayString
    disp(SwitchArrayString);
%% ---- �ַ�����ƴ��
    contactString = ['contact', num2str(SwitchArray(15)), '.mat'];
    disp(contactString);