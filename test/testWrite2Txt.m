%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����ڲ���MATLAB��������д��TXT ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ---- ��ʱ��ʼ
    % ---- ����ͳ������ʱ��
    
    tic;
%% ---- clear and close
    clc;
    clear;
    close all;
%% ---- �����������
    freq = 5;
    s11 = -40;
%% ---- ����Ⱦɫ��
    myReconfigurableAntennaTempPop = [0, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 1];
%% ---- ����ͳ�Ʊ���
    count = 1;
%% ---- д��TXT�ļ�
%     % ---- ���ļ�
%         fidTxt = fopen('G:\my_document\graduation_projects\data_file\test\testWrite2Txt.txt', 'a');
    % ---- д���ļ�
%         for ii = 1:1:100
%             fprintf(fidTxt, '%.0f ', myReconfigurableAntennaTempPop);
%             fprintf(fidTxt, '%.8f %.8f\n', freq, s11);
%         end
        for gene1 = 0:1:1
            for gene2 = 0:1:1
               for gene3 = 0:1:1
                  for gene4 = 0:1:1
                      for gene5 = 0:1:1
                         for gene6 = 0:1:1
                             for gene7 = 0:1:1
                                 for gene8 = 0:1:1
                                     for gene9 = 0:1:1
                                         for gene10 = 0:1:1
                                             for gene11 = 0:1:1
                                                 for gene12 = 0:1:1
                                                     fidTxt = fopen('G:\my_document\graduation_projects\data_file\test\testWrite2Txt.txt', 'a');
                                                     % ---- ����Ⱦɫ��
                                                        myCurrentPop = [gene1, gene2, gene3, gene4, gene5, ...
                                                            gene6, gene7, gene8, gene9, gene10, gene11, gene12];
                                                     % ---- �Ѿ������Ⱦɫ����Ŀ+1
                                                         fprintf(fidTxt, '%.0f ', myCurrentPop);
                                                         fprintf(fidTxt, '%.8f %.8f\r\n', freq, s11); % ---- txt����Ļ����ǡ�\r\n��
                                                     % ---- ���count
                                                        disp(count);
                                                     % ---- �Ѿ������Ⱦɫ����Ŀ+1
                                                         count = count + 1;
                                                     fclose(fidTxt);
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
%     % ---- �ر��ļ�
%         fclose(fidTxt);
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