% ==== �������ڲ��Դ������ɵ����� ==== 


% ---- �����ļ���ModelExecuteFastDemoDataFile
% ---- �ļ�λ�ã�G:\my_document\MATLAB\data_file\test\reconfigrable_antenna\model\ModelExecuteFastDemoDataFile.m
% ---- ��������ModelExecuteFastDemo.m���ɣ����ļ���λ�ã�G:\my_document\MATLAB\hfss_matlab\test\reconfigrable_antenna\model\ModelExecuteFastDemo.m


% ---- ����Ŀ�ģ�
    % ---- �õ�ָ��Ƶ�ʶ�Ӧ��S11����
 
    
%% ---- clear and close
    clc;
    clear;
    close all;
    
    fprintf('clear and close---->���\n\n');
    
    
%% ---- ���������ļ�
    ModelExecuteFastDemoDataFile;
    
    fprintf('���������ļ�---->���\n\n');
    

%% ---- �õ�ָ��Frequency��Ӧ��S11����
    for ii = 1:1:900;
        s11 = 20*log10(abs(S(ii,:,:)));
    
        fprintf('%.0f s11 = %.4f\n', ii, s11);
        
        if s11 < -10
            break;
        end
    end

%% ---- �����ߵ�S11����Frequency�仯��ͼ��
    figure;
	plot(f/1e9, 20*log10(abs(S)),'b');
	xlabel('Frequency (GHz) ->');
	ylabel('S_{11} (dB) ->');
    % ---- �˴�������������ǣ���Frequency������1.5-2.5֮��
        % ---- ע�� ---- %
        % ---- ע�� ---- %
        % ---- ע�� ---- %
            % ----
            % �˴�1.5��2.5����д�ɣ�1.5e9,2.5e9����Ϊ������f/1e9�Ѿ�����e9�����ԣ���ʱ����������1-10��������1e9-10e9
            % ----
        % ---- ע�� ---- %
        % ---- ע�� ---- %
        % ---- ע�� ---- %
    axis([1.5 2.5 -20 0]);
    
    fprintf('�����ߵ�S11����Frequency�仯��ͼ��---->���\n\n');