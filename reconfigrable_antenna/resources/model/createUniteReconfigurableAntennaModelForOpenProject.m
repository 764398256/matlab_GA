%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����ڴ������ع����ߵ�ģ�� ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ˵�� ---- %
        % ----
        % ---- ���ű����ڴ������ع����ߵ�ģ��
        % ----
        
    % ---- ע�� ---- %
        % ----
        % ---- �˽ű�ֻ���������ɿ��ع�����ģ�ͣ���Ҫ��������ĳ���
        % ---- ��Ҫ�����������е��ô˽ű�
        % ---- 
        % ---- �˽ű����������ߣ����ԵĿ��غ���Ƭ�Ѿ�����Unite�����ϲ�
        % ----
        % ---- �˽ű���Ҫ�����������tmpSwtichArray���ж��Ƿ񴴽�ÿ�����أ�����Ϊ0�����������أ�����Ϊ1����������
        % ----

%% ---- ����ȫ�ֱ���
    global patchLength centreDistance switchLength switchWidth portDiameter inputDiameter portX portY height substrateLength maxWavelength;
%% ---- �������壨Substrate��
    hfssBox(fid, 'Substrate', [-substrateLength/2, -substrateLength/2, 0], ...
        [substrateLength, substrateLength, height], 'mm');
    % ---- ���ò���
    hfssAssignMaterial(fid, 'Substrate', 'Rogers RT/duroid 5880 (tm)');
    % ---- ����Color
    hfssSetColor(fid, 'Substrate', [132, 132, 193]);
    % ---- ����͸����
    hfssSetTransparency(fid, {'Substrate'}, 0.6);

%         fprintf('�������壨Substrate��---->���\n\n');
%% ---- ������Ƭ���У�Patch Array��
    for ii = 1:1:1  % ---- �˴�forѭ��ִֻ��һ��ѭ���壬���ڵ������ǣ�Ϊ���۵�����
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
    end

%         fprintf('������Ƭ���У�Patch Array��---->���\n\n');
%}
%% ---- �������أ�Switch��
    for ii = 1:1:1  % ---- �˴�forѭ��ִֻ��һ��ѭ���壬���ڵ������ǣ�Ϊ���۵�����
        % ---- ��������11��Switch11��
            if tmpSwtichArray(1) == 1
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
            if tmpSwtichArray(2) == 1
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
            if tmpSwtichArray(3) == 1
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
            if tmpSwtichArray(4) == 1
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
            if tmpSwtichArray(5) == 1
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
            if tmpSwtichArray(6) == 1
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
            if tmpSwtichArray(7) == 1
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
            if tmpSwtichArray(8) == 1
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
            if tmpSwtichArray(9) == 1
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
            if tmpSwtichArray(10) == 1
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
            if tmpSwtichArray(11) == 1
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
            if tmpSwtichArray(12) == 1
                hfssRectangle(fid, 'Switch52', 'Z', [centreDistance - switchWidth/2, ...
                    patchLength/2, height], switchWidth, switchLength, 'mm');
                % ---- assign PE boundary
                hfssAssignPE(fid, 'Switch52', {'Switch52'});
                % ---- set Color
                hfssSetColor(fid, 'Switch52', [227, 207, 87]); % ---- [227, 207, 87]---->�㽶��
                % ---- set Transparency
                hfssSetTransparency(fid, {'Switch52'}, 0);
            end

     % ---- �ϲ����е���Ƭ�Ϳ���
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                hfssUnite���������һ�����ԣ�
                    ���Ὣ�����ĺϲ������û���������Ͳ��ϲ���
                    ���ң����Object�����ڣ�������
                    ��ֱ������һ��ĺ�����
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}

%         hfssUnite(fid, {'Patch11', 'Patch12', 'Patch13', 'Patch21', ...
%             'Patch22', 'Patch23', 'Patch31', 'Patch32', 'Patch33', ...
%             'Switch11', 'Switch12', 'Switch21', 'Switch22', 'Switch23', ...
%             'Switch31', 'Switch32', 'Switch41', 'Switch42', 'Switch43', ...
%             'Switch51', 'Switch52'});

    end

%         fprintf('�������أ�Switch��---->���\n\n'); 

%% ---- �������ߣ�Feed��
    hfssCylinder(fid, 'Feed', 'Z', [portX, portY, 0], portDiameter/2, height, 'mm');
    % ---- ���ò���
    hfssAssignMaterial(fid, 'Feed', 'pec');
    % ---- ����solve inside
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                ��Ϊ�����������壬�ڲ�����Ҫ���㣬��������solve insideΪfalse
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
    hfssSetSolveInside(fid, 'Feed', false);

%         fprintf('�������ߣ�Feed��---->���\n\n');
%% ---- ������ƽ�棨GND��
    for ii = 1:1:1  % ---- �˴�forѭ��ִֻ��һ��ѭ���壬���ڵ������ǣ�Ϊ���۵�����
        hfssRectangle(fid, 'GroundPlane', 'Z', [-substrateLength/2, -substrateLength/2, 0], ...
            substrateLength, substrateLength, 'mm');
        % ---- assign PE boundary
            hfssAssignPE(fid, 'GND', {'GroundPlane'});

        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                hfssSubtract�ṩ��Subtractû��Cloneѡ����ִ�в���֮��toolParts�ᱻɾ��
                ��ˣ���Ҫ�Ȼ���ƽ�棬ʹ��hfssSubtract���ڵ�ƽ��������Portƽ��
                ����ٴ�������ڣ�Port��
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}

        % ---- ��GroundPlane��ΪPortԤ���ռ�
            % ---- ����tempPort
                hfssCircle(fid, 'tempPort', 'Z', [portX, portY, 0], inputDiameter/2, 'mm');
            % ---- ʹ��hfssSubtract����GroundPlane��ȥ��tempPort���֣�ΪPort�����ռ�
                hfssSubtract(fid, {'GroundPlane'}, {'tempPort'});
    end

%         fprintf('������ƽ�棨GND��---->���\n\n');
%% ---- ��������ڣ�Port��
    hfssCircle(fid, 'Port', 'Z', [portX, portY, 0], inputDiameter/2, 'mm');
    % ---- Assign Lumped Port
    hfssAssignLumpedPort(fid, 'LumpedPort', 'Port', [portX + portDiameter/2, portY, 0], ...
        [portX + inputDiameter /2, portY, 0], 'mm');

%         fprintf('��������ڣ�Port��---->���\n\n');

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

%         fprintf('�����������ӣ�Box��---->���\n\n');
%}