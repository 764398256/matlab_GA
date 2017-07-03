%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����ڸ���Ŀ�꺯��objFuncByFreqִ���Ŵ��㷨 ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ע�� ---- %
        % ---- ���ű�����Ҫ�����ǣ�
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % ---- 1.����Ŀ�꺯��objFuncByFreqִ���Ŵ��㷨
            % ---- 2.������������
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            �ٷ��Ƽ�ʹ���������ַ�ʽ���ò�����
                options = gaoptimset(options, 'PopulationSize', 30);
                    �����ڵ�options��ǰ�����õ�options
            ��Ȼ��ʹ�ã�options.PopulationSize = 30;�����ַ�ʽҲ�ǿ��Ե�
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
%% ---- clear and close
    clc;
    clear;
    close all;
%% ---- ��ʼʱ��
    startTime = clock;
%% ---- ����ȫ�ֱ���
    global count objFreq m n tmpfileDirectory numOfSwitch;
%% ---- �趨�������е�����������
    % ---- �趨����m
        m = 5;
    % ---- �趨����n
        n = 5;
%% ---- ����Ŀ��Ƶ��
    objFreq = 3.81;
    % ---- �ж�objFreq��ֵ�����С�ڵ���0.5���ͱ���
        if objFreq <= 0.5
            error('ErrorTests:convertTest', ... 
          '\n    objFreq�������0.5GHz');
        end
%% ---- ���ز����ļ�
    % ---- ��������ģ�Ͳ���
        %{
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                ���ű��������ع�����ģ�����еĻ����ߴ������
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        modelParametersFor_M_N_R_A;
    % ---- ����HFSS������ò���
        %{
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                �˽ű��������Ƶ��setupFreq��ɨ��Ƶ��sweep���Լ����Ƕ�Ӧ��HFSS��ʽ���ַ�������
                ��ϸ��Ϣ��μ�setupParametersOfHFSS.m�ű�
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        setupParam_HFSS_GA;
    % ---- ����fileDirectoryParameters.m�ű�
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

                �˴�֮����tmpfileDirectory����Ϊȫ�ֱ���
                    ����Ϊexe_M_N_R_A_Model_Some_SwitchArr��Ҫʹ�ô˱���
                    ����exe_M_N_R_A_Model_Some_SwitchArr�͵�ǰ�ļ�û��ֱ�ӵ��ù�ϵ
                    �����Ҫ����Ϊȫ�ֱ���
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        tmpfileDirectory = fileDirectory;
    % ---- �����Ŵ��㷨����
        GASetupForObjFuncByFreqAndS11;
%% ---- ����ͳ�Ʊ���
    %{
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            ����ͳ�ƿ������״̬�ĸ���
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    count = 1;
%% ---- ����Ŀ�꺯��
    FitnessFcn = @objFuncByFreq;
%% ---- ��������ĸ�����Ҳ���ǻ���ĸ������ڿ��ع�������������صĸ���
    GenomeLength = numOfSwitch;
%% ---- ��������Ϣд��Data�ļ�
    writeStartMessagesForObjFuncByFreqAndS11;
%% ---- ����ga
    [pop, fival, exitflag, output, populations, scores] = ga(FitnessFcn, GenomeLength, options);
%% ---- ����ʱ��
    stopTime = clock;
%% ---- д�������Ϣ
    writeStopMessagesForObjFuncByFreqAndS11;
%% ---- ���������
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            ����ķ���������ͨ������ķ�ʽ���ã��Ա�õ�ͬ���ķ�������
                %% ---- ����load����mat�ļ�
                    load('MessageForObjFuncByFreqAndS11.mat');
                %% ---- ��Ը��ǰ�ķ���������Ա�õ���ǰ�ķ�����
                    stream = RandStream.getGlobalStream;
                    stream.State = output.rngstate.state;
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    save('..\matlab\data_file\ga_data\MessageForObjFuncByFreqAndS11.mat');