%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���������ڵõ������ָ��������ϵĹ���Ƶ�� ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ע�� ---- %
        % ---- ����������Ҫ�����ǣ�
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % ---- 1.�õ�ָ��������ϵĹ���Ƶ���Լ���Ӧ��S11����
            % ---- 2.��ָ����������Լ����Ӧ�Ĺ���Ƶ�ʺ�S11��������txt�ļ�
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function getAndWriteFreqOfSwitchArray(myCurrentSwitchArray, count)
%% ---- ��ʱ��ʼ
    % ---- ����ͳ������ʱ��
        tic;
%% ---- ����myReconfigurableAntennaTempSwitchArray���飬����myCurrentSwitchArray��ֵ��myReconfigurableAntennaTempSwitchArray
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            ������������Ŀ�ģ�
                1.�����˷�װ��˼�룬��myCurrentSwitchArray�������ĳ��򲻿ɼ���������֤��myCurrentSwitchArray�İ�ȫ��
                2.Ϊ�˷������

            myReconfigurableAntennaTempSwitchArray����createUniteReconfigurableAntennaModel.m���ã������жϿ��صĶϿ��ͱպϣ���ϸ��Ϣ�ɲμ���myTestSwitchArray.m
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    tmpSwtichArray = myCurrentSwitchArray;
    % ---- �����ǰ�������
        fprintf('���ڼ��㿪����ϣ�');
        fprintf('%.0f ', tmpSwtichArray);
        fprintf('�Ĺ���Ƶ�ʼ����Ӧ��S11���������ǵ�%.0f���������\n', count);
%% ---- ����ģ��ִ�нű�executeModel.m
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            �˽ű��������ǣ�
                %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                % ---- 1.ִ�н�ģ�ű�            
                % ---- 2.�������Ƶ�ʡ�ɨƵ��Χ   
                % ---- 3.ִ��HFSS����            
                % ---- 4.�����������            
                %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    executeModelForGetAndWriteFreqOfSwitchArray;
%% ---- ����getFreq�������õ���ǰ������ϵĹ���Ƶ�ʺ�S11����
    [freq, s11] = getFreqAndS11(tmpDataFile);
%% ---- �����ǰ������ϵ���Ϣ
    fprintf('    �������㣬�ÿ�����ϵĹ���Ƶ���ǣ�%.2f�����Ӧ��S11�����ǣ�%.2f\n', freq, s11);
%% ---- ���������myReconfigurableAntennaTempSwitchArray��Ӧ��freq��S11д���ļ�
    writeFreqAndS11ForTest(freq, s11, count, tmpSwtichArray);
%% ---- ��ʱ����
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            toc�Դ��������
            ����ִ���굽toc���ͻ�������е�ʱ��
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
        toc;
    % ---- ����
    	fprintf('\n');
end

