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
    fidTxtForObjFuncByFreqAndS11 = fopen('..\matlab\data_file\ga_data\DataForObjFuncByFreqAndS11.txt', 'a');
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
%% ---- д����Ѹ���
    fprintf(fidTxtForObjFuncByFreqAndS11, '* ���η���õ�����Ѹ����ǣ�pop = ');
    fprintf(fidTxtForObjFuncByFreqAndS11, '%.0f ', pop);
    fprintf(fidTxtForObjFuncByFreqAndS11, '\r\n');
%% ---- д����Ѹ����Ӧ����Ӧ��ֵ
    fprintf(fidTxtForObjFuncByFreqAndS11, '* ��Ѹ������Ӧ��ֵ�ǣ�%.3f', fival);
    fprintf(fidTxtForObjFuncByFreqAndS11, '\r\n');
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