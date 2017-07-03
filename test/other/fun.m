% clear all; 
% close all; 
%--  �ű��͹����ļ�. 
tmpPrjFile = 'G:\my_document\matlab\data_file\hfss_file\temPatchaa.hfss';
tmpScriptFile = 'G:\my_document\matlab\data_file\vbs\temPatchaa.vbs'; 
% --Ϊ m �ļ�����·��.
hfssExePath = 'G:\"Program Files"\HFSS\AnsysEM16.1\Win64\ansysedt.exe';
% --�����µ���ʱ�ű��ļ� 
fid = fopen(tmpScriptFile,'wt'); 
% ---�����µĹ��̺�����ļ�
hfssNewProject(fid); 
hfssInsertDesign(fid,'Basic'); 
%---����ѡ�� Fr4�����Բ������� 
h1=0.16; 
er=4.4; 
fr=2.45; 
k=8.794/(fr*sqrt(er)); 
r0=k/sqrt(1+2*h1/(pi*er*k)*(log10(pi*k/(2*h1))+1.7726)); 
r1=r0*10; 
r=vpa(r1,3); 
h=1.6; 
% Lx=60; Wy=60; 
WsubX=60;WsubY=60; 
AirX=120;AirY=120;AirZ=70; 
Lx = [6.1146 8.3132 13.2191 15.8180 19.5695 17.8326 6.9923 10.7675 15.5578 3.9060 1.5874 2.6402 2.3971 4.3907 8.2380 18.3614 18.6020 5.0379 0.1484 13.5517 13.1674 2.6936 14.1505 7.7481 4.3419 4.3247 1.8890 12.5160 6.7776 1.0964 14.4718 4.0398 10.5270 14.3557 9.1696 9.0109 7.8291 11.7331 9.8345 13.5627 5.8312 0.8219 13.8260 19.8292 7.3174 16.6102 6.9010 5.4351 16.9105 1.6726];
Wy = [18.8488 5.2229 9.0089 12.8759 18.8566 2.8827 3.9578 15.2317 5.1340 19.8277 3.2095 6.2729 9.1774 7.0687 5.0932 13.6579 16.4004 3.7447 1.9740 4.3136 7.8918 16.9407 12.5286 4.6589 15.1835 14.2574 5.9558 4.7798 7.2181 2.9837 19.8598 10.2218 3.4364 16.2990 13.9008 19.1143 19.8045 19.3261 13.4926 3.3392 4.6974 5.1590 14.4866 7.6632 18.9045 6.9504 7.5420 1.9588 16.4972 19.1093];
%---ʹ�ýű���ģ-----------------% 
%---�����棬����������߽�����--------%
hfssRectangle(fid,'GroundPlane','Z',[-Lx./2,-Wy./2,ones(1,50)],Lx,Wy,'mm'); 
hfssSetColor(fid,'GroundPlane',[128, 128,0]); 
hfssSetTransparency(fid,{'GroundPlane'},0); 
hfssAssignPE(fid,'PerfE_Ground',{'GroundPlane'}); 
%---�����ʻ���-----------% 
hfssBox(fid,'Substrate',[-WsubX/2,-WsubY/2,0],[WsubX,WsubY,h],'mm'); 
hfssAssignMaterial(fid,'Substrate','FR4_epoxy'); 
hfssSetColor(fid,'Substrate',[0,128,0]); 
hfssSetTransparency(fid,{'Substrate'},0.6); 
%---����Բ�η�����Ƭ-------% 
hfssCircle(fid,'Patch','Z',[0,0,h],16.8,'mm'); 
hfssAssignPE(fid,'PerfE_Patch',{'Patch'}); 
%---��ͬ���߼����ö˿�-----% 
hfssCylinder(fid,'Feed','Z',[4.8,4.8,0],0.7,h,'mm'); 
hfssAssignMaterial(fid,'Feed','pec'); 
hfssCircle(fid,'Port1','Z',[4.8,4.8,0],1.4,'mm'); 
hfssSubtract(fid,{'GroundPlane'},{'Port1'}); 
%---�������в����ӷ���߽�����------------% 
hfssBox(fid,'AirBox',[-AirX/2,-AirY/2,-AirZ/2],[AirX,AirY,AirZ],'mm'); 
hfssSetTransparency(fid,{'AirBox'},0.8); 
hfssAssignRadiation(fid,'Rad1','AirBox'); 
%---��ͬ���������ö˿�----------% 
hfssCircle(fid,'Port','Z',[4.8,4.8,0],1.6,'mm'); 
hfssCircle(fid,'Port2','Z',[4.8,4.8,0],0.7,'mm'); 
hfssSubtract(fid,{'Port'},{'Port2'}); 
hfssAssignLumpedPort(fid,'P1','Port',[5.5,4.8,0],[6.4,4.8,0],'mm'); 
%---����������������--------------% 
hfssInsertSolution(fid,'Setup',2.45,0.02,15); 
hfssInterpolatingSweep(fid,'Sweep2to3GHz','Setup',2,3,101); 
hfssSolveSetup(fid,'Setup');
tmpDataFile = 'G:\my_document\matlab\data_file\hfss_data\ModelDemoDataFile.m';
hfssExportNetworkData(fid, tmpDataFile, 'Setup', 'Sweep2To3GHz');
%���湤���ļ�
hfssSaveProject(fid,tmpPrjFile,true); 
fclose(fid); 
% ����HFSSִ�нű�����  
% disp('Solving using HFSS ...');  
hfssExecuteScript(hfssExePath,tmpScriptFile);
run(tmpDataFile);
[Smin, iMin] = min(S);
% freq = f(iMin) / 1e9;
s11 = 20*log10(abs(Smin));
% objvalue=s11;
% fprintf('����Ƶ���ǣ�%.2f�����Ӧ��S11�����ǣ�%.2f\n', freq, s11);
% %% ---- �����ߵ�S��������Frequency�仯��ͼ��
%     % ---- ���û�ͼ����õ�ͼ�δ���
% figure;
% plot(f/1e9, 20*log10(abs(S)),'b');
% xlabel('Frequency(GHz)');
% ylabel('S_{11} (dB)');
% fprintf('�����ߵ�S11����Frequency�仯��ͼ��---->���\n\n');
% % rmpath

