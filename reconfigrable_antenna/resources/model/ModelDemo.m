%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����ڲ���ģ�͵Ľ��� ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ---- ˵�� ---- %
% ---- ���ű����ڲ���ģ�͵Ľ���



%% ---- clear and close
    clc;
    clear;
    close all;
    
    fprintf('clear and close---->���\n\n');




%% ---- ���ز���
    % ---- �����ν�����Ƭ�ı߳�(patchLength)   9.398
        patchLength = 9.398;
    % ---- ���ڽ�����Ƭ���ľ�(centreDistence)	14.986
        centreDistance = 14.986;


    % ---- RF MEMS���صĳ���(switchLength)	centreDistence - patchLength
        % ---- Ϊ�޸�֮ǰ�ĳ���
        % ---- switchLength = 2.159;

        % ---- �޸�˵�� ---- %
        % ---- Ϊ�˽�ģ���㣬���صĳ��ȵ���һ����Ƭ��һ�ߵ���һ����Ƭ����һ�ߵľ���
        % ---- Ҳ���ǣ�centreDistence - patchLength
        switchLength = centreDistance - patchLength;
    % ---- RF MEMS���صĿ��(switchWidth)	1.27
        switchWidth = 1.27;


    % ---- ������ֱ��(portDiameter)	1.2
        portDiameter = 1.2;
    % ---- ����˿�ֱ��(inputDiameter)	3
        inputDiameter = 3;
    % ---- �����X������(portX)	3
        portX = 3;
    % ---- �����Y������(portY)	3
        portY = 3;


    % ---- �����λ��׵ĺ��(height)	3.175
        height = 3.175;
    % ---- �����λ��׵ı߳�(substrateLength)	52.5272
        % ---- Ϊ�޸�֮ǰ�ĳ���
        % substrateLength = 52.5272;

        % ---- �޸�˵�� ---- %
        % ---- Ϊ�˻�ȡ���õ����ܣ����̻��׵ĳ���
        % ---- ����Ϊ��2*( centreDistance+0.8* patchLength)
        substrateLength = 2 * (centreDistance + 0.8 * patchLength);


    % ---- maxWavelength
        maxWavelength = 30;
    
    fprintf('��������---->���\n\n');




%% ---- ���������ļ�
    % ---- ͨ��vbs������HFSS�ļ��ı���·����ModelExecuteDemo.aedt���ļ���
    % ---- �˴���Ҫ��.aedt��Ϊ�ļ��ĺ�׺��������.hfss��HFSS16.1���ļ���׺��.aedt�������汾�����в���
    tmpPrjFile = 'G:\my_document\matlab\data_file\hfss_file\ModelDemo.aedt';
    
    fprintf('���������ļ�---->���\n\n');
    
    
%% ---- �����ű��ļ�
    % ---- �ű��ļ��ı���·����testModel.vbs���ļ���
    tmpScriptFile = 'G:\my_document\matlab\data_file\vbs\ModelDemo.vbs';
    
    fprintf('�����ű��ļ�---->���\n\n');
    
    
    
    
%% ---- ���HFSS-MATLAB-API��·��
    addpath('G:\my_document\matlab\hfss_matlab_api\3dmodeler');
    addpath('G:\my_document\matlab\hfss_matlab_api\analysis');
    addpath('G:\my_document\matlab\hfss_matlab_api\boundary');
    addpath('G:\my_document\matlab\hfss_matlab_api\general');
    
    fprintf('���HFSS-MATLAB-API��·��---->���\n\n');

    
    
    
%% ---- �����µ���ʱ�ű��ļ�
    fid = fopen(tmpScriptFile, 'wt');
    
    fprintf('�����µ���ʱ�ű��ļ�---->���\n\n');

    
    
    
%% ---- �����µĹ��̺�����ļ�
    hfssNewProject(fid);
    hfssInsertDesign(fid,'ModelDemo');
    
    fprintf('�����µĹ��̺�����ļ�---->���\n\n');
    
    
    
%% ---- ʹ�ýű���ģ ---- %%
%
% 
% 
% 
% 
% 
% 
    %% ---- �������壨Substrate��
        hfssBox(fid, 'Substrate', [-substrateLength/2, -substrateLength/2, 0], ...
            [substrateLength, substrateLength, height], 'mm');
        % ---- ���ò���
        hfssAssignMaterial(fid, 'Substrate', 'Rogers RT/duroid 5880 (tm)');
        % ---- ����Color
        hfssSetColor(fid, 'Substrate', [132, 132, 193]);
        % ---- ����͸����
        hfssSetTransparency(fid, {'Substrate'}, 0.6);
        
        fprintf('�������壨Substrate��---->���\n\n');
    

    %% ---- ������Ƭ���У�Patch Array��
        % ---- ������Ƭ11��Patch11��
            hfssRectangle(fid, 'Patch11', 'Z', [-(centreDistance + patchLength/2), ...
                -(centreDistance + patchLength/2), height], patchLength, patchLength, 'mm');
            % ---- assign PE boundary
            hfssAssignPE(fid, 'Patch11', {'Patch11'});
            % ---- set Color
            hfssSetColor(fid, 'Patch11', [255, 255, 0]);
            % ---- set Transparency
            hfssSetTransparency(fid, {'Patch11'}, 0);       
        % ---- ������Ƭ12��Patch12��
            hfssRectangle(fid, 'Patch12', 'Z', [-(centreDistance + patchLength/2), ...
                -patchLength/2, height], patchLength, patchLength, 'mm');
            % ---- assign PE boundary
            hfssAssignPE(fid, 'Patch12', {'Patch12'});
            % ---- set Color
            hfssSetColor(fid, 'Patch12', [255, 255, 0]);
            % ---- set Transparency
            hfssSetTransparency(fid, {'Patch12'}, 0);
        % ---- ������Ƭ13��Patch13��
            hfssRectangle(fid, 'Patch13', 'Z', [-(centreDistance + patchLength/2), ...
                centreDistance - patchLength/2, height], patchLength, patchLength, 'mm');
            % ---- assign PE boundary
            hfssAssignPE(fid, 'Patch13', {'Patch13'});
            % ---- set Color
            hfssSetColor(fid, 'Patch13', [255, 255, 0]);
            % ---- set Transparency
            hfssSetTransparency(fid, {'Patch13'}, 0);
        
        
        % ---- ������Ƭ21��Patch21��
            hfssRectangle(fid, 'Patch21', 'Z', [-patchLength/2, ...
                -(centreDistance + patchLength/2), height], patchLength, patchLength, 'mm');
            % ---- assign PE boundary
            hfssAssignPE(fid, 'Patch21', {'Patch21'});
            % ---- set Color
            hfssSetColor(fid, 'Patch21', [255, 255, 0]);
            % ---- set Transparency
            hfssSetTransparency(fid, {'Patch21'}, 0);
        % ---- ������Ƭ22��Patch22��
            hfssRectangle(fid, 'Patch22', 'Z', [-patchLength/2, -patchLength/2, ...
                height], patchLength, patchLength, 'mm');
            % ---- assign PE boundary
            hfssAssignPE(fid, 'Patch22', {'Patch22'});
            % ---- set Color
            hfssSetColor(fid, 'Patch22', [255, 255, 0]);
            % ---- set Transparency
            hfssSetTransparency(fid, {'Patch22'}, 0);
        % ---- ������Ƭ23��Patch23��
            hfssRectangle(fid, 'Patch23', 'Z', [-patchLength/2, ...
                centreDistance - patchLength/2, height], patchLength, patchLength, 'mm');
            % ---- assign PE boundary
            hfssAssignPE(fid, 'Patch23', {'Patch23'});
            % ---- set Color
            hfssSetColor(fid, 'Patch23', [255, 255, 0]);
            % ---- set Transparency
            hfssSetTransparency(fid, {'Patch23'}, 0);
        
            
        % ---- ������Ƭ31��Patch31��
            hfssRectangle(fid, 'Patch31', 'Z', [centreDistance - patchLength/2, ...
                -(centreDistance + patchLength/2), height], patchLength, patchLength, 'mm');
            % ---- assign PE boundary
            hfssAssignPE(fid, 'Patch31', {'Patch31'});
            % ---- set Color
            hfssSetColor(fid, 'Patch31', [255, 255, 0]);
            % ---- set Transparency
            hfssSetTransparency(fid, {'Patch31'}, 0);
        % ---- ������Ƭ32��Patch32��
            hfssRectangle(fid, 'Patch32', 'Z', [centreDistance - patchLength/2, ...
                -patchLength/2, height], patchLength, patchLength, 'mm');
            % ---- assign PE boundary
            hfssAssignPE(fid, 'Patch32', {'Patch32'});
            % ---- set Color
            hfssSetColor(fid, 'Patch32', [255, 255, 0]);
            % ---- set Transparency
            hfssSetTransparency(fid, {'Patch32'}, 0);
        % ---- ������Ƭ33��Patch33��
            hfssRectangle(fid, 'Patch33', 'Z', [centreDistance - patchLength/2, ...
                centreDistance - patchLength/2, height], patchLength, patchLength, 'mm');
            % ---- assign PE boundary
            hfssAssignPE(fid, 'Patch33', {'Patch33'});
            % ---- set Color
            hfssSetColor(fid, 'Patch33', [255, 255, 0]);
            % ---- set Transparency
            hfssSetTransparency(fid, {'Patch33'}, 0);
        
        fprintf('������Ƭ���У�Patch Array��---->���\n\n');
            

    %% ---- �������أ�Switch��
        % ---- ����switchArray�ļ�
            %{ 
                ---- ע�� ----
                ---- ע�� ----
                ---- ע�� ----
                    % ---- ���ű�ֻ�����ڲ���һ������testSwtichArray
                    % ---- �������testSwtichArrayֻ��0��1����Ԫ��
                        % ---- 0�����ضϿ�
                        % ---- 1�����رպ�


                    % ---- ����Ԫ�صĸ���Ϊ12�����ֱ��Ӧ12������
                        % ---- ����(1)����Switch11
                        % ---- ����(2)����Switch12

                        % ---- ����(3)����Switch21
                        % ---- ����(4)����Switch22
                        % ---- ����(5)����Switch23

                        % ---- ����(6)����Switch31
                        % ---- ����(7)����Switch32

                        % ---- ����(8)����Switch41
                        % ---- ����(9)����Switch42
                        % ---- ����(10)����Switch43

                        % ---- ����(11)����Switch51
                        % ---- ����(12)����Switch52
                ---- ע�� ----
                ---- ע�� ----
                ---- ע�� ----
            %}
            switchArray;
            testSwtichArray = [1 1 1 1 1 1 1 1 1 1 1 1];
        % ---- ��������11��Switch11��
            if testSwtichArray(1) == 1
                hfssRectangle(fid, 'Switch11', 'Z', [-(centreDistance + switchWidth/2), ...
                    -(centreDistance - patchLength/2), height], switchWidth, switchLength, 'mm');
                % ---- assign PE boundary
                hfssAssignPE(fid, 'Switch11', {'Switch11'});
                % ---- set Color
                hfssSetColor(fid, 'Switch11', [227, 207, 87]); % ---- [227, 207, 87]---->�㽶��
                % ---- set Transparency
                hfssSetTransparency(fid, {'Switch11'}, 0);
            end
        % ---- ��������12��Switch12��
            if testSwtichArray(2) == 1
                hfssRectangle(fid, 'Switch12', 'Z', [-(centreDistance + switchWidth/2), ...
                    patchLength/2, height], switchWidth, switchLength, 'mm');
                % ---- assign PE boundary
                hfssAssignPE(fid, 'Switch12', {'Switch12'});
                % ---- set Color
                hfssSetColor(fid, 'Switch12', [227, 207, 87]); % ---- [227, 207, 87]---->�㽶��
                % ---- set Transparency
                hfssSetTransparency(fid, {'Switch12'}, 0);
            end
            
            
        % ---- ��������21��Switch21��
            if testSwtichArray(3) == 1
                hfssRectangle(fid, 'Switch21', 'Z', [-(centreDistance - patchLength/2), ...
                    -(centreDistance + switchWidth/2), height], switchLength, switchWidth, 'mm');
                % ---- assign PE boundary
                hfssAssignPE(fid, 'Switch21', {'Switch21'});
                % ---- set Color
                hfssSetColor(fid, 'Switch21', [227, 207, 87]); % ---- [227, 207, 87]---->�㽶��
                % ---- set Transparency
                hfssSetTransparency(fid, {'Switch21'}, 0);
            end
        % ---- ��������22��Switch22��
            if testSwtichArray(4) == 1
                hfssRectangle(fid, 'Switch22', 'Z', [-(centreDistance - patchLength/2), ...
                    -switchWidth/2, height], switchLength, switchWidth, 'mm');
                % ---- assign PE boundary
                hfssAssignPE(fid, 'Switch22', {'Switch22'});
                % ---- set Color
                hfssSetColor(fid, 'Switch22', [227, 207, 87]); % ---- [227, 207, 87]---->�㽶��
                % ---- set Transparency
                hfssSetTransparency(fid, {'Switch22'}, 0);
            end
        % ---- ��������23��Switch23��
            if testSwtichArray(5) == 1
                hfssRectangle(fid, 'Switch23', 'Z', [-(centreDistance - patchLength/2), ...
                    centreDistance - switchWidth/2, height], switchLength, switchWidth, 'mm');
                % ---- assign PE boundary
                hfssAssignPE(fid, 'Switch23', {'Switch23'});
                % ---- set Color
                hfssSetColor(fid, 'Switch23', [227, 207, 87]); % ---- [227, 207, 87]---->�㽶��
                % ---- set Transparency
                hfssSetTransparency(fid, {'Switch23'}, 0);
            end
            

        % ---- ��������31��Switch31��
            if testSwtichArray(6) == 1
                hfssRectangle(fid, 'Switch31', 'Z', [-switchWidth/2, -(centreDistance - patchLength/2), ...
                    height], switchWidth, switchLength, 'mm');
                % ---- assign PE boundary
                hfssAssignPE(fid, 'Switch31', {'Switch31'});
                % ---- set Color
                hfssSetColor(fid, 'Switch31', [227, 207, 87]); % ---- [227, 207, 87]---->�㽶��
                % ---- set Transparency
                hfssSetTransparency(fid, {'Switch31'}, 0);
            end
        % ---- ��������32��Switch32��
            if testSwtichArray(7) == 1
                hfssRectangle(fid, 'Switch32', 'Z', [-switchWidth/2, patchLength/2, ...
                    height], switchWidth, switchLength, 'mm');
                % ---- assign PE boundary
                hfssAssignPE(fid, 'Switch32', {'Switch32'});
                % ---- set Color
                hfssSetColor(fid, 'Switch32', [227, 207, 87]); % ---- [227, 207, 87]---->�㽶��
                % ---- set Transparency
                hfssSetTransparency(fid, {'Switch32'}, 0);
            end
            
            
        % ---- ��������41��Switch41��
            if testSwtichArray(8) == 1
                hfssRectangle(fid, 'Switch41', 'Z', [patchLength/2, -(centreDistance + switchWidth/2), ...
                    height], switchLength, switchWidth, 'mm');
                % ---- assign PE boundary
                hfssAssignPE(fid, 'Switch41', {'Switch41'});
                % ---- set Color
                hfssSetColor(fid, 'Switch41', [227, 207, 87]); % ---- [227, 207, 87]---->�㽶��
                % ---- set Transparency
                hfssSetTransparency(fid, {'Switch41'}, 0);
            end
        % ---- ��������42��Switch42��
            if testSwtichArray(9) == 1
                hfssRectangle(fid, 'Switch42', 'Z', [patchLength/2, -switchWidth/2, ...
                    height], switchLength, switchWidth, 'mm');
                % ---- assign PE boundary
                hfssAssignPE(fid, 'Switch42', {'Switch42'});
                % ---- set Color
                hfssSetColor(fid, 'Switch42', [227, 207, 87]); % ---- [227, 207, 87]---->�㽶��
                % ---- set Transparency
                hfssSetTransparency(fid, {'Switch42'}, 0);
            end
        % ---- ��������43��Switch43��
            if testSwtichArray(10) == 1
                hfssRectangle(fid, 'Switch43', 'Z', [patchLength/2, centreDistance - switchWidth/2, ...
                    height], switchLength, switchWidth, 'mm');
                % ---- assign PE boundary
                hfssAssignPE(fid, 'Switch43', {'Switch43'});
                % ---- set Color
                hfssSetColor(fid, 'Switch43', [227, 207, 87]); % ---- [227, 207, 87]---->�㽶��
                % ---- set Transparency
                hfssSetTransparency(fid, {'Switch43'}, 0);
            end
            
            
        % ---- ��������51��Switch51��
            if testSwtichArray(11) == 1
                hfssRectangle(fid, 'Switch51', 'Z', [centreDistance - switchWidth/2, ...
                    -(centreDistance - patchLength/2), height], switchWidth, switchLength, 'mm');
                % ---- assign PE boundary
                hfssAssignPE(fid, 'Switch51', {'Switch51'});
                % ---- set Color
                hfssSetColor(fid, 'Switch51', [227, 207, 87]); % ---- [227, 207, 87]---->�㽶��
                % ---- set Transparency
                hfssSetTransparency(fid, {'Switch51'}, 0);
            end
        % ---- ��������52��Switch52��
            if testSwtichArray(12) == 1
                hfssRectangle(fid, 'Switch52', 'Z', [centreDistance - switchWidth/2, ...
                    patchLength/2, height], switchWidth, switchLength, 'mm');
                % ---- assign PE boundary
                hfssAssignPE(fid, 'Switch52', {'Switch52'});
                % ---- set Color
                hfssSetColor(fid, 'Switch52', [227, 207, 87]); % ---- [227, 207, 87]---->�㽶��
                % ---- set Transparency
                hfssSetTransparency(fid, {'Switch52'}, 0);
            end
            
            
%         % ---- �ϲ����е���Ƭ�Ϳ���
%             %{ 
%                 ---- ע�� ----
%                 ---- ע�� ----
%                 ---- ע�� ----
%                     hfssUnite���������һ�����ԣ�
%                         ���Ὣ�����ĺϲ������û���������Ͳ��ϲ���
%                         ���ң����Object�����ڣ�������
%                         ��ֱ������һ��ĺ�����
%                 ---- ע�� ----
%                 ---- ע�� ----
%                 ---- ע�� ----
%             %}
%             hfssUnite(fid, {'Patch11', 'Patch12', 'Patch13', 'Patch21', ...
%                 'Patch22', 'Patch23', 'Patch31', 'Patch32', 'Patch33', ...
%                 'Switch11', 'Switch12', 'Switch21', 'Switch22', 'Switch23', ...
%                 'Switch31', 'Switch32', 'Switch41', 'Switch42', 'Switch43', ...
%                 'Switch51', 'Switch52'});
            
        fprintf('�������أ�Switch��---->���\n\n'); 
         
         
    %% ---- �������ߣ�Feed��
        hfssCylinder(fid, 'Feed', 'Z', [portX, portY, 0], portDiameter/2, height, 'mm');
        % ---- ���ò���
        hfssAssignMaterial(fid, 'Feed', 'pec');
        
        fprintf('�������ߣ�Feed��---->���\n\n');
    
    
    %% ---- ������ƽ�棨GND��
        hfssRectangle(fid, 'GroundPlane', 'Z', [-substrateLength/2, -substrateLength/2, 0], ...
            substrateLength, substrateLength, 'mm');
        % ---- assign PE boundary
        hfssAssignPE(fid, 'GND', {'GroundPlane'});
        % ---- ע�� ---- %
        % ---- ע�� ---- %
        % ---- ע�� ---- %
            % ---- hfssSubtract�ṩ��Subtractû��Cloneѡ����ִ�в���֮��toolParts�ᱻɾ��
            % ---- ��ˣ���Ҫ�Ȼ���ƽ�棬ʹ��hfssSubtract���ڵ�ƽ��������Portƽ��
            % ---- ����ٴ�������ڣ�Port��
        % ---- ע�� ---- %
        % ---- ע�� ---- %
        % ---- ע�� ---- %
        % ---- ��GroundPlane��ΪPortԤ���ռ�
            % ---- ����tempPort
                hfssCircle(fid, 'tempPort', 'Z', [portX, portY, 0], inputDiameter/2, 'mm');
            % ---- ʹ��hfssSubtract����GroundPlane��ȥ��tempPort���֣�ΪPort�����ռ�
                hfssSubtract(fid, {'GroundPlane'}, {'tempPort'});
                
        fprintf('������ƽ�棨GND��---->���\n\n');
        
        
    %% ---- ��������ڣ�Port��
        hfssCircle(fid, 'Port', 'Z', [portX, portY, 0], inputDiameter/2, 'mm');
        % ---- Assign Lumped Port
        hfssAssignLumpedPort(fid, 'LumpedPort', 'Port', [portX + portDiameter/2, portY, 0], ...
            [portX + inputDiameter /2, portY, 0], 'mm');
        
        fprintf('��������ڣ�Port��---->���\n\n');
    
    
    %% ---- �����������ӣ�Box��
        hfssBox(fid, 'AirBox', [-(centreDistance + 1.2 * patchLength + maxWavelength), ...
            -(centreDistance + 1.2 * patchLength + maxWavelength), -10], ...
            [2 * (centreDistance + 1.2 * patchLength + maxWavelength), ...
            2 * (centreDistance + 1.2 * patchLength + maxWavelength), ...
            height + maxWavelength + 10], 'mm');
        % ---- Assign Radiation
        hfssAssignRadiation(fid, 'AirBoxRadiation', 'AirBox');
        % ---- set Transparency
        hfssSetTransparency(fid, {'AirBox'}, 0.95);
        
        fprintf('�����������ӣ�Box��---->���\n\n');

%% ---- ������Ƶ��
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            ---- 1�� ----
                Setup4_4GHz�����Ƶ�ʵ�����
                �˴�һ��Ҫע����ǣ�
                    HFSS������Setup4.4GHz��������ʽ����ȷ��������ʽ�ǣ�Setup4_4GHz
            ---- 2�� ----
                4.4�����Ƶ�ʣ�0.02����⾫�ȣ�25������������
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    hfssInsertSolution(fid, 'Setup4_4GHz', 4, 0.02, 25);

    fprintf('������Ƶ��---->���\n\n');

    
%% ---- ���ɨƵ����
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            ---- 1�� ----
                Sweep1To11GHz��ɨƵ���õ�����
                �˴�һ��Ҫע����ǣ�
                    HFSSͬ�������ܡ�.����������ʽ�������á�_������
            ---- 2�� ----
                Setup4_4GHz�ǽ����ɨƵ������ӵ��Ǹ����Ƶ������
                ����ж�����Ƶ�ʣ�����Ҫע�⣺��ӵ��Լ���Ҫ�����Ƶ����
            ---- 3�� ----
                1��ɨƵ��Χ�Ŀ�ʼƵ�ʣ�11��ɨƵ��Χ�Ľ���Ƶ�ʣ�0.01��StepSize
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    hfssFastSweep(fid, 'Sweep1To11GHz', 'Setup4_4GHz', 1, 11, 0.01);
    
    fprintf('���ɨƵ����---->���\n\n');
    
    
%% ---- �������
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            ---- 1�� ----
                �����ҪHFSS�������Ƶ���Լ���Ӧ��ɨƵ����
                ��ô��һ��Ҫ������⣬Ҳ����hfssSolveSetup
            ---- 2�� ----
                Setup4_4GHz�Ǿ���Ҫ����Ƶ��
                    �˴�����Ҫ���嵽���Ƶ�ʵ�ɨƵ��Χ
            ---- 3�� ----
                �������һ��Ҫ�ڹر�fid֮ǰ���������Ҫ
                    ������ں��棬HFSS������ִ���������
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    hfssSolveSetup(fid, 'Setup4_4GHz');
    
    fprintf('�������---->���\n\n');


%% ---- �������
    % ---- ������������ļ���
        %{
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                tmpDataFile������ļ��ľ���·��
                    ����ModelDemoDataFile��������ļ����������ʽ.m�ļ�
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        tmpDataFile = 'G:\my_document\matlab\data_file\hfss_data\ModelDemoDataFile.m';
    % ---- ���.m��ʽ�������ļ�
        %{
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                tmpDataFile��Ҫ������ļ���·��
                Setup4_4GHz��Ҫ��������Ƶ��
                Sweep1To10GHz��Ҫ�����ɨƵ��Χ�����������
    
                �������hfssExportNetworkData�������hfssCloseActiveProject֮ǰ
                    ����HFSSִ����Ϻ�ᱨ������HFSS���������˳�������MATLAB��������������
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        hfssExportNetworkData(fid, tmpDataFile, 'Setup4_4GHz', 'Sweep1To11GHz');
        
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
        hfssExecutePath = 'G:\"Program Files"\HFSS\AnsysEM16.1\Win64\ansysedt.exe'; 
    % ---- execute vbs
        fprintf('����ִ��vbs�ű�\n\n');
        hfssExecuteScript(hfssExecutePath, tmpScriptFile);
    
    fprintf('ִ��vbs�ű�---->���\n\n');

    
% %% ---- �Ƴ�HFSS-MATLAB-API��·��
%     rmpath('G:\my_document\matlab\hfss_matlab_api\3dmodeler');
%     rmpath('G:\my_document\matlab\hfss_matlab_api\analysis');
%     rmpath('G:\my_document\matlab\hfss_matlab_api\boundary');
%     rmpath('G:\my_document\matlab\hfss_matlab_api\general');
%     
%     fprintf('�Ƴ�HFSS-MATLAB-API��·��---->���\n\n');
%     
%     
%% ---- �������ݽű�
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            �˴��������ݽű���Ŀ���ǽ�����������ļ����ص��ڴ�
            run()�����Ĳ�������Ϊ��������Ҳ����tmpDataFile��������������ļ�������
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    run(tmpDataFile);
    
    fprintf('�������ݽű�---->���\n\n');
    
    
%% ---- �õ�ָ���������״̬�Ĺ���Ƶ���Լ���Ӧ��S����
    % ---- �õ�S��������Сֵ���Լ���Ӧ������
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                �˴�ʹ�ú���min()��������S��Ҳ����S����
                min()��������������ֵ��
                    Smin��S��������Сֵ���Ǹ�����ʽ����Ҫ����ת��
                    iMin��S������Сֵ��Ӧ�����������Եõ�����Ƶ��
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        [Smin, iMin] = min(S);
    % ---- �õ�����Ƶ��
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                1.iMin��S������Сֵ��Ӧ������
    
                2.��ΪHFSS������������ʽHz��Ϊ�˵õ�GHz����Ҫ���õ���Ƶ�ʳ���10^9
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        freq = f(iMin) / 1e9;
	% ---- �õ�ʵ����ʽ��S����
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                ����HFSS����ķ������Ϊ������ʽ��S(1,:,:) = [9.608966E-001 -2.059262E-001i];���μ����ɵ������ļ�
                ��ˣ�Ҫ�����S��������Ҫ�����ݽ��д�����������ʽ��S����ת��Ϊʵ��
    
                        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                        % ----         ת����ʽ          ---- %
                        % ---- 20*log10(abs(S(ii,:,:))) ---- %
                        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        s11 = 20*log10(abs(Smin));
    % ---- �����ǰ����״̬�Ĳ���
        fprintf('����Ƶ���ǣ�%.2f�����Ӧ��S11�����ǣ�%.2f\n', freq, s11);
        
    fprintf('�õ�ָ���������״̬�Ĺ���Ƶ���Լ���Ӧ��S����---->���\n\n');

        
%% ---- �����ߵ�S��������Frequency�仯��ͼ��
    % ---- ���û�ͼ����õ�ͼ�δ���
        figure;
    % ---- ��ͼ
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                1.x��ΪƵ�ʣ�������Ҫע����ǣ�Ƶ��f��Ҫ����10^9������ת��ΪGHz
    
                2.y��ΪS��������Ҫ�����и�����ʽ��S����ת��Ϊʵ����ʽ��
                        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                        % ----         ת����ʽ          ---- %
                        % ---- 20*log10(abs(S(ii,:,:))) ---- %
                        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
                3.'b'����blue��Ҳ����Ϊ���������������ɫΪ��ɫ
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        plot(f/1e9, 20*log10(abs(S)),'b');
    % ---- x�������
        xlabel('Frequency(GHz)');
    % ---- y�������
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                Ϊ�˵õ��±�Ч������Ҫʹ�ã�S_{11}
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        ylabel('S_{11} (dB)');
        
    fprintf('�����ߵ�S11����Frequency�仯��ͼ��---->���\n\n');