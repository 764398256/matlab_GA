%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����ڴ���GetMessage_Some_SwitchArr��������� ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ע�� ---- %
        % ---- ���ű�ֻ�����ڲ���һ������SwitchArrayOf_M_N_R_A_Model_Some_SwitchArr
        % ---- �������SwitchArrayOf_M_N_R_A_Model_Some_SwitchArr����3������
            % ---- ÿ��������0��1���
                % ---- 0�����ضϿ�
                % ---- 1�����رպ�
                % ---- ����ĳ����ɿ��صĸ�������
                    % ---- ���صĸ�����modelParametersFor_M_N_R_A�����о���Ľ���
            
            
%% ---- ����ȫ�ֱ���
    global numOfSwitch;
%% ---- ����ͳ�Ƹ���count
    switchArrCount = 1;
%% ---- �����������1��SwitchArray1���˿�����ϴ�����ȫ���Ͽ�
    % ---- ���忪�����SwitchArray1
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                �˴�����ĳ���֮����Ҫ+1
                    ����Ϊ�����һ�����ǿ�����ϵĸ���
                    ��ģ��ʱ����Ҫ�ÿ�����ϵĸ���ΪHFSS�ļ�����
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        SwitchArray1 = zeros(1, numOfSwitch + 1);
    % ---- ��switchArrCount��ֵ��SwitchArray1�����һ��Ԫ��
        SwitchArray1(end) = switchArrCount;
    % ---- switchArrCount+1
        switchArrCount = switchArrCount + 1;
%% ---- �����������2��SwitchArray2���˿�����ϴ�����ȫ���պ�
    % ---- ���忪�����SwitchArray2
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                �˴�����ĳ���֮����Ҫ+1
                    ����Ϊ�����һ�����ǿ�����ϵĸ���
                    ��ģ��ʱ����Ҫ�ÿ�����ϵĸ���ΪHFSS�ļ�����
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        SwitchArray2 = ones(1, numOfSwitch + 1);
    % ---- ��switchArrCount��ֵ��SwitchArray1�����һ��Ԫ��
        SwitchArray2(end) = switchArrCount;
    % ---- switchArrCount+1
        switchArrCount = switchArrCount + 1;
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
    
                �˴�����ĳ���֮����Ҫ+1
                    ����Ϊ�����һ�����ǿ�����ϵĸ���
                    ��ģ��ʱ����Ҫ�ÿ�����ϵĸ���ΪHFSS�ļ�����
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        SwitchArray3 = round(rand(1, numOfSwitch + 1));
    % ---- ��switchArrCount��ֵ��SwitchArray1�����һ��Ԫ��
        SwitchArray3(end) = switchArrCount;
%% ---- �����п�����ϴ���һ��������
    % ---- ����SwitchArrayOf_M_N_R_A_Model_Some_SwitchArr
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
               SwitchArrayOf_M_N_R_A_Model_Some_SwitchArr(1, :)����SwitchArray1�������Դ�����
                    ���У�
                        SwitchArray1������ȫ���Ͽ�
                        SwitchArray2������ȫ���պ�
                        SwitchArray3��������Ŀ������
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        SwitchArrayOf_M_N_R_A_Model_Some_SwitchArr = [SwitchArray1; SwitchArray2; SwitchArray3];
        % ---- �õ�����������������rowNumOfArr����������numOfSwitchArr��������ϵĸ���
        [numOfSwitchArr, rowNumOfArr] = size(SwitchArrayOf_M_N_R_A_Model_Some_SwitchArr);
% %% ---- ����
%             [m, n] = size(SwitchArrayOf_M_N_R_A_Model_Some_SwitchArr);
%             disp(m)
%             disp(n)
%             for ii = 1:1:m
%                 fprintf('��ǰ�Ŀ�����ϣ�');
%                 fprintf('%.0f ', SwitchArrayOf_M_N_R_A_Model_Some_SwitchArr(ii, :));
%                 fprintf('\n');
%             end