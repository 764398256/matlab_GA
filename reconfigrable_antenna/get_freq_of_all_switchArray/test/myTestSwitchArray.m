%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����ڲ���һ����ʱ������myTestSwitchArray�����ڲ���ģ�͵Ľ��� ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ע�� ---- %
        % ---- ���ű�ֻ�����ڲ���һ������myTestSwitchArray
        % ---- �������myTestSwitchArrayֻ��0��1����Ԫ��
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
            
            
%% ---- ��������allSwitchOnSwitchArray
    % ---- ���п���ȫ���պ�
    allSwitchOnSwitchArray = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
    
%     fprintf('��������allSwitchOnSwitchArray---->���\n\n');
%% ---- ��������allSwitchOffSwitchArray
    % ---- ���п���ȫ���Ͽ�
    allSwitchOffSwitchArray = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    
%     fprintf('��������allSwitchOffSwitchArray---->���\n\n');
%% ---- ��������switchModelOneSwitchArray
    %{
        Switch11���ضϿ�
        Switch12���رպ�

        Switch21���ضϿ�
        Switch22���رպ�
        Switch23���ضϿ�

        Switch31���رպ�
        Switch32���ضϿ�

        Switch41���رպ�
        Switch42���ضϿ�
        Switch43���رպ�

        Switch51���ضϿ�
        Switch52���رպ�
    %}
        
    switchModelOneSwitchArray = [0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1];
%% ---- �����������
%     switchModelOneSwitchArray1 = [0 0 0 0 0 0 0 0 1 1 1 1];
%     switchModelOneSwitchArray2 = [0 0 0 0 0 0 1 0 1 0 0 0];
%     switchModelOneSwitchArray3 = [0 0 0 0 0 1 1 1 1 0 1 1];
%     switchModelOneSwitchArray4 = [0 0 0 0 1 0 0 0 1 1 0 1];
%     switchModelOneSwitchArray5 = [0 0 0 0 1 0 1 1 0 1 1 0];
%     switchModelOneSwitchArray6 = [0 0 0 1 0 0 1 0 0 1 1 1];
%     switchModelOneSwitchArray7 = [0 0 0 1 0 1 0 1 1 1 0 1];
%     switchModelOneSwitchArray8 = [0 0 1 0 0 0 0 1 1 1 0 0];
%     switchModelOneSwitchArray9 = [0 0 1 0 0 0 1 1 1 0 1 0];
%     switchModelOneSwitchArray10 = [0 0 1 0 1 1 0 0 1 1 1 1];
    
%     fprintf('��������switchModelOneSwitchArray---->���\n\n');
%% ---- ������������ϴ���һ��������
    % ---- ����myTestSwitchArrayArray
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                myTestSwitchArrayArray(1, :)����allSwitchOnSwitchArray
                myTestSwitchArrayArray(2, :)����allSwitchOffSwitchArray
                myTestSwitchArrayArray(3, :)����switchModelOneSwitchArray
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        myTestSwitchArrayArray = [allSwitchOnSwitchArray; allSwitchOffSwitchArray; ...
            switchModelOneSwitchArray];
%             switchModelOneSwitchArray1; switchModelOneSwitchArray2; ...
%             switchModelOneSwitchArray3; switchModelOneSwitchArray4; switchModelOneSwitchArray5; ...
%             switchModelOneSwitchArray6; switchModelOneSwitchArray7; switchModelOneSwitchArray8; ...
%             switchModelOneSwitchArray9; switchModelOneSwitchArray10];
        
        % ---- �õ�����������������m����������n��������
        [m, n] = size(myTestSwitchArrayArray);
    
    %{
        % ---- ����
            [m, n] = size(myTestSwitchArrayArray);
            disp(m)
            disp(n)
            for ii = 1:1:m
                fprintf('��ǰ�Ŀ�����ϣ�');
                fprintf('%.0f ', myTestSwitchArrayArray(ii, :));
                fprintf('\n');
            end
    %}