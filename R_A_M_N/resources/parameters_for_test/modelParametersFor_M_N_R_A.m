%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����ڴ�����ع����ߵ�������֪���� ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ��λ��mm


%% ---- �����еı�������Ϊȫ�ֱ�����global
    global patchLength centreDistance maxWavelength... % ---- ��������
           portDiameter inputDiameter portX portY... % ---- �������
           height substrateLength_X substrateLength_Y... % ---- �������
           patchCoordinateArr_X patchCoordinateArr_Y ... % ---- ��Ƭ����
           switchLength switchWidth switchCoordinateArr_X_Row switchCoordinateArr_Y_Row switchCoordinateArr_X_Col switchCoordinateArr_Y_Col numOfSwitch... % ---- ���ز���
           m n; % ---- ���ع����ߵ�����������
%% ---- �ж�����m������n�Ƿ�����Ҫ��
    % ---- �ж�m��ֵ
        % ---- �ж�m�Ƿ�С�ڵ���1
            if m <= 1
                error('ErrorTests:convertTest', ... 
                    '\n    ����m�������1');
            end
        % ---- �ж�m�Ƿ�Ϊ����
            if m ~= round(m)
                error('ErrorTests:convertTest', ... 
                    '\n    ����m����Ϊ����');
            end
    % ---- �ж�n��ֵ
        % ---- �ж�n�Ƿ�С�ڵ���1
            if n <= 1
                error('ErrorTests:convertTest', ... 
                    '\n    ����n�������1');
            end
        % ---- �ж�n�Ƿ�Ϊ����
            if n ~= round(n)
                error('ErrorTests:convertTest', ... 
                    '\n    ����n����Ϊ����');
            end
%% ---- ��Ƭ����
    % ---- �����ν�����Ƭ�ı߳�(patchLength)   9.398
        patchLength = 9.398;
    % ---- ���ڽ�����Ƭ���ľ�(centreDistence)	14.986
        centreDistance = 14.986;
    % ---- ������Ƭ�Ŀ�Ⱥͳ���
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                HFSS���������ϵ����������ϵ˳ʱ����ת90��
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        allPatchLength_X = (m - 1) * centreDistance + patchLength;
        allPatchLength_Y = (n - 1) * centreDistance + patchLength;
    % ---- ��Ƭ��������
        % ---- X����
            % ---- ����һ������m����������
                %{ 
                    ---- ע�� ----
                    ---- ע�� ----
                    ---- ע�� ----
                        ����һ������m���������飬�����ڵ�Ԫ�س�ʼֵȫ��Ϊ1
                        patchCoordinateArr_X���洢����ÿһ����Ƭ��ߵ�����
                    ---- ע�� ----
                    ---- ע�� ----
                    ---- ע�� ----
                %}
                patchCoordinateArr_X = ones(1, m);
            % ---- ����patchCoordinateArr_X����ÿ��Ԫ�ص�ֵ
                for ii = 1:1:m
                    patchCoordinateArr_X(ii) = -allPatchLength_X/2 + (ii - 1) * centreDistance;
                end
        % ---- Y����
            % ---- ����һ������n����������
            %{ 
                    ---- ע�� ----
                    ---- ע�� ----
                    ---- ע�� ----
                        ����һ������n���������飬�����ڵ�Ԫ�س�ʼֵȫ��Ϊ1
                        patchCoordinateArr_Y���洢����ÿһ����Ƭ�ϱߵ�����
                    ---- ע�� ----
                    ---- ע�� ----
                    ---- ע�� ----
                %}
                patchCoordinateArr_Y = ones(1, n);
            % ---- ����patchCoordinateArr_Y����ÿ��Ԫ�ص�ֵ
                for ii = 1:1:n
                    patchCoordinateArr_Y(ii) = -allPatchLength_Y/2 + (ii - 1) * centreDistance;
                end
%% ---- ���ز���
    % ---- ���صĻ�������
        % ---- RF MEMS���صĳ���(switchLength)	centreDistence - patchLength
            % ---- Ϊ�޸�֮ǰ�ĳ���
            % ---- switchLength = 2.159;

            % ---- �޸�˵�� ---- %
            % ---- Ϊ�˽�ģ���㣬���صĳ��ȵ���һ����Ƭ��һ�ߵ���һ����Ƭ����һ�ߵľ���
            % ---- Ҳ���ǣ�centreDistence - patchLength
                switchLength = centreDistance - patchLength;
        % ---- RF MEMS���صĿ��(switchWidth)	1.27
            switchWidth = 1.27;
    % ---- ȷ�����صĸ���
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                ���صĸ��������п��صĸ���+�п��صĸ���
                    �п��ؾ���λ��������֮��Ŀ��أ�����Ϊ��(m -1) * n
                    �п��ؾ���λ��������֮��Ŀ��أ�����Ϊ��(n -1) * m
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        % ---- �õ��п��صĸ���
            numOfRowSwitch = (m -1) * n;
        % ---- �õ��п��صĸ���
            numOfColSwitch = (n -1) * m;
        % ---- �õ��ܵĿ��ظ���
            numOfSwitch = (m -1) * n + (n -1) * m;
    % ---- �п��ز���
        % ---- �п��ص�һ�����صĶ�������
            % ---- �õ�X���������
                startSwitchCoordinate_X_Col = -allPatchLength_X/2 + (patchLength/2 - switchWidth/2);
            % ---- �õ�X���������
                startSwitchCoordinate_Y_Col = -allPatchLength_Y/2 + patchLength;
        % ---- �����п���X�������������
            %{ 
                ---- ע�� ----
                ---- ע�� ----
                ---- ע�� ----
                    �п���X������m������
                ---- ע�� ----
                ---- ע�� ----
                ---- ע�� ----
            %}
            % ---- ����һ������m����������
                %{ 
                    ---- ע�� ----
                    ---- ע�� ----
                    ---- ע�� ----
                        ����һ������m���������飬�����ڵ�Ԫ�س�ʼֵȫ��Ϊ1
                        switchCoordinateArr_X_Col���洢�����п�����߶����Ϸ���X��������
                    ---- ע�� ----
                    ---- ע�� ----
                    ---- ע�� ----
                %}
                switchCoordinateArr_X_Col = ones(1, m);
            % ---- ����switchCoordinateArr_X_Row����ÿ��Ԫ�ص�ֵ
                for ii = 1:1:m
                    switchCoordinateArr_X_Col(ii) = startSwitchCoordinate_X_Col + (ii - 1) * centreDistance;
                end
        % ---- �����п���Y�������������
            %{ 
                ---- ע�� ----
                ---- ע�� ----
                ---- ע�� ----
                    �п���Y������n - 1������
                ---- ע�� ----
                ---- ע�� ----
                ---- ע�� ----
            %}
            % ---- ����һ������n - 1����������
                %{ 
                    ---- ע�� ----
                    ---- ע�� ----
                    ---- ע�� ----
                        ����һ������n - 1���������飬�����ڵ�Ԫ�س�ʼֵȫ��Ϊ1
                        switchCoordinateArr_Y_Row���洢�����п�����߶����Ϸ���Y��������
                    ---- ע�� ----
                    ---- ע�� ----
                    ---- ע�� ----
                %}
                switchCoordinateArr_Y_Col = ones(1, n - 1);
            % ---- ����switchCoordinateArr_Y_Row����ÿ��Ԫ�ص�ֵ
                for ii = 1:1:n-1
                    switchCoordinateArr_Y_Col(ii) = startSwitchCoordinate_Y_Col + (ii - 1) * centreDistance;
                end
    % ---- �п��ز���
        % ---- �п��ص�һ�����صĶ�������
            % ---- �õ�X���������
                startSwitchCoordinate_X_Row = -allPatchLength_X/2 + patchLength;
            % ---- �õ�X���������
                startSwitchCoordinate_Y_Row = -allPatchLength_Y/2 + (patchLength/2 - switchWidth/2);
        % ---- �����п���X�������������
            %{ 
                ---- ע�� ----
                ---- ע�� ----
                ---- ע�� ----
                    �п���X������m-1������
                ---- ע�� ----
                ---- ע�� ----
                ---- ע�� ----
            %}
            % ---- ����һ������m-1����������
                %{ 
                    ---- ע�� ----
                    ---- ע�� ----
                    ---- ע�� ----
                        ����һ������m-1���������飬�����ڵ�Ԫ�س�ʼֵȫ��Ϊ1
                        switchCoordinateArr_X_Row���洢�����п�����߶����Ϸ���X��������
                    ---- ע�� ----
                    ---- ע�� ----
                    ---- ע�� ----
                %}
                switchCoordinateArr_X_Row = ones(1, m-1);
            % ---- ����switchCoordinateArr_X_Row����ÿ��Ԫ�ص�ֵ
                for ii = 1:1:m-1
                    switchCoordinateArr_X_Row(ii) = startSwitchCoordinate_X_Row + (ii - 1) * centreDistance;
                end
        % ---- �����п���Y�������������
            %{ 
                ---- ע�� ----
                ---- ע�� ----
                ---- ע�� ----
                    �п���Y������n������
                ---- ע�� ----
                ---- ע�� ----
                ---- ע�� ----
            %}
            % ---- ����һ������n����������
                %{ 
                    ---- ע�� ----
                    ---- ע�� ----
                    ---- ע�� ----
                        ����һ������n���������飬�����ڵ�Ԫ�س�ʼֵȫ��Ϊ1
                        switchCoordinateArr_Y_Row���洢�����п�����߶����Ϸ���Y��������
                    ---- ע�� ----
                    ---- ע�� ----
                    ---- ע�� ----
                %}
                switchCoordinateArr_Y_Row = ones(1, n);
            % ---- ����switchCoordinateArr_Y_Col����ÿ��Ԫ�ص�ֵ
                for ii = 1:1:n
                    switchCoordinateArr_Y_Row(ii) = startSwitchCoordinate_Y_Row + (ii - 1) * centreDistance;
                end        
%% ---- ���ײ���
% ---- �����λ��׵ĺ��(height)	3.175
    height = 3.175;
% ---- �����λ��׵ı߳�(substrateLength)	52.5272
    % ---- Ϊ�޸�֮ǰ�ĳ���
    % substrateLength = 52.5272;
    
    % ---- �޸�˵�� ---- %
    % ---- Ϊ�˻�ȡ���õ����ܣ����̻��׵ĳ���
    % ---- ����Ϊ��2*( centreDistance+0.8* patchLength)
    substrateLength_X = (m - 1) * centreDistance + 1.6 * patchLength;
    substrateLength_Y = (n - 1) * centreDistance + 1.6 * patchLength;
%% ---- �������   
    % ---- ������ֱ��(portDiameter)	1.2
        portDiameter = 1.2;
    % ---- ����˿�ֱ��(inputDiameter)	3
        inputDiameter = 3;
    % ---- ȷ��������Ƭ
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                ������ƬΪ��һ��������ԭ��������Ǹ���Ƭ
                ���磺
                    �����5��5��Ƭ���У�������ƬΪ3��3�Ǹ���Ƭ
                    �����4��6��Ƭ���У�������ƬΪ3��4�Ǹ���Ƭ
                    �����4��5��Ƭ���У�������ƬΪ3��3�Ǹ���Ƭ
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        portPatch_X = fix(m/2 + 1);
        portPatch_Y = fix(n/2 + 1);
    % ---- �����X������(portX)
        portX = -allPatchLength_X/2 + (portPatch_X - 1) * centreDistance + patchLength/2 + 3;
    % ---- �����Y������(portY)
        portY = -allPatchLength_Y/2 + (portPatch_Y - 1) * centreDistance + patchLength/2 + 3;
%% ---- �������Ӳ���
    % ---- maxWavelength
        maxWavelength = 30;