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
    fidTxtForObjFuncByBand = fopen('..\matlab\data_file\ga_data\DataForObjFuncByBand.txt', 'a');
%% ---- ����
    fprintf(fidTxtForObjFuncByBand, '\r\n');
%% ---- д�뿪ʼʱ����Ϣ
    % ---- ��ʱ��ת��Ϊ�ַ���
        stopTimeStr = num2str(stopTime);
    % ---- ���ú���д��100����*��
        write100Star(fidTxtForObjFuncByBand);
    % ----- д��ʱ����Ϣ        
        fprintf(fidTxtForObjFuncByBand, '* ���η��������%s\r\n', stopTimeStr);
%% ---- д�����ʱ��
    % ---- �õ�����ʱ��
        spendTime = etime(stopTime, startTime);
    % ---- ������ʱ��д��Data�ļ�
        fprintf(fidTxtForObjFuncByBand, '* ���η��湲��ʱ%f��\r\n', spendTime);
%% ---- ���ú���д��100����*��
    write100Star(fidTxtForObjFuncByBand);
%% ---- д����Ѹ���
    fprintf(fidTxtForObjFuncByBand, '* ���η���õ�����Ѹ����ǣ�pop = ');
    fprintf(fidTxtForObjFuncByBand, '%.0f ', pop);
    fprintf(fidTxtForObjFuncByBand, '\r\n');
%% ---- д����Ѹ����Ӧ����Ӧ��ֵ
    fprintf(fidTxtForObjFuncByBand, '* ��Ѹ������Ӧ��ֵ�ǣ�%.2f', fival);
    fprintf(fidTxtForObjFuncByBand, '\r\n');
%% ---- ���ú���д��100����*��
    write100Star(fidTxtForObjFuncByBand);
    fprintf(fidTxtForObjFuncByBand, '\r\n');
    fprintf(fidTxtForObjFuncByBand, '\r\n');
    fprintf(fidTxtForObjFuncByBand, '\r\n');
    fprintf(fidTxtForObjFuncByBand, '\r\n');
    fprintf(fidTxtForObjFuncByBand, '\r\n');
    fprintf(fidTxtForObjFuncByBand, '\r\n');
%% ---- �ر��ļ�
    fclose(fidTxtForObjFuncByBand);