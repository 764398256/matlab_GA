%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����ڽ���Ϣд�������ļ� ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ע�� ---- %
        % ---- ���ű�����Ҫ�����ǣ�
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % ---- 1.����Ϣд�������ļ�
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




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
    fidTxtForObjFuncByFreqAndS11 = fopen('..\matlab\data_file\freq_of_all_switchArray\freqAndS11OfAllSwitchArray.txt', 'a');
%% ---- ����
    fprintf(fidTxtForObjFuncByFreqAndS11, '\r\n');
%% ---- д�뿪ʼʱ����Ϣ
    % ---- ��ʱ��ת��Ϊ�ַ���
        stopTimeStr = num2str(stopTime);
    % ---- ���ú���д��100����*��
        write100Star(fidTxtForObjFuncByFreqAndS11);
    % ----- д��ʱ����Ϣ        
        fprintf(fidTxtForObjFuncByFreqAndS11, '* ���η��������%s\r\n', stopTimeStr);
%% ---- д�����ʱ��
    % ---- �õ�����ʱ��
        spendTime = etime(stopTime, startTime);
    % ---- ������ʱ��д��Data�ļ�
        fprintf(fidTxtForObjFuncByFreqAndS11, '* ���η��湲��ʱ%f��\r\n', spendTime);
%% ---- ���ú���д��100����*��
    write100Star(fidTxtForObjFuncByFreqAndS11);
%% ---- ���ú���д��100����*��
    write100Star(fidTxtForObjFuncByFreqAndS11);
    fprintf(fidTxtForObjFuncByFreqAndS11, '\r\n');
    fprintf(fidTxtForObjFuncByFreqAndS11, '\r\n');
    fprintf(fidTxtForObjFuncByFreqAndS11, '\r\n');
    fprintf(fidTxtForObjFuncByFreqAndS11, '\r\n');
    fprintf(fidTxtForObjFuncByFreqAndS11, '\r\n');
    fprintf(fidTxtForObjFuncByFreqAndS11, '\r\n');
%% ---- �ر��ļ�
    fclose(fidTxtForObjFuncByFreqAndS11);