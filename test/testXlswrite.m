%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����ڲ���MATLAB��������д��Excel ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ---- ��ʱ��ʼ
    % ---- ����ͳ������ʱ��
    
    tic;
%% ---- clear and close
    clc;
    clear;
    close all;
%% ---- �����������
    freq = 4;
    s11 = -30;
%% ---- ����ͳ�Ʊ���
    count = 1;
%% ---- ����Ⱦɫ��
    myReconfigurableAntennaTempPop = [0, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 1];
%% ---- д��Excel�ļ�
%     for ii = 1:1:100
%         currentRowNumber = ['A',num2str(count), ':B',num2str(count), ':C',num2str(count), ':D',num2str(count), ':E',num2str(count), ':F',num2str(count), ...
%             ':G',num2str(count), ':H',num2str(count), ':I',num2str(count), ':J',num2str(count), ':K',num2str(count), ':L',num2str(count), ...
%             ':M',num2str(count), ':N',num2str(count)];
%         disp(currentRowNumber);
%         xlswrite('J:\data\graduation_projects\test\data_file\testXlswrite.xlsx', [myReconfigurableAntennaTempPop freq s11], currentRowNumber);
%         count = count + 1;
%     end
    
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
                                                 % ---- ����Ⱦɫ��
                                                    myCurrentPop = [gene1, gene2, gene3, gene4, gene5, ...
                                                        gene6, gene7, gene8, gene9, gene10, gene11, gene12];
                                                    currentRowNumber = ['A',num2str(count), ':B',num2str(count), ':C',num2str(count), ':D',num2str(count), ':E',num2str(count), ':F',num2str(count), ...
                                                        ':G',num2str(count), ':H',num2str(count), ':I',num2str(count), ':J',num2str(count), ':K',num2str(count), ':L',num2str(count), ...
                                                        ':M',num2str(count), ':N',num2str(count)];
                                                            disp(currentRowNumber);
                                                    xlswrite('G:\my_document\graduation_projects\data_file\test\testXlswrite.xlsx', [myCurrentPop freq s11], currentRowNumber);
                                                 % ---- �Ѿ������Ⱦɫ����Ŀ+1
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