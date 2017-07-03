%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����ڴ���m��n�еĿ��ع����ߵ�ģ�� ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ˵�� ---- %
        % ----
        % ---- ���ű����ڴ���m��n�еĿ��ع����ߵ�ģ��
        % ----
        
    % ---- ע�� ---- %
        % ----
        % ---- �˽ű�ֻ����������m��n�еĿ��ع�����ģ�ͣ���Ҫ��������ĳ���
        % ---- ��Ҫ�����������е��ô˽ű�
        % ---- 
        % ----
        % ---- �˽ű���Ҫ�����������tmpSwtichArray���ж��Ƿ񴴽�ÿ�����أ�����Ϊ0�����������أ�����Ϊ1����������
        % ----

%% ---- ����ȫ�ֱ���
    global patchLength maxWavelength... % ---- ��������
           portDiameter inputDiameter portX portY... % ---- �������
           height substrateLength_X substrateLength_Y... % ---- �������
           patchCoordinateArr_X patchCoordinateArr_Y ... % ---- ��Ƭ����
           switchLength switchWidth switchCoordinateArr_X_Row switchCoordinateArr_Y_Row switchCoordinateArr_X_Col switchCoordinateArr_Y_Col numOfSwitch... % ---- ���ز���
           m n; % ---- ���ع����ߵ�����������
%% ---- �����������ӣ�Box��
    hfssBox(fid, 'AirBox', [-(substrateLength_X/2 + maxWavelength), ...
        -(substrateLength_Y/2 + maxWavelength), -10], ...
        [2 * (substrateLength_X/2 + maxWavelength), ...
        2 * (substrateLength_Y/2 + maxWavelength), ...
        height + maxWavelength + 10], 'mm');
    % ---- Assign Radiation
    hfssAssignRadiation(fid, 'AirBoxRadiation', 'AirBox');
    % ---- set Transparency
    hfssSetTransparency(fid, {'AirBox'}, 0.95);
%% ---- �������壨Substrate��
    hfssBox(fid, 'Substrate', [-substrateLength_X/2, -substrateLength_Y/2, 0], ...
        [substrateLength_X, substrateLength_Y, height], 'mm');
    % ---- ���ò���
    hfssAssignMaterial(fid, 'Substrate', 'Rogers RT/duroid 5880 (tm)');
    % ---- ����Color
    hfssSetColor(fid, 'Substrate', [132, 132, 193]);
    % ---- ����͸����
    hfssSetTransparency(fid, {'Substrate'}, 0.8);
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
%% ---- ������ƽ�棨GND��
    for ii = 1:1:1  % ---- �˴�forѭ��ִֻ��һ��ѭ���壬���ڵ������ǣ�Ϊ���۵�����
        hfssRectangle(fid, 'GroundPlane', 'Z', [-substrateLength_X/2, -substrateLength_Y/2, 0], ...
            substrateLength_X, substrateLength_Y, 'mm');
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
%% ---- ��������ڣ�Port��
    hfssCircle(fid, 'Port', 'Z', [portX, portY, 0], inputDiameter/2, 'mm');
    % ---- Assign Lumped Port
    hfssAssignLumpedPort(fid, 'LumpedPort', 'Port', [portX + portDiameter/2, portY, 0], ...
        [portX + inputDiameter /2, portY, 0], 'mm');
%% ---- ������Ƭ���У�Patch Array��
    for ii = 1:1:m % ii��������
        for jj = 1:1:n % jj��������
            % ---- �õ���ǰ��Ƭ������
                %{
                    ---- ע�� ----
                    ---- ע�� ----
                    ---- ע�� ----
                        1.���Ƚ�ii��jjתΪ�ַ�
                        2.ͨ���ַ�����ƴ�ӣ��õ���ǰ��Ƭ������
                    ---- ע�� ----
                    ---- ע�� ----
                    ---- ע�� ----
                %}
                patchName = ['Patch' num2str(ii) num2str(jj)];
            % ---- ������Ƭ
                hfssRectangle(fid, patchName, 'Z', [patchCoordinateArr_X(ii), ...
                    patchCoordinateArr_Y(jj), height], patchLength, patchLength, 'mm');
            % ---- assign PE boundary
                hfssAssignPE(fid, patchName, {patchName});
            % ---- set Color
                hfssSetColor(fid, patchName, [255, 255, 0]);
            % ---- set Transparency
                hfssSetTransparency(fid, {patchName}, 0);
        end
    end
%% ---- ������������
    % ---- �����п���
        %{
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                �п��ؾ���λ��������֮��Ŀ��أ�����Ϊ��(n -1) * m
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        % ---- �����п��ؼ�������
            countCol = 1;
        % ---- ѭ�������п���
            %{
                ---- ע�� ----
                ---- ע�� ----
                ---- ע�� ----
                    �����Ĺ�����������X��������Y����������ģ��
                        ����������Ŀ����Ϊ�˷�������
                        ���յõ�������X����˳������
                ---- ע�� ----
                ---- ע�� ----
                ---- ע�� ----
            %}
            for ii = 1:1:m % ---- X���������
                for jj = 1:1:n-1 % ---- Y���������
                    % ---- �жϵ�ǰ�����Ƿ����
                        if tmpSwtichArray(countCol) == 1
                            % ---- �õ���ǰ���ص�����
                                switchName = ['Switch' num2str(countCol)];
                            % ---- ��������
                                hfssRectangle(fid, switchName, 'Z', [switchCoordinateArr_X_Col(ii), ...
                                    switchCoordinateArr_Y_Col(jj), height], switchWidth, switchLength, 'mm');
                            % ---- assign PE boundary
                                hfssAssignPE(fid, switchName, {switchName});
                            % ---- set Color
                                hfssSetColor(fid, switchName, [227, 207, 87]); % ---- [227, 207, 87]---->�㽶��
                            % ---- set Transparency
                                hfssSetTransparency(fid, {switchName}, 0);
                        end
                    % ---- ������������1
                        %{
                            ---- ע�� ----
                            ---- ע�� ----
                            ---- ע�� ----
                                Ϊ�˵õ���һ��X������п��ص����֣�countCol��Ҫ+1
                            ---- ע�� ----
                            ---- ע�� ----
                            ---- ע�� ----
                        %}
                        countCol = countCol + 1;
                end
                % ---- ������������n
                    %{
                        ---- ע�� ----
                        ---- ע�� ----
                        ---- ע�� ----
                            Ϊ�˵õ���һ�е�һ��X������п��ص����֣�countCol��Ҫ����n
                                ������Ŀ���Ǳ�֤�˿��ص�������������
                        ---- ע�� ----
                        ---- ע�� ----
                        ---- ע�� ----
                    %}
                    countCol = countCol + n;
            end
    % ---- �����п���
        %{
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                �п��ؾ���λ��������֮��Ŀ��أ�����Ϊ��(m -1) * n
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        % ---- �����п��ؼ�������
            %{
                ---- ע�� ----
                ---- ע�� ----
                ---- ע�� ----
                    ֮���Դ�n��ʼ����Ϊ�˺͵�һ�еĿ�����������
                ---- ע�� ----
                ---- ע�� ----
                ---- ע�� ----
            %}
            countRow = n;
        % ---- ѭ�������п���
            %{
                ---- ע�� ----
                ---- ע�� ----
                ---- ע�� ----
                    �����Ĺ�����������X��������Y����������ģ��
                        ����������Ŀ����Ϊ�˷�������
                        ���յõ�������X����˳������
                ---- ע�� ----
                ---- ע�� ----
                ---- ע�� ----
            %}
            for ii = 1:1:m-1 % ---- X���������
                for jj = 1:1:n % ---- Y���������
                    % ---- �жϵ�ǰ��ǰ�����Ƿ����
                        if tmpSwtichArray(countRow) == 1
                            % ---- �õ���ǰ��Ƭ������
                                switchName = ['Switch' num2str(countRow)];
                            % ---- ��������
                                hfssRectangle(fid, switchName, 'Z', [switchCoordinateArr_X_Row(ii), ...
                                    switchCoordinateArr_Y_Row(jj), height], switchLength, switchWidth, 'mm');
                            % ---- assign PE boundary
                                hfssAssignPE(fid, switchName, {switchName});
                            % ---- set Color
                                hfssSetColor(fid, switchName, [227, 207, 87]); % ---- [227, 207, 87]---->�㽶��
                            % ---- set Transparency
                                hfssSetTransparency(fid, {switchName}, 0);
                        end
                    % ---- ������������1
                        %{
                            ---- ע�� ----
                            ---- ע�� ----
                            ---- ע�� ----
                                Ϊ�˵õ���һ��X������п��ص����֣�countCol��Ҫ+1
                            ---- ע�� ----
                            ---- ע�� ----
                            ---- ע�� ----
                        %}
                        countRow = countRow + 1;
                end
                % ---- ������������n - 1
                    %{
                        ---- ע�� ----
                        ---- ע�� ----
                        ---- ע�� ----
                            Ϊ�˵õ���һ�е�һ��X������п��ص����֣�countCol��Ҫ����n - 1
                                ������Ŀ���Ǳ�֤�˿��ص�������������
                        ---- ע�� ----
                        ---- ע�� ----
                        ---- ע�� ----
                    %}
                    countRow = countRow + n - 1;
            end
%% ---- ����Ƭ�Ϳ��غϲ�
    % ---- �õ�numOfPatch
        numOfPatch = m * n;
    % ---- �õ�numOfPatch_Switch
        numOfPatch_Switch = numOfPatch + numOfSwitch;
    % ---- ����һ��cellԪ��Patch_Switch
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                Patch_SwitchԪ�����ڴ������е���Ƭ�Ϳ���
                hfssUnite����Patch_SwitchԪ������Patch_SwitchԪ���ڵ�����Ԫ�غϲ�
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        Patch_Switch = cell(1, numOfPatch_Switch);
    % ---- ����Patch_Switch�ļ�������index_Patch_Switch
        index_Patch_Switch = 1;
    % ---- �����е���Ƭ����Patch_SwitchԪ��
        for ii = 1:1:m % ---- ��������
            for jj = 1:1:n % ---- ��������
                % ---- ����ǰ��Ƭ����Patch_SwitchԪ��
                    Patch_Switch{index_Patch_Switch} = ['Patch' num2str(ii) num2str(jj)];
                % ---- ��������index_Patch_Switch��1
                    index_Patch_Switch = index_Patch_Switch + 1;
            end
        end
    % ---- �����еĿ��ش���Patch_SwitchԪ��
        for ii = 1:1:numOfSwitch
            % ---- ����ǰ���ش���Patch_SwitchԪ��
                Patch_Switch{index_Patch_Switch} = ['Switch' num2str(ii)];
            % ---- ��������index_Patch_Switch��1
                index_Patch_Switch = index_Patch_Switch + 1;
        end
    % ---- ���ú���hfssUnite���ϲ����е���Ƭ�Ϳ���
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
        hfssUnite(fid, Patch_Switch);