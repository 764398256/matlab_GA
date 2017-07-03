% ==== ����ģ�͵Ľ��� ====


% ---- clear and close
clc;
clear;
close all;
fprintf('clear and close====���\n\n');




% ---- ���ز����ļ�
allKnownParameters;
fprintf('��������====���\n\n');




% ---- �����ű��͹����ļ�
tmpPrjFile = 'G:\my_document\HFSS\MATLAB\test\testModel.aedt'; % ---- ͨ��vbs������HFSS�ļ��ı���·����testModel.aedt���ļ��� % ---- �˴���Ҫ��.aedt��Ϊ�ļ��ĺ�׺��������.hfss��HFSS16.1���ļ���׺��.aedt�������汾�����в���
tmpScriptFile = 'G:\my_document\MATLAB\hfss_matlab\reconfigrable_antenna\test\testModel.vbs'; % ---- �ű��ļ��ı���·����testModel.vbs���ļ���
fprintf('�����ű��͹����ļ�====���\n\n');




% ---- ���HFSS-MATLAB-API��·��
addpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\3dmodeler');
addpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\analysis');
addpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\boundary');
addpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\general');
fprintf('���HFSS-MATLAB-API��·��====���\n\n');




% ---- �����µ���ʱ�ű��ļ�
fid = fopen(tmpScriptFile, 'wt');
fprintf('�����µ���ʱ�ű��ļ�====���\n\n');




% ---- �����µĹ��̺�����ļ�
hfssNewProject(fid);
hfssInsertDesign(fid,'Basic');
fprintf('�����µĹ��̺�����ļ�====���\n\n');







% ---- ʹ�ýű���ģ ---- %





% ---- �������ʻ���

% ---- ��������
hfssBox(fid, 'Substrate', [substrateLength/2, substrateLength/2, 0], [substrateLength, substrateLength, height], 'mm');
% ---- ���ò���
hfssAssignMaterial(fid, 'Substrate', 'FR4_epoxy');
% ---- ����Color
hfssSetColor(fid, 'Substrate', [0, 128, 0]);
% ---- ����͸����
hfssSetTransparency(fid, {'Substrate'}, 0.6);
fprintf('�������ʻ���====���\n\n');




% ---- ����
hfssSaveProject(fid, tmpPrjFile, true);
fprintf('����====���\n\n');





% ---- �ر�fid
fclose(fid);
fprintf('�ر�fid====���\n\n');




% ---- �Ƴ�HFSS-MATLAB-API��·��
rmpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\3dmodeler');
rmpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\analysis');
rmpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\boundary');
rmpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\general');
fprintf('�Ƴ�HFSS-MATLAB-API��·��====���\n\n');