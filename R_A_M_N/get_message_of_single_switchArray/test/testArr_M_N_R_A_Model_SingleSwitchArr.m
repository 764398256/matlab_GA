%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����ڴ���testArr_M_N_R_A_Model_SingleSwitchArr��������� ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ע�� ---- %
        % ---- ���ű�ֻ�����ڲ���һ������SwitchArray_For_M_N_R_A_Model
        % ---- �������SwitchArray_For_M_N_R_A_Model����3������
            % ---- ÿ��������0��1���
                % ---- 0�����ضϿ�
                % ---- 1�����رպ�
                % ---- ����ĳ����ɿ��صĸ�������
                    % ---- ���صĸ�����modelParametersFor_M_N_R_A�����о���Ľ���
            
            
%% ---- ����ȫ�ֱ���
    global numOfSwitch;
%% ---- �����������1��SwitchArray1���˿�����ϴ�����ȫ���Ͽ�
    SwitchArray1 = zeros(1, numOfSwitch);
%% ---- �����������2��SwitchArray2���˿�����ϴ�����ȫ���պ�
    SwitchArray2 = ones(1, numOfSwitch);
%% ---- �����������3��SwitchArray3���˿�����ϴ�������Ŀ������
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
    % ---- ����SwitchArrayOf_Only_M_N_R_A_Model
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
               SwitchArray_For_M_N_R_A_Model(1, :)����SwitchArray1�������Դ�����
                    ���У�
                        SwitchArray1������ȫ���Ͽ�
                        SwitchArray2������ȫ���պ�
                        SwitchArray3��������Ŀ������
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        SwitchArray_For_M_N_R_A_Model = [SwitchArray1; SwitchArray2; SwitchArray3];
        % ---- �õ�����������������rowNumOfArr����������numOfSwitchArr��������
        [rowNumOfArr, numOfSwitchArr] = size(SwitchArray_For_M_N_R_A_Model);
% %% ---- ����
%             [m, n] = size(SwitchArray_For_M_N_R_A_Model);
%             disp(m)
%             disp(n)
%             for ii = 1:1:m
%                 fprintf('��ǰ�Ŀ�����ϣ�');
%                 fprintf('%.0f ', SwitchArray_For_M_N_R_A_Modell(ii, :));
%                 fprintf('\n');
%             end