%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����ڲ���getFreqOfAllSwitchArray ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ע�� ---- %
        % ---- ���ű�����Ҫ�����ǣ�
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % ---- ����getFreqOfAllSwitchArray ---- %
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            
            
%% ---- clear and close
    clc;
    clear;
    close all;
%% ---- ��ʼʱ��
    startTime = clock;
%% ---- д�뿪ʼ��Ϣ
    writeStartMessagesForGetAndWriteFreqOfSwitchArray;
%% ---- �����Ѿ�����Ŀ��������Ŀ
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            ����count��Ҫ���������ã�
                1.ΪwriteFreq�����ṩ�������Ӷ����Խ��õ��Ĺ���Ƶ�ʺͶ�Ӧ��S11����׷��д��txt
                2.ͳ�Ƽ����˶��ٸ��������
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    count = 1;
%% ---- ���ؿ�����������ļ�
    myTestSwitchArray;
%% ---- �õ����п������
    for ii = 1:1:m
        % ---- ���ɿ������
            myCurrentSwitchArray = myTestSwitchArrayArray(ii, :);
        % ---- ���ú������õ���ǰ������ϵĹ���Ƶ�ʣ������Ӧ��S11��������������д���ļ�
            getAndWriteFreqOfSwitchArray(myCurrentSwitchArray, count);
        % ---- �Ѿ�����Ŀ��������Ŀ+1
            count = count + 1;
     end
%% ---- ����ʱ��
    stopTime = clock;
%% ---- д�������Ϣ
    writeStopMessagesForGetAndWriteFreqOfSwitchArray;