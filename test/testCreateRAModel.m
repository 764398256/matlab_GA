% ==== �������ڲ���createReconfigurableAntennaModel.m��ʹ�� ==== 


    % ---- 
    % ---- �����ļ�λ�ã�G:\my_document\MATLAB\hfss_matlab\test\reconfigrable_antenna\model\createReconfigurableAntennaModel.m
    % ---- 


    % ---- ����Ŀ�ģ�
        % ---- ͨ������createReconfigurableAntennaModel.m���õ�ģ��


%% ---- clear and close
    clc;
    clear;
    close all;
    
    fprintf('clear and close---->���\n\n');

    
%% ---- ���ز����ļ�
    allKnownParameters;
    
    fprintf('��������---->���\n\n');


%% ---- ���������ļ�
    % ---- ͨ��vbs������HFSS�ļ��ı���·����ModelExecuteDemo.aedt���ļ��� 
    % ---- �˴���Ҫ��.aedt��Ϊ�ļ��ĺ�׺��������.hfss��HFSS16.1���ļ���׺��.aedt�������汾�����в���
    tmpPrjFile = 'G:\my_document\HFSS\MATLAB\reconfigrable_antenna\ModelUniteExecuteInterpolatingDemo.aedt'; 
    
    fprintf('���������ļ�---->���\n\n');
    
    
%% ---- �����ű��ļ�
    % ---- �ű��ļ��ı���·����testModel.vbs���ļ���
    tmpScriptFile = 'G:\my_document\MATLAB\hfss_matlab\test\reconfigrable_antenna\model\ModelUniteExecuteInterpolatingDemo.vbs';
    
    fprintf('�����ű��ļ�---->���\n\n');
    

%% ---- ���HFSS-MATLAB-API��·��
    addpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\3dmodeler');
    addpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\analysis');
    addpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\boundary');
    addpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\general');
    
    fprintf('���HFSS-MATLAB-API��·��---->���\n\n');


%% ---- �����µ���ʱ�ű��ļ�
    fid = fopen(tmpScriptFile, 'wt');
    
    fprintf('�����µ���ʱ�ű��ļ�---->���\n\n');


%% ---- �����µĹ��̺�����ļ�
    hfssNewProject(fid);
    hfssInsertDesign(fid,'ModelUniteExecuteInterpolatingDemo');
    
    fprintf('�����µĹ��̺�����ļ�---->���\n\n');
    

%% ---- ʹ�ýű���ģ ---- %%
    % ---- ���ش���ģ�ͽű�
    createReconfigurableAntennaModel;
    
    
    %% ---- ������Ƶ��
    hfssInsertSolution(fid, 'Setup4_2GHz', 4.2, 0.1, 20);
    
    fprintf('������Ƶ��---->���\n\n');
    
    
%% ---- ���ɨƵ��Χ
    hfssInterpolatingSweep(fid, 'Interp1to10GHz', 'Setup4_2GHz', 1, 10, 1000, 101, 0.5);
    
    fprintf('���ɨƵ��Χ---->���\n\n');
    
 
%% ---- �������ɨƵ
    hfssSolveSetup(fid, 'Setup4_2GHz');
    
    fprintf('�������ɨƵ---->���\n\n');    
    

%% ---- �������
    % ---- ����ModelExecuteDemoDataFile
        tmpDataFile = 'G:\my_document\MATLAB\data_file\test\reconfigrable_antenna\model\ModelUniteExecuteInterpolatingDemoDataFile.m';
    % ---- ���.m��ʽ�������ļ�
        hfssExportNetworkData(fid, tmpDataFile, 'Setup4_2GHz', 'Interp1to10GHz');
        
    fprintf('�������---->���\n\n');
        
        
%% ---- ����
    hfssSaveProject(fid, tmpPrjFile, true);
    
    fprintf('����---->���\n\n');
    
      
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

     
% %% ---- �Ƴ�HFSS-MATLAB-API��·��
%     rmpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\3dmodeler');
%     rmpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\analysis');
%     rmpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\boundary');
%     rmpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\general');
%     
%     fprintf('�Ƴ�HFSS-MATLAB-API��·��---->���\n\n');
    