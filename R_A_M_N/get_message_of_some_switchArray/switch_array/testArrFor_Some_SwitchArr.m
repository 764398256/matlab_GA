%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- 本脚本用于储存GetMessage_Some_SwitchArr所需的数组 ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- 注释 ---- %
        % ---- 本脚本只是用于产生一个数组SwitchArrayOf_M_N_R_A_Model_Some_SwitchArr
        % ---- 这个数组SwitchArrayOf_M_N_R_A_Model_Some_SwitchArr包含3个数组
            % ---- 每个数组由0和1组成
                % ---- 0代表开关断开
                % ---- 1代表开关闭合
                % ---- 数组的长度由开关的个数决定
                    % ---- 开关的个数在modelParametersFor_M_N_R_A里面有具体的介绍
            
            
%% ---- 声明全局变量
    global numOfSwitch;
%% ---- 定义统计个数count
    switchArrCount = 1;
%% ---- 创建开关组合1：SwitchArray1，此开关组合代表开关全部断开
    % ---- 定义开关组合SwitchArray1
        %{ 
            ---- 注意 ----
            ---- 注意 ----
            ---- 注意 ----
                此处数组的长度之所以要+1
                    是因为，最后一个数是开关组合的个数
                    建模的时候需要用开关组合的个数为HFSS文件命名
            ---- 注意 ----
            ---- 注意 ----
            ---- 注意 ----
        %}
        SwitchArray1 = zeros(1, numOfSwitch + 1);
    % ---- 将switchArrCount赋值给SwitchArray1的最后一个元素
        SwitchArray1(end) = switchArrCount;
    % ---- switchArrCount+1
        switchArrCount = switchArrCount + 1;
%% ---- 创建开关组合2：SwitchArray2，此开关组合代表开关全部闭合
    % ---- 定义开关组合SwitchArray2
        %{ 
            ---- 注意 ----
            ---- 注意 ----
            ---- 注意 ----
                此处数组的长度之所以要+1
                    是因为，最后一个数是开关组合的个数
                    建模的时候需要用开关组合的个数为HFSS文件命名
            ---- 注意 ----
            ---- 注意 ----
            ---- 注意 ----
        %}
        SwitchArray2 = ones(1, numOfSwitch + 1);
    % ---- 将switchArrCount赋值给SwitchArray1的最后一个元素
        SwitchArray2(end) = switchArrCount;
    % ---- switchArrCount+1
        switchArrCount = switchArrCount + 1;
%% ---- 创建开关组合3：SwitchArray3，此开关组合代表随机的开关组合
    % ---- 定义开关组合SwitchArray2
        %{
            ---- 注意 ----
            ---- 注意 ----
            ---- 注意 ----
                rand是生成0-1之间的随机数
                rand(1, num)是生成一行有num个数的0-1之间的随机数
                round是四舍五入
                因此round(rand(1, num))得到的是具有num个数的0或者1数组
    
                此处数组的长度之所以要+1
                    是因为，最后一个数是开关组合的个数
                    建模的时候需要用开关组合的个数为HFSS文件命名
            ---- 注意 ----
            ---- 注意 ----
            ---- 注意 ----
        %}
        SwitchArray3 = round(rand(1, numOfSwitch + 1));
    % ---- 将switchArrCount赋值给SwitchArray1的最后一个元素
        SwitchArray3(end) = switchArrCount;
%% ---- 将所有开关组合存入一个数组中
    % ---- 定义SwitchArrayOf_M_N_R_A_Model_Some_SwitchArr
        %{ 
            ---- 注意 ----
            ---- 注意 ----
            ---- 注意 ----
               SwitchArrayOf_M_N_R_A_Model_Some_SwitchArr(1, :)代表SwitchArray1，其他以此类推
                    其中，
                        SwitchArray1代表开关全部断开
                        SwitchArray2代表开关全部闭合
                        SwitchArray3代表随机的开关组合
            ---- 注意 ----
            ---- 注意 ----
            ---- 注意 ----
        %}
        SwitchArrayOf_M_N_R_A_Model_Some_SwitchArr = [SwitchArray1; SwitchArray2; SwitchArray3];
        % ---- 得到行数和列数，其中rowNumOfArr代表行数，numOfSwitchArr代表开关组合的个数
        [numOfSwitchArr, rowNumOfArr] = size(SwitchArrayOf_M_N_R_A_Model_Some_SwitchArr);
% %% ---- 测试
%             [m, n] = size(SwitchArrayOf_M_N_R_A_Model_Some_SwitchArr);
%             disp(m)
%             disp(n)
%             for ii = 1:1:m
%                 fprintf('当前的开关组合：');
%                 fprintf('%.0f ', SwitchArrayOf_M_N_R_A_Model_Some_SwitchArr(ii, :));
%                 fprintf('\n');
%             end