% ---- ������MATLAB�������HFSSִ��vbs���� ----




% ---- clear and close
clc;
clear;
close all;




% ---- HFSS��ִ��·��
hfssExecutePath = 'D:\"Program Files"\AnsysEM\AnsysEM16.1\Win64\ansysedt.exe'; % ---- �˴�"Program Files"��Ҫ��˫���ţ���֪��Ϊʲô�������������Program Files���棬ò�Ʋ���Ҫ���
fprintf('���HFSS��ִ��·��====���\n\n');




% ---- vbs�ű�ִ��·��
tmpScriptFile = 'G:\my_document\MATLAB\hfss_matlab\reconfigrable_antenna\test\testModel.vbs'; % ---- vbs�ű���Ӳ���е�λ��
fprintf('���vbs�ű�ִ��·��====���\n\n');




% ---- ���HFSS-MATLAB-API��·��
addpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\3dmodeler');
addpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\analysis');
addpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\boundary');
addpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\general');
fprintf('���HFSS-MATLAB-API��·��====���\n\n');




% ----- ִ��vbs�ű�
fprintf('����ִ��vbs�ű�\n\n');
hfssExecuteScript(hfssExecutePath, tmpScriptFile);
fprintf('ִ��vbs�ű�====���\n\n');




% ---- �Ƴ�HFSS-MATLAB-API��·��
rmpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\3dmodeler');
rmpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\analysis');
rmpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\boundary');
rmpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\general');
fprintf('�Ƴ�HFSS-MATLAB-API��·��====���\n\n');


%% ---- ִ��vbs�ű�
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            ---- 1�� ----
                �˴�"Program Files"��Ҫ��˫���ţ�ԭ����
                �������HFSSû�а�װ����Program Files���棬����Ҫ���
            ---- 2�� ----
                ����HFSS 16.1��HFSS��ִ���ļ���ansysedt.exe������hfss.exe
                �����汾���м��
            ---- 3�� ----
                ִ��HFSSһ��Ҫ���ڹر�fid֮��
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    % ---- HFSSִ��·��
        hfssExecutePath = 'D:\"Program Files"\AnsysEM\AnsysEM16.1\Win64\ansysedt.exe'; 
    % ---- execute vbs
        fprintf('����ִ��vbs�ű�\n\n');
        hfssExecuteScript(hfssExecutePath, tmpScriptFile);
    
    fprintf('ִ��vbs�ű�---->���\n\n');