%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű�����ִ�н�ģ�ű� ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ע�� ---- %
        % ---- ���ű�����Ҫ�����ǣ�
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % ---- 1.ִ�н�ģ�ű�            
            % ---- 2.�������Ƶ�ʡ�ɨƵ��Χ   
            % ---- 3.ִ��HFSS����            
            % ---- 4.�����������            
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            
%% ---- ����ȫ�ֱ���
    global setupFreq startFreq stopFreq setupName sweepName            
%% ---- ���ز����ļ�
    %{
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            ���ű��������ع�����ģ�����еĻ����ߴ������
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    modelParametersForTest;
%% ---- ����fileDirectoryParameters.m�ű�
    %{
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            1.���ű�����3�����飺
                ��һ������fileDirectoryOfLab��Ӧ����ʵ���ҵ��Ե�Ŀ¼
                �ڶ�������fileDirectoryOfServer��Ӧ����ʵ���ҷ�������Ŀ¼
                �ڶ�������fileDirectoryOfThinkpad��Ӧ�����ҵıʼǱ���Ŀ¼

                ʹ�õ�ʱ�������ʹ�û��������ö�Ӧ������

            2.ÿ���������5��Ԫ�أ�
                ��һ��Ԫ��hfssMatlabApiDirectory��HFSS-MATLAB-API����Ŀ¼
                �ڶ���Ԫ��prjFileDirectory�ǹ����ļ�����Ŀ¼
                ������Ԫ��scriptFileDirectory�ǽű��ļ�����Ŀ¼
                ���ĸ�Ԫ��dataFileDirectory��HFSS������ݵı���Ŀ¼
                �����Ԫ��hfssExecutePath��HFSS��ִ��·��

            3.֮����ô������Ϊ�ڲ�ͬ�����л�����������Ҫ�޸���ЩĿ¼��
              ��˽����е�Ŀ¼ͳһ��һ���ļ����棬
              ����ͬһ�����л�����Ŀ¼������һ���������棬
              ����ִ���ļ�ֻ��Ҫ���ĵ��õ����鼴�ɣ��������޸�ԭʼĿ¼
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    fileDirectoryParameters_V2ForTest;
    %{
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            �˴�֮���Զ���tmpfileDirectory���������ŵ㣺
                1.Ϊ���޸ķ��㡣�������л���֮��ֻ��Ҫ����Ӧ�����鸳ֵ��tmpfileDirectory��
                  ���ɣ��������Ĳ���������ؽ����˲����ķ����ԡ�
                2.�����˷�װ��˼�룬ʹԭ����Ժ���Ĳ������ɼ���������ԭ����İ�ȫ��
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    tmpfileDirectory = fileDirectory;
%% ---- ���HFSS-MATLAB-API��·��
    %{
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            1.�˴���Ҫ��HFSS-MATLAB-API��ӵ�MATLAB��·����

            2.�˴�֮��ʹ��char()����������Ϊԭ��������cell���鷽ʽ�����
              ���ǣ�HFSS·��������cell���鷽ʽ��·��
              �����Ҫ�ڵ��õ�ʱ�򽫱����õ�Ԫ��ת��Ϊ�ַ����������ʽ
              Ҳ��ʹ��char()����
                  ���ӣ�
                      ����Ҫʹ�õ�һ��Ԫ����ΪĿ¼ʱ��ʹ�����·�ʽ��
                          char(tmpfileDirectory(1));
                      ��cell��ʽ������ת��Ϊchar���͵�����

        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    addpath(char(tmpfileDirectory(1)));
%% ---- �����ļ���
     %{
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            ֮���Զ����ļ�������Ϊ�����жദ�õ�
                ������֮��ֻ��Ҫ�޸Ĵ˴����ļ���
                ͨ���ַ�����ƴ�ӾͿ��Եõ��������յ��ļ���
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    fileName = ['SwitchArray', num2str(tmpSwtichArray(end))];
%% ---- ���������ļ�
    % ---- ͨ��vbs������HFSS�ļ��ı���·����[fileName, '.aedt']���ļ���
    % ---- �˴���Ҫ��.aedt��Ϊ�ļ��ĺ�׺��������.hfss��HFSS16.1���ļ���׺��.aedt�������汾�����в���
        %{
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                1.�˴�֮��ʹ��char()����������Ϊԭ��������cell���鷽ʽ�����
                  ���ǣ�HFSS·��������cell���鷽ʽ��·��
                  �����Ҫ�ڵ��õ�ʱ�򽫱����õ�Ԫ��ת��Ϊ�ַ����������ʽ
                  Ҳ��ʹ��char()����
                      ���ӣ�
                          ����Ҫʹ�õ�һ��Ԫ����ΪĿ¼ʱ��ʹ�����·�ʽ��
                              char(tmpfileDirectory(1));
                          ��cell��ʽ������ת��Ϊchar���͵�����
                
                2.�˴��������ַ�����ƴ�ӣ����յõ�Ҫ������ļ���·���Լ�����
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        tmpPrjFile = [char(tmpfileDirectory(2)), '\', fileName, '.aedt'];
%% ---- �����ű��ļ�
    % ---- �ű��ļ��ı���·����[fileName, '.vbs']���ļ���
        %{
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                1.�˴�֮��ʹ��char()����������Ϊԭ��������cell���鷽ʽ�����
                  ���ǣ�HFSS·��������cell���鷽ʽ��·��
                  �����Ҫ�ڵ��õ�ʱ�򽫱����õ�Ԫ��ת��Ϊ�ַ����������ʽ
                  Ҳ��ʹ��char()����
                      ���ӣ�
                          ����Ҫʹ�õ�һ��Ԫ����ΪĿ¼ʱ��ʹ�����·�ʽ��
                              char(tmpfileDirectory(1));
                          ��cell��ʽ������ת��Ϊchar���͵�����
                
                2.�˴��������ַ�����ƴ�ӣ����յõ�Ҫ������ļ���·���Լ�����
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        tmpScriptFile = [char(tmpfileDirectory(3)), '\', fileName, '.vbs'];
%% ---- ������ʱ�ű��ļ�
    fid = fopen(tmpScriptFile, 'wt');
%% ---- �����µĹ��̺�����ļ�
    hfssNewProject(fid);
    hfssInsertDesign(fid, fileName);
%% ---- ʹ�ýű���ģ
    % ---- ����ģ�ͽű�
        %{
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                �˴����ڼ���ģ�ͽű�������ģ��
    
                ����ģ�͵Ĵ������μ�createUniteReconfigurableAntennaModelForTest.m
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
    createUniteReconfigurableAntennaModelForTest;
%% ---- ����setupParametersOfHFSS�ű�
    %{
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            �˽ű��������Ƶ��setupFreq��ɨ��Ƶ��sweep���Լ����Ƕ�Ӧ��HFSS��ʽ���ַ�������
            ��ϸ��Ϣ��μ�setupParametersOfHFSS.m�ű�
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----% %% ---- �������
    % ---- ������������ļ���[fileName, 'DataFile.m']���ļ���
        %{
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                1.�˴�֮��ʹ��char()����������Ϊԭ��������cell���鷽ʽ�����
                  ���ǣ�HFSS·��������cell���鷽ʽ��·��
                  �����Ҫ�ڵ��õ�ʱ�򽫱����õ�Ԫ��ת��Ϊ�ַ����������ʽ
                  Ҳ��ʹ��char()����
                      ���ӣ�
                          ����Ҫʹ�õ�һ��Ԫ����ΪĿ¼ʱ��ʹ�����·�ʽ��
                              char(tmpfileDirectory(1));
                          ��cell��ʽ������ת��Ϊchar���͵�����
                
                2.�˴��������ַ�����ƴ�ӣ����յõ�Ҫ������ļ���·���Լ�����
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        tmpDataFile = [char(tmpfileDirectory(4)), '\', fileName, 'DataFile.m'];
    % ---- ���.m��ʽ�������ļ�
        hfssExportNetworkData(fid, tmpDataFile, setupName, sweepName);

    %}
    setupParametersOfHFSSForOneFrequencyPoint;
%% ---- ������Ƶ��
    hfssInsertSolution(fid, setupName, setupFreq, 0.02, 20);
%% ---- ���ɨƵ��Χ
    hfssFastSweep(fid, sweepName, setupName, startFreq, stopFreq, 0.01);
%% ---- ���ɨƵ
    hfssSolveSetup(fid, setupName);
%% ---- �������
    % ---- ������������ļ���[fileName, 'DataFile.m']���ļ���
        %{
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                1.�˴�֮��ʹ��char()����������Ϊԭ��������cell���鷽ʽ�����
                  ���ǣ�HFSS·��������cell���鷽ʽ��·��
                  �����Ҫ�ڵ��õ�ʱ�򽫱����õ�Ԫ��ת��Ϊ�ַ����������ʽ
                  Ҳ��ʹ��char()����
                      ���ӣ�
                          ����Ҫʹ�õ�һ��Ԫ����ΪĿ¼ʱ��ʹ�����·�ʽ��
                              char(tmpfileDirectory(1));
                          ��cell��ʽ������ת��Ϊchar���͵�����
                
                2.�˴��������ַ�����ƴ�ӣ����յõ�Ҫ������ļ���·���Լ�����
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        tmpDataFile = [char(tmpfileDirectory(4)), '\', fileName, 'DataFile.m'];
    % ---- ���.m��ʽ�������ļ�
        hfssExportNetworkData(fid, tmpDataFile, setupName, sweepName);
%% ---- ���湤���ļ�
    hfssSaveProject(fid, tmpPrjFile, true);
%% ---- �رչ����ļ�
    hfssCloseActiveProject(fid);
%% ---- �ر�fid
    fclose(fid);
%% ---- ִ��vbs�ű�
    % ---- HFSSִ��·��
        %{
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                1.�˴�֮��ʹ��char()����������Ϊԭ��������cell���鷽ʽ�����
                  ���ǣ�HFSS·��������cell���鷽ʽ��·��
                  �����Ҫ�ڵ��õ�ʱ�򽫱����õ�Ԫ��ת��Ϊ�ַ����������ʽ
                  Ҳ��ʹ��char()����
                      ���ӣ�
                          ����Ҫʹ�õ�һ��Ԫ����ΪĿ¼ʱ��ʹ�����·�ʽ��
                              char(tmpfileDirectory(1));
                          ��cell��ʽ������ת��Ϊchar���͵�����
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        hfssExecutePath = char(tmpfileDirectory(5));
    % ---- ͨ��MATLAB����HFSS��ִ�нű�
        hfssExecuteScript(hfssExecutePath, tmpScriptFile);
%% ---- �Ƴ�HFSS-MATLAB-API��·��
    %{
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            �˴���Ҫ��HFSS-MATLAB-API��MATLAB��·�����Ƴ���
            �Ƴ�������Ҫ����Ӵ������ʹ��
            ���ǰ��û���ֶ����HFSS-MATLAB-API��MATLAB��·���Ĵ���
            ��˴�����Ҫ�Ƴ�FSS-MATLAB-API·��
            ����Ƴ�����ᵼ�³����ܵ��ú�������Ҫ���������������·��           

            ���ǰ�����ֶ���ӵĴ��룬���Ƴ�·���Ĵ������£�
                rmpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\3dmodeler');
                rmpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\analysis');
                rmpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\boundary');
                rmpath('G:\my_document\MATLAB\hfss_matlab\hfss_api\general');
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}