%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���������ڲ���Cell ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ע�� ---- %
        % ---- ����������Ҫ�����ǣ�
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % ---- 1.����Cell
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
%% ---- clear and close
    clc;
    clear;
    close all;            
%% ---- �趨�������е�����������
    % ---- �趨����m
        m = 5;
    % ---- �趨����n
        n = 5;
%% ---- ���ز����ļ�
    % ---- ��������ģ�Ͳ���
        %{
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                ���ű��������ع�����ģ�����еĻ����ߴ������
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        modelParametersFor_M_N_R_A;
%% ---- �õ�numOfPatch_Switch
    numOfPatch = m * n;
    numOfPatch_Switch = numOfPatch + numOfSwitch;
%% ---- ����һ��cellԪ��
    Patch_Switch = cell(1, numOfPatch_Switch);
%% ---- ����Patch_Switch������index_Patch_Switch
    index_Patch_Switch = 1;
%% ---- ��ֵ
    for ii = 1:1:m
        for jj = 1:1:n
            Patch_Switch{index_Patch_Switch} = ['Patch' num2str(ii) num2str(jj)];
            index_Patch_Switch = index_Patch_Switch + 1;
        end
    end
    for ii = 1:1:numOfSwitch
        Patch_Switch{index_Patch_Switch} = ['Switch' num2str(ii)];
        index_Patch_Switch = index_Patch_Switch + 1;
    end
%% ---- disp
    disp(Patch_Switch);