%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����ڽ���Ϣд�������ļ� ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ע�� ---- %
        % ---- ���ű�����Ҫ�����ǣ�
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % ---- 1.����Ϣд�������ļ�
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%% ---- ����ȫ�ֱ���
    global setupFreq startFreq stopFreq  portX portY
%% ---- �������ļ�
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            ��a�� ����׷�ӷ�ʽ���ļ������ļ���ָ��λ���ļ�ĩβ���ļ��������򴴽���
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    fidTxtForGetAndWriteFreqOfSwitchArray = fopen('..\matlab\data_file\freq_of_all_switchArray\freqAndS11OfAllSwitchArray.txt', 'a');
%% ---- д��������Ϣ
    % ---- ���ú���д��100����*��
        write100Star(fidTxtForGetAndWriteFreqOfSwitchArray);
    % ---- д��������Ϣ
        fprintf(fidTxtForGetAndWriteFreqOfSwitchArray, '* ���ļ����ڴ������п�����ϵĹ���Ƶ�ʺ�S11����Щ������getFreqOfAllSwitchArray��������\r\n');
    % ---- ���ú���д��100����*��
        write100Star(fidTxtForGetAndWriteFreqOfSwitchArray);
%% ---- д�뿪ʼʱ����Ϣ
    % ---- ��ʱ��ת��Ϊ�ַ���
        startTimeStr = num2str(startTime);
    % ---- ���ú���д��100����*��
        write100Star(fidTxtForGetAndWriteFreqOfSwitchArray);
    % ----- д��ʱ����Ϣ        
        fprintf(fidTxtForGetAndWriteFreqOfSwitchArray, '* ���η��濪ʼ��%s\r\n', startTimeStr);
    % ---- ���ú���д��100����*��
        write100Star(fidTxtForGetAndWriteFreqOfSwitchArray);
%% ---- д��HFSS�������
    fprintf(fidTxtForGetAndWriteFreqOfSwitchArray, '* HFSS�������Ϊ��\r\n');
    fprintf(fidTxtForGetAndWriteFreqOfSwitchArray, '* \t���Ƶ���ǣ�%.2fGHz\r\n', setupFreq);
    fprintf(fidTxtForGetAndWriteFreqOfSwitchArray, '* \tɨƵ��Χ�ǣ�%.2fGHz-%.2fGHz\r\n', startFreq, stopFreq);
    fprintf(fidTxtForGetAndWriteFreqOfSwitchArray, '*\r\n');
%% ---- д�������λ����Ϣ
    fprintf(fidTxtForGetAndWriteFreqOfSwitchArray, '* ����ģ�͵����������ǣ�portX=%.2fmm��portY=%.2fmm\r\n', portX, portY);
    fprintf(fidTxtForGetAndWriteFreqOfSwitchArray, '*\r\n');
%% ---- ���ú���д��100����*��
    write100Star(fidTxtForGetAndWriteFreqOfSwitchArray);
%% ---- ������Ϣ
    fprintf(fidTxtForGetAndWriteFreqOfSwitchArray, '*\r\n');
    fprintf(fidTxtForGetAndWriteFreqOfSwitchArray, '* �����Ƿ�������\r\n');
    fprintf(fidTxtForGetAndWriteFreqOfSwitchArray, '*\r\n');
%% ---- ���ú���д��100����*��
    write100Star(fidTxtForGetAndWriteFreqOfSwitchArray);
    fprintf(fidTxtForGetAndWriteFreqOfSwitchArray, '\r\n');
    fprintf(fidTxtForGetAndWriteFreqOfSwitchArray, '\r\n');
%% ---- �ر��ļ�
    fclose(fidTxtForGetAndWriteFreqOfSwitchArray);