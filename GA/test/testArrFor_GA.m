%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����ڴ���GA��������� ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ע�� ---- %
        % ---- ���ű�ֻ�����ڲ���һ������SwitchArrayOf_M_N_R_A_Model_GA
        % ---- �������SwitchArrayOf_M_N_R_A_Model_GA����3������
            % ---- ÿ��������0��1���
                % ---- 0�����ضϿ�
                % ---- 1�����رպ�
                % ---- ����ĳ����ɿ��صĸ�������
                    % ---- ���صĸ�����modelParametersFor_M_N_R_A�����о���Ľ���
            
            
%% ---- ����ȫ�ֱ���
    global numOfSwitch;
%% ---- �����������1��SwitchArray1���˿�����ϴ�����ȫ���Ͽ�
    % ---- ���忪�����SwitchArray1
        SwitchArray1 = zeros(1, numOfSwitch);
%% ---- �����������2��SwitchArray2���˿�����ϴ�����ȫ���պ�
    % ---- ���忪�����SwitchArray2
        SwitchArray2 = ones(1, numOfSwitch);
%% ---- �����������3��SwitchArray3���˿�����ϴ�������Ŀ������
    % ---- ���忪�����SwitchArray2
        %{
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                rand������0-1֮��������
                rand(1, num)������һ����num������0-1֮��������
                round����������
                ���round(rand(1, num))�õ����Ǿ���num������0����1����
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        SwitchArray3 = round(rand(1, numOfSwitch));
%% ---- �����п�����ϴ���һ��������
    % ---- ����SwitchArrayOf_M_N_R_A_Model_GA
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
               SwitchArrayOf_M_N_R_A_Model_GA(1, :)����SwitchArray1�������Դ�����
                    ���У�
                        SwitchArray1������ȫ���Ͽ�
                        SwitchArray2������ȫ���պ�
                        SwitchArray3��������Ŀ������
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        SwitchArrayOf_M_N_R_A_Model_GA = [SwitchArray1; SwitchArray2; SwitchArray3];
        % ---- �õ�����������������rowNumOfArr����������numOfSwitchArr��������ϵĸ���
        [numOfSwitchArr, rowNumOfArr] = size(SwitchArrayOf_M_N_R_A_Model_GA);
% %% ---- ����
%             [m, n] = size(SwitchArrayOf_M_N_R_A_Model_GA);
%             disp(m)
%             disp(n)
%             for ii = 1:1:m
%                 fprintf('��ǰ�Ŀ�����ϣ�');
%                 fprintf('%.0f ', SwitchArrayOf_M_N_R_A_Model_GA(ii, :));
%                 fprintf('\n');
%             end