%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����ڽ���Ϣд�������ļ� ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ע�� ---- %
        % ---- ���ű�����Ҫ�����ǣ�
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % ---- 1.����Ϣд�������ļ�
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%% ---- ����ȫ�ֱ���
    global PopulationSize setupFreq startFreq stopFreq  portX portY
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
%% ---- д��������Ϣ
    % ---- ���ú���д��100����*��
        write100Star(fidTxtForObjFuncByBand);
    % ---- д��������Ϣ
        fprintf(fidTxtForObjFuncByBand, '* ���ļ����ڴ����Ŵ��㷨�ķ������ݣ���Щ������objFuncByBand��������\r\n');
    % ---- ���ú���д��100����*��
        write100Star(fidTxtForObjFuncByBand);
%% ---- д�뿪ʼʱ����Ϣ
    % ---- ��ʱ��ת��Ϊ�ַ���
        startTimeStr = num2str(startTime);
    % ---- ���ú���д��100����*��
        write100Star(fidTxtForObjFuncByBand);
    % ----- д��ʱ����Ϣ        
        fprintf(fidTxtForObjFuncByBand, '* ���η��濪ʼ��%s\r\n', startTimeStr);
    % ---- ���ú���д��100����*��
        write100Star(fidTxtForObjFuncByBand);
%% ---- д��Ŀ��Ƶ�κ�HFSS�������
    % ---- д��Ŀ��Ƶ��
        fprintf(fidTxtForObjFuncByBand, '* ���Ƶ���ǣ�%.2fGHz-%.2fGHz\r\n', objFreq - 0.05, objFreq + 0.05);
        fprintf(fidTxtForObjFuncByBand, '*\r\n');
    % ---- д��HFSS�������
        fprintf(fidTxtForObjFuncByBand, '* HFSS�������Ϊ��\r\n');
        fprintf(fidTxtForObjFuncByBand, '* \t���Ƶ���ǣ�%.2fGHz\r\n', setupFreq);
        fprintf(fidTxtForObjFuncByBand, '* \tɨƵ��Χ�ǣ�%.2fGHz-%.2fGHz\r\n', startFreq, stopFreq);
        fprintf(fidTxtForObjFuncByBand, '*\r\n');
%% ---- д�������λ����Ϣ
    fprintf(fidTxtForObjFuncByBand, '* ����ģ�͵����������ǣ�portX = %.2fmm��portY = %.2fmm\r\n', portX, portY);
    fprintf(fidTxtForObjFuncByBand, '*\r\n');
%% ---- д���Ŵ��㷨һЩ��Ҫ�Ĳ���
    fprintf(fidTxtForObjFuncByBand, '* �Ŵ��㷨��һЩ����Ϊ��\r\n');
    % ---- д���Ŵ��㷨һЩ��Ҫ�Ĳ���
        fprintf(fidTxtForObjFuncByBand, '* \t��Ⱥ��СΪ��%.f\r\n', PopulationSize);
        fprintf(fidTxtForObjFuncByBand, '* \t�������Ϊ��%.2f\r\n', CrossoverFraction);
        fprintf(fidTxtForObjFuncByBand, '* \t�������Ϊ��%.2f\r\n', MigrationFraction);
        fprintf(fidTxtForObjFuncByBand, '* \t��ֹ����Ϊ��Generations = %.0f��FitnessLimit = %.2f\r\n', Generations, FitnessLimit);
%% ---- ���ú���д��100����*��
    write100Star(fidTxtForObjFuncByBand);
%% ---- ������Ϣ
    fprintf(fidTxtForObjFuncByBand, '*\r\n');
    fprintf(fidTxtForObjFuncByBand, '* �����Ƿ�������\r\n');
    fprintf(fidTxtForObjFuncByBand, '*\r\n');
%% ---- ���ú���д��100����*��
    write100Star(fidTxtForObjFuncByBand);
    fprintf(fidTxtForObjFuncByBand, '\r\n');
    fprintf(fidTxtForObjFuncByBand, '\r\n');
%% ---- �ر��ļ�
    fclose(fidTxtForObjFuncByBand);