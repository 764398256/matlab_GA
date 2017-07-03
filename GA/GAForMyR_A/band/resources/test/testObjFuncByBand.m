%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����ڲ��Ե�����Ӧ�Ⱥ�������Ⱦɫ��pop����Ӧ�� ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ע�� ---- %
        % ---- ���ű�����Ҫ�����ǣ�
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % ---- ���Ե�����Ӧ�Ⱥ�������Ⱦɫ��pop����Ӧ�� ---- %
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ---- clear and close
    clc;
    clear;
    close all;
%% ---- ��ʼʱ��
    startTime = clock;
%% ---- ����ȫ�ֱ���
    global count PopulationSize startIndexOfS11 stopIndexOfS11 startFreq m n indexOfObjFreqInS11 tmpfileDirectory objFreq;
%% ---- �趨�������е�����������
    % ---- �趨����m
        m = 3;
    % ---- �趨����n
        n = 3;
%% ---- ����Ŀ��Ƶ��
    objFreq = 1.97;
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
        GASetupForObjFuncByBand;
%% ---- ����ͳ�Ʊ����ĳ�ʼֵ
    count = 39;
%% ---- ������Ⱥ��
    PopulationSize = 40;
%% ---- �õ�������Ӧ�ȵ���ʼS11��������ֹS11����
    % ---- �õ����Ƶ�ʶ�Ӧ��S11������λ��
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                startFreq��������HFSS��������ļ�
                    ��������Ĳ����ļ����棬S11�����������Ǵ�1��ʼ�����ε���
                    ��Ƶ���Ǵ�startFreq��ʼ��ÿ������0.01������Ҫ�ҵ�objFreq��Ӧ��S11��������Ҫʹ������Ĺ�ʽ��
                        indexOfObjFreqInS11 = (objFreq - startFreq) * 100 + 1;
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        indexOfObjFreqInS11 = (objFreq - startFreq) * 100 + 1;
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            ��ʼS11��������ֹS11�������ڼ���Ⱦɫ�����Ӧ�ȣ�����getScoresByBand��������
            
            �˴������Ŀ��Ƶ������5��Ƶ���S11�ĺ�

            ֮����Ҫ��int32�������������Ϊ����ֻ��������������indexOfObjFreqInS11 -
            5�õ��Ľ����double���͵ģ�������Ҫת��Ϊ�������͵�
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    startIndexOfS11 = int32(indexOfObjFreqInS11 - 5);
    stopIndexOfS11 = int32(indexOfObjFreqInS11 + 5);
%% ---- ���ز���Ⱦɫ���ļ�myTestPop.m
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            myTestPop.m�ű�����������Ⱦɫ�����飺
                allSwitchOnPop������ȫ���պ�
                allSwitchOffPop������ȫ���Ͽ�
                switchModelOnePop��ģ��1����ϸ��Ϣ�μ�myTestPop.m�ű�
                
                ����ʹ�õ�ʱ��ʹ�õ��ǣ�myTestPopArray
                    ����һ�����飬�������������Ⱦɫ�壬���У�
                        myTestPopArray(1, :)����allSwitchOnPop
                        myTestPopArray(2, :)����allSwitchOffPop
                        myTestPopArray(3, :)����switchModelOnePop
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    testArrFor_GA;
%% ---- ��������Ϣд��Data�ļ�
    writeStartMessagesForObjFuncByBand;
%% ---- ������Ӧ�Ⱥ������Ⱦɫ���Ӧ����Ӧ��
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            ��Ӧ�Ⱥ����ķ���ֵΪscores���������Ϊpop
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    for ii = 1:1:numOfSwitchArr
        % ---- ����pop��������ǰȾɫ�帳ֵ��pop
            pop = SwitchArrayOf_M_N_R_A_Model_GA(ii, :);
        % ---- ������Ӧ�Ⱥ������õ�Ⱦɫ��allSwitchOnPop����Ӧ��
            scores = objFuncByBand(pop);
    end
%% ---- ����ʱ��
    stopTime = clock;
%% ---- pop
    pop = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
%% ---- fival
    fival = -125;
%% ---- д�������Ϣ
    writeStopMessagesForObjFuncByBand;