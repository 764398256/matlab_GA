%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű�����Ŀ¼��Ϣ ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{
    ---- ע�� ----
    ---- ע�� ----
    ---- ע�� ----
        1.���ļ�ֻ�ṩĿ¼��ÿ�����л�����Ӧһ���ļ���
            ÿ�����л���ֻ��hfssExecutePath�Ǻ��������л�����ͬ��

        2.���ļ��ṩһ��fileDirectory���飬����5��Ԫ�أ�
            ��һ��Ԫ��hfssMatlabApiPath��HFSS-MATLAB-API��·��
            �ڶ���Ԫ��prjFileDirectory�ǹ����ļ�����Ŀ¼
            ������Ԫ��scriptFileDirectory�ǽű��ļ�����Ŀ¼
            ���ĸ�Ԫ��dataFileDirectory��HFSS������ݵı���Ŀ¼
            �����Ԫ��hfssExecutePath��HFSS��ִ��·��

        3.֮����ô������Ϊ���ڰ汾V1���棬���õ�ʱ����Ҫ����ʹ�û������ĵ��õ�����
          �˴θ���֮�������л������޸�һ�Σ��Ժ���Ҫ���޸��κ���Ϣ
    ---- ע�� ----
    ---- ע�� ----
    ---- ע�� ----
%}

% %% ---- ����ʵ���ҵ��Ե�fileDirectory����
%     %{
%         ---- ע�� ----
%         ---- ע�� ----
%         ---- ע�� ----
%             ����������ʵ���ҵ��ԣ�����ʱ��Ҫע��ʹ�û���
%         ---- ע�� ----
%         ---- ע�� ----
%         ---- ע�� ----
%     %}
%     % ---- ������һ��Ԫ��hfssExecutePath����Ŀ¼��HFSS-MATLAB-API��·��
%         hfssMatlabApiPath = '..\matlab\hfss_matlab_api';
%     % ---- �����ڶ���Ԫ��prjFileDirectory����Ŀ¼�ǹ����ļ�����Ŀ¼
%         prjFileDirectory = '..\matlab\data_file\hfss_file';
%     % ---- ����������Ԫ��scriptFileDirectory����Ŀ¼�ǽű��ļ�����Ŀ¼
%         scriptFileDirectory = '..\matlab\data_file\vbs';
%     % ---- �������ĸ�Ԫ��dataFileDirectory����Ŀ¼��HFSS������ݵı���Ŀ¼
%         dataFileDirectory = '..\matlab\data_file\hfss_data';
%     % ---- ���������Ԫ��hfssExecutePath����Ŀ¼��HFSS��ִ��·��
%         %{ 
%             ---- ע�� ----
%             ---- ע�� ----
%             ---- ע�� ----
%                 ---- 1�� ----
%                     �˴�"Program Files"��Ҫ��˫���ţ�ԭ����
%                     �������HFSSû�а�װ����Program Files���棬����Ҫ���
%                 ---- 2�� ----
%                     ����HFSS 16.1��HFSS��ִ���ļ���ansysedt.exe������hfss.exe
%                     �����汾���м��
%             ---- ע�� ----
%             ---- ע�� ----
%             ---- ע�� ----
%         %}
%         hfssExecutePath = 'D:\"Program Files"\AnsysEM\AnsysEM16.1\Win64\ansysedt.exe';
%         
%     % ---- ������Ԫ����ӵ�fileDirectory��
%         %{
%             ---- ע�� ----
%             ---- ע�� ----
%             ---- ע�� ----
%                 %%%%%%%%%%%%%%%%%%%%%%
%                 % ---- ������֪ ---- %
%                 %%%%%%%%%%%%%%%%%%%%%%
%                 %    ��Ϊ�˴��ǽ����е�Ԫ����cell���鷽ʽ�����
%                 %    ���ǣ�HFSS·��������cell���鷽ʽ��·��
%                 %    �����Ҫ�ڵ��õ�ʱ�򽫱����õ�Ԫ��ת��Ϊ�ַ����������ʽ
%                 %    Ҳ��ʹ��char()����
%                 %        ���ӣ�
%                 %            ����Ҫʹ�õ�һ��Ԫ����ΪĿ¼ʱ��ʹ�����·�ʽ��
%                 %                char(tmpfileDirectory(1));
%                 %            ��cell��ʽ������ת��Ϊchar���͵�����
%             ---- ע�� ----
%             ---- ע�� ----
%             ---- ע�� ----
%         %}
%         fileDirectory = {hfssMatlabApiPath; prjFileDirectory; ...
%             scriptFileDirectory; dataFileDirectory; hfssExecutePath};
%     %{
%         % ---- ����fileDirectory����
%             [m, n] = size(fileDirectory);
%             disp(m);
%             disp(n);
%             for ii = 1:1:m
%                 fprintf('��ǰ��Ŀ¼�ǣ�');
%                 disp(char(fileDirectory(ii));
%                 fprintf('\n');
%             end
%     %}
            
            
            
            
% %% ---- ������������fileDirectory����
%     %{
%         ---- ע�� ----
%         ---- ע�� ----
%         ---- ע�� ----
%             ����������ʵ���ҷ�����������ʱ��Ҫע��ʹ�û���
%         ---- ע�� ----
%         ---- ע�� ----
%         ---- ע�� ----
%     %}
%     % ---- ������һ��Ԫ��hfssExecutePath����Ŀ¼��HFSS-MATLAB-API��·��
%         hfssMatlabApiPath = 'E:\ChaoQiang\matlab\hfss_matlab_api';
%     % ---- �����ڶ���Ԫ��prjFileDirectory����Ŀ¼�ǹ����ļ�����Ŀ¼
%         prjFileDirectory = 'E:\ChaoQiang\matlab\data_file\hfss_file';
%     % ---- ����������Ԫ��scriptFileDirectory����Ŀ¼�ǽű��ļ�����Ŀ¼
%         scriptFileDirectory = 'E:\ChaoQiang\matlab\data_file\vbs';
%     % ---- �������ĸ�Ԫ��dataFileDirectory����Ŀ¼��HFSS������ݵı���Ŀ¼
%         dataFileDirectory = 'E:\ChaoQiang\matlab\data_file\hfss_data';
%     % ---- ���������Ԫ��hfssExecutePath����Ŀ¼��HFSS��ִ��·��
%         %{ 
%             ---- ע�� ----
%             ---- ע�� ----
%             ---- ע�� ----
%                 ---- 1�� ----
%                     �˴�"Program Files"��Ҫ��˫���ţ�ԭ����
%                     �������HFSSû�а�װ����Program Files���棬����Ҫ���
%                 ---- 2�� ----
%                     ����HFSS 16.1��HFSS��ִ���ļ���ansysedt.exe������hfss.exe
%                     �����汾���м��
%             ---- ע�� ----
%             ---- ע�� ----
%             ---- ע�� ----
%         %}
%         hfssExecutePath = 'D:\HFSS\AnsysEM16.1\Win64\ansysedt.exe';
%     
%     % ---- ������Ԫ����ӵ�fileDirectory��
%         %{
%             ---- ע�� ----
%             ---- ע�� ----
%             ---- ע�� ----
%                 %%%%%%%%%%%%%%%%%%%%%%
%                 % ---- ������֪ ---- %
%                 %%%%%%%%%%%%%%%%%%%%%%
%                 %    ��Ϊ�˴��ǽ����е�Ԫ����cell���鷽ʽ�����
%                 %    ���ǣ�HFSS·��������cell���鷽ʽ��·��
%                 %    �����Ҫ�ڵ��õ�ʱ�򽫱����õ�Ԫ��ת��Ϊ�ַ����������ʽ
%                 %    Ҳ��ʹ��char()����
%                 %        ���ӣ�
%                 %            ����Ҫʹ�õ�һ��Ԫ����ΪĿ¼ʱ��ʹ�����·�ʽ��
%                 %                char(tmpfileDirectory(1));
%                 %            ��cell��ʽ������ת��Ϊchar���͵�����
%             ---- ע�� ----
%             ---- ע�� ----
%             ---- ע�� ----
%         %}
%         fileDirectory = {hfssMatlabApiPath; prjFileDirectory; ...
%             scriptFileDirectory; dataFileDirectory; hfssExecutePath};
%     %{
%         % ---- ����fileDirectory����
%             [m, n] = size(fileDirectory);
%             disp(m);
%             disp(n);
%             for ii = 1:1:m
%                 fprintf('��ǰ��Ŀ¼�ǣ�');
%                 disp(char(fileDirectory(ii));
%                 fprintf('\n');
%             end
%     %}




%% ---- �����ʼǱ���fileDirectory����
    %{
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            ����������Thinkpad������ʱ��Ҫע��ʹ�û���
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    % ---- ������һ��Ԫ��hfssExecutePath����Ŀ¼��HFSS-MATLAB-API��·��
        hfssMatlabApiPath = '..\matlab\hfss_matlab_api';
    % ---- �����ڶ���Ԫ��prjFileDirectory����Ŀ¼�ǹ����ļ�����Ŀ¼
        prjFileDirectory = '..\matlab\data_file\hfss_file';
    % ---- ����������Ԫ��scriptFileDirectory����Ŀ¼�ǽű��ļ�����Ŀ¼
        scriptFileDirectory = '..\matlab\data_file\vbs';
    % ---- �������ĸ�Ԫ��dataFileDirectory����Ŀ¼��HFSS������ݵı���Ŀ¼
        dataFileDirectory = '..\matlab\data_file\hfss_data';
    % ---- ���������Ԫ��hfssExecutePath����Ŀ¼��HFSS��ִ��·��
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                ---- 1�� ----
                    �˴�"Program Files"��Ҫ��˫���ţ�ԭ����
                    �������HFSSû�а�װ����Program Files���棬����Ҫ���
                ---- 2�� ----
                    ����HFSS 16.1��HFSS��ִ���ļ���ansysedt.exe������hfss.exe
                    �����汾���м��
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        hfssExecutePath = 'G:\"Program Files"\HFSS\AnsysEM16.1\Win64\ansysedt.exe';
    
    % ---- ������Ԫ����ӵ�fileDirectory��
        %{
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                %%%%%%%%%%%%%%%%%%%%%%
                % ---- ������֪ ---- %
                %%%%%%%%%%%%%%%%%%%%%%
                %    ��Ϊ�˴��ǽ����е�Ԫ����cell���鷽ʽ�����
                %    ���ǣ�HFSS·��������cell���鷽ʽ��·��
                %    �����Ҫ�ڵ��õ�ʱ�򽫱����õ�Ԫ��ת��Ϊ�ַ����������ʽ
                %    Ҳ��ʹ��char()����
                %        ���ӣ�
                %            ����Ҫʹ�õ�һ��Ԫ����ΪĿ¼ʱ��ʹ�����·�ʽ��
                %                char(tmpfileDirectory(1));
                %            ��cell��ʽ������ת��Ϊchar���͵�����
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        fileDirectory = {hfssMatlabApiPath; prjFileDirectory; ...
            scriptFileDirectory; dataFileDirectory; hfssExecutePath};
    %{
        % ---- ����fileDirectory����
            [m, n] = size(fileDirectory);
            disp(m);
            disp(n);
            for ii = 1:1:m
                fprintf('��ǰ��Ŀ¼�ǣ�');
                disp(char(fileDirectory(ii));
                fprintf('\n');
            end
    %}