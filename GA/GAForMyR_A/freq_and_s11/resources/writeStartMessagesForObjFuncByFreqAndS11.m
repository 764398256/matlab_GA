%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����ڽ���Ϣд�������ļ� ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ע�� ---- %
        % ---- ���ű�����Ҫ�����ǣ�
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % ---- 1.����Ϣд�������ļ�
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%% ---- ����ȫ�ֱ���
    global PopulationSize setupFreq startFreq stopFreq  portX portY objFreq
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
%% ---- д��������Ϣ
    % ---- ���ú���д��100����*��
        write100Star(fidTxtForObjFuncByFreqAndS11);
    % ---- д��������Ϣ
        fprintf(fidTxtForObjFuncByFreqAndS11, '* ���ļ����ڴ����Ŵ��㷨�ķ������ݣ���Щ������objFuncByFreqAndS11��������\r\n');
    % ---- ���ú���д��100����*��
        write100Star(fidTxtForObjFuncByFreqAndS11);
%% ---- д�뿪ʼʱ����Ϣ
    % ---- ��ʱ��ת��Ϊ�ַ���
        startTimeStr = num2str(startTime);
    % ---- ���ú���д��100����*��
        write100Star(fidTxtForObjFuncByFreqAndS11);
    % ----- д��ʱ����Ϣ        
        fprintf(fidTxtForObjFuncByFreqAndS11, '* ���η��濪ʼ��%s\r\n', startTimeStr);
    % ---- ���ú���д��100����*��
        write100Star(fidTxtForObjFuncByFreqAndS11);
%% ---- д��Ŀ��Ƶ�κ�HFSS�������
    % ---- д��Ŀ��Ƶ��
        fprintf(fidTxtForObjFuncByFreqAndS11, '* Ŀ��Ƶ���ǣ�%.2fGHz\r\n', objFreq);
        fprintf(fidTxtForObjFuncByFreqAndS11, '*\r\n');
    % ---- д��HFSS�������
        fprintf(fidTxtForObjFuncByFreqAndS11, '* HFSS�������Ϊ��\r\n');
        fprintf(fidTxtForObjFuncByFreqAndS11, '* \t���Ƶ���ǣ�%.2fGHz\r\n', setupFreq);
        fprintf(fidTxtForObjFuncByFreqAndS11, '* \tɨƵ��Χ�ǣ�%.2fGHz-%.2fGHz\r\n', startFreq, stopFreq);
        fprintf(fidTxtForObjFuncByFreqAndS11, '*\r\n');
%% ---- д�������λ����Ϣ
    fprintf(fidTxtForObjFuncByFreqAndS11, '* ����ģ�͵����������ǣ�portX = %.2fmm��portY = %.2fmm\r\n', portX, portY);
    fprintf(fidTxtForObjFuncByFreqAndS11, '*\r\n');
%% ---- д���Ŵ��㷨һЩ��Ҫ�Ĳ���
    fprintf(fidTxtForObjFuncByFreqAndS11, '* �Ŵ��㷨��һЩ����Ϊ��\r\n');
    % ---- д���Ŵ��㷨һЩ��Ҫ�Ĳ���
        fprintf(fidTxtForObjFuncByFreqAndS11, '* \t��Ⱥ��СΪ��%.f\r\n', PopulationSize);
        fprintf(fidTxtForObjFuncByFreqAndS11, '* \t�������Ϊ��%.2f\r\n', CrossoverFraction);
        fprintf(fidTxtForObjFuncByFreqAndS11, '* \t�������Ϊ��%.2f\r\n', MigrationFraction);
        fprintf(fidTxtForObjFuncByFreqAndS11, '* \t��ֹ����Ϊ��Generations = %.0f��FitnessLimit = %.2f\r\n', Generations, FitnessLimit);
%% ---- ���ú���д��100����*��
    write100Star(fidTxtForObjFuncByFreqAndS11);
%% ---- ������Ϣ
    fprintf(fidTxtForObjFuncByFreqAndS11, '*\r\n');
    fprintf(fidTxtForObjFuncByFreqAndS11, '* �����Ƿ�������\r\n');
    fprintf(fidTxtForObjFuncByFreqAndS11, '*\r\n');
%% ---- ���ú���д��100����*��
    write100Star(fidTxtForObjFuncByFreqAndS11);
    fprintf(fidTxtForObjFuncByFreqAndS11, '\r\n');
    fprintf(fidTxtForObjFuncByFreqAndS11, '\r\n');
%% ---- �ر��ļ�
    fclose(fidTxtForObjFuncByFreqAndS11);