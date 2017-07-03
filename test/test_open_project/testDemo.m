%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����ڲ���MATLAB-HFSS-API��hfssOpenProject ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%% ---- clear and close
clc;
clear;
close all;
fprintf('clear and close====���\n\n');



%% ---- ���ز����ļ�
    %{
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            ���ű��������ع�����ģ�����еĻ����ߴ������
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    modelParametersForTest;




%% ---- �����ű��͹����ļ�
tmpPrjFile = 'G:\my_document\matlab\data_file\hfss_file\testModel.aedt'; % ---- ͨ��vbs������HFSS�ļ��ı���·����testModel.aedt���ļ��� % ---- �˴���Ҫ��.aedt��Ϊ�ļ��ĺ�׺��������.hfss��HFSS16.1���ļ���׺��.aedt�������汾�����в���
tmpScriptFile = 'G:\my_document\matlab\data_file\vbs\testModel.vbs'; % ---- �ű��ļ��ı���·����testModel.vbs���ļ���
fprintf('�����ű��͹����ļ�====���\n\n');







% ---- �����µ���ʱ�ű��ļ�
fid = fopen(tmpScriptFile, 'wt');
fprintf('�����µ���ʱ�ű��ļ�====���\n\n');



hfssProjectFile = 'G:\my_document\matlab\data_file\hfss_file\BasicModelNoSwitch.aedt';
designName = 'ModelForRA';
% ---- �����µĹ��̺�����ļ�
hfssOpenProject(fid, hfssProjectFile);
hfssSetDesign(fid, designName);
% hfssNewProject(fid);
% hfssInsertDesign(fid,'Patch');
fprintf('�����µĹ��̺�����ļ�====���\n\n');







% ---- ʹ�ýű���ģ ---- %





% ---- �������ʻ���

% ---- ��������
hfssBox(fid, 'Substrate1', [substrateLength/2, substrateLength/2, 0], [substrateLength + 100, substrateLength + 100, height + 100], 'mm');
% ---- ���ò���
hfssAssignMaterial(fid, 'Substrate1', 'FR4_epoxy');
% ---- ����Color
hfssSetColor(fid, 'Substrate1', [0, 128, 0]);
% ---- ����͸����
hfssSetTransparency(fid, {'Substrate1'}, 0.6);
fprintf('�������ʻ���====���\n\n');




% ---- ����
hfssSaveProject(fid, tmpPrjFile, true);
fprintf('����====���\n\n');







%% ---- �رչ����ļ�
    hfssCloseActiveProject(fid);
    
    fprintf('�رչ����ļ�---->���\n\n');
    
          
%% ---- �ر�fid
    fclose(fid);
    
    fprintf('�ر�fid---->���\n\n');

 
%% ---- ִ��vbs�ű�
    % ---- HFSSִ��·��
    hfssExecutePath = 'D:\"Program Files"\AnsysEM\AnsysEM16.1\Win64\ansysedt.exe'; 
    % ---- execute vbs
    fprintf('����ִ��vbs�ű�\n\n');
    hfssExecuteScript(hfssExecutePath, tmpScriptFile);
   
    fprintf('ִ��vbs�ű�---->���\n\n');