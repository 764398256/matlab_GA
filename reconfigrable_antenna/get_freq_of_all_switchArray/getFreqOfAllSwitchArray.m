%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű�����������п�����ϵĹ���Ƶ�� ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ע�� ---- %
        % ---- ���ű�����Ҫ�����ǣ�
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % ---- 1.�������еĿ������
            % ---- 2.�õ�ÿ��������ϵĹ���Ƶ���Լ���Ӧ��S11����
            % ---- 3.����������Լ����Ӧ�Ĺ���Ƶ�ʺ�S11��������txt�ļ�
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

            
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
%% ---- ʹ��12��forѭ�����õ����п������
    for switch11 = 0:1:1
        for switch12 = 0:1:1
           for switch21 = 0:1:1
              for switch22 = 0:1:1
                  for switch23 = 0:1:1
                     for switch31 = 0:1:1
                         for switch32 = 0:1:1
                             for switch41 = 0:1:1
                                 for switch42 = 0:1:1
                                     for switch43 = 0:1:1
                                         for switch51 = 0:1:1
                                             for switch52 = 0:1:1
                                                 % ---- ���ɿ������
                                                    myCurrentSwitchArray = [switch11, switch12, switch21, switch22, switch23, ...
                                                        switch31, switch32, switch41, switch42, switch43, switch51, switch52];
                                                 % ---- ���ú������õ���ǰ������ϵĹ���Ƶ�ʣ������Ӧ��S11��������������д���ļ�
                                                    getAndWriteFreqOfSwitchArray(myCurrentSwitchArray, count);
                                                 % ---- �Ѿ�����Ŀ��������Ŀ+1
                                                    count = count + 1;
                                             end
                                         end
                                     end
                                 end
                             end
                         end
                     end
                  end
              end
           end
        end
    end
%% ---- ����ʱ��
    stopTime = clock;
%% ---- д�������Ϣ
    writeStopMessagesForGetAndWriteFreqOfSwitchArray;