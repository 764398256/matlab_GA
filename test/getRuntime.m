%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����ڲ��Եõ���������ʱ�� ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ע�� ---- %
        % ---- ���ű�����Ҫ�����ǣ�
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % ---- 1.���Եõ���������ʱ��
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            
%% ---- clear and close
    clc;
    clear;
    close all;            
%% ---- ��ʱ��ʼ
    tic;
%% ---- ����ʼʱ��д���ļ�
%     format shortg
    startTime = clock;
%     startTime = fix(startTime);
%     disp(startTime);
    startTimeStr = num2str(startTime);
    fid = fopen('..\graduation_projects\data_file\test\testWriteTime.txt', 'a');
    % ---- ���ú���д��100����*��
        write100Star(fid);
    fprintf(fid, '* ���η��濪ʼ��');
    
    fprintf(fid, '%s', startTimeStr);
    fprintf(fid, '\r\n');
    % ---- ���ú���д��100����*��
        write100Star(fid);
    fclose(fid);
%% ---- ��������
    % ---- ����sum
    sum = 0;
    
    % ---- ���
    for ii = 1:1:1000
        sum = ii + sum;
    end
    
    % ---- ���sum
    fprintf('sum = %.0f\n\n', sum);
%% ---- ��ʱ����
    % ---- ע�� ---- %
    % ---- ע�� ---- %
    % ---- ע�� ---- %
        % ---- toc�Դ�������� ---- %
    % ---- ע�� ---- %
    % ---- ע�� ---- %
    % ---- ע�� ---- %
    toc;
%% ---- ��ʱ��д���ļ�
    stopTime = clock;
%     stopTime = fix(stopTime);
    stopTimeStr = num2str(stopTime);
    fid = fopen('..\graduation_projects\data_file\test\testWriteTime.txt', 'a');
    % ---- ���ú���д��100����*��
        write100Star(fid);
    fprintf(fid, '* ���η��������');
    fprintf(fid, '%s', stopTimeStr);
    fprintf(fid, '\r\n');
    e = etime(stopTime, startTime);
%     disp(e);
    fprintf(fid, '* ���η��湲��ʱ%f��', e);
    fprintf(fid, '\r\n');
    % ---- ���ú���д��100����*��
        write100Star(fid);
    fclose(fid);