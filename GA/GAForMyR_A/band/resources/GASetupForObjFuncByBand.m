%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����������Ŵ��㷨��һЩ���� ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ע�� ---- %
        % ---- ���ű�����Ҫ�����ǣ�
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % ---- 1.�����Ŵ��㷨��һЩ����
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
%% ---- ����ȫ�ֱ���
    global PopulationSize
%% ---- �õ��Ŵ��㷨��optionsѡ��
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            �Ŵ��㷨options���ýӿ���gaoptimset
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    options = gaoptimset;
%% ---- ������Ⱥ����
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            ���ع�����ÿ�����صĶϿ��ͱպ���0��1��ʾ�����Բ���bitstring����Ⱥ����
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    PopulationType = 'bitstring';
    options = gaoptimset(options, 'PopulationType', PopulationType);
%% ---- ������Ⱥ��С
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            Elite count  (EliteCount)����ָ�������浽��һ���ĸ�����������Elite countΪһ��С�ڻ������Ⱥ�߶ȵ�������
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    % ---- ������Ⱥ��С
        PopulationSize = 50;
    % ---- ������Ⱥ��С
        options = gaoptimset(options, 'PopulationSize', PopulationSize);
%% ---- ����EliteCount
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            Elite count  (EliteCount)����ָ�������浽��һ���ĸ�����������Elite countΪһ��С�ڻ������Ⱥ�߶ȵ�������
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    % ---- ����EliteCount
        EliteCount = ceil(0.05*PopulationSize); % ---- EliteCount����Ϊ������
    % ---- ����EliteCount
        options = gaoptimset(options, 'EliteCount', EliteCount);
%% ---- ����CrossoverFraction
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            Crossover fraction  (CrossoverFraction)����ָ����һ���в�ͬ��ԭ��Ⱥ�Ĳ��֣������ɽ��������
            Crossover fraction��һ��0��1֮���С������Ϊ�������ı����е�С�����ڻ����ƶ���С����
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    % ---- ����CrossoverFraction
        CrossoverFraction  = 0.8;
    % ---- ����CrossoverFraction
        options = gaoptimset(options, 'CrossoverFraction', CrossoverFraction);
%% ---- ����MigrationDirection
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            ��Direction�����򣩡� (MigrationDirection)����Ǩ�Ʒ�����һ������������
                ������á�Direction��ΪForward ( 'forward')����Ǩ�Ʒ�������һ����Ⱥ��Ҳ���ǵ�N������ȺǨ�Ƶ���N+1������Ⱥ��
                ������á�Direction��ΪBoth ('both')�����N������ȺǨ�Ƶ���N-1������Ⱥ��N��1������Ⱥ��
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    % ---- ����MigrationDirection
        MigrationDirection = 'forward';
    % ---- ����MigrationDirection
        options = gaoptimset(options, 'MigrationDirection', MigrationDirection);
%% ---- ����MigrationInterval
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            ��Interval��������� (MigrationInterval)����ָ��������Ǩ�Ƽ�Ҫ�������ٴ�����������IntervalΪ20����ÿ��20���ͷ���Ǩ�ơ�
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    % ---- ����MigrationInterval
        MigrationInterval = 20;
    % ---- ����MigrationInterval
        options = gaoptimset(options, 'MigrationInterval', MigrationInterval);
%% ---- ����MigrationFraction
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            ��Fraction���ٷֱȣ��� (MigrationFraction)����ָ������������Ⱥ���ж��ٸ�����Ǩ�ơ����ٷֱȡ�ָ������Ǩ������Ⱥ�н�С����Ⱥ�ĸ���Ǩ�ưٷֱȡ�
                ���磺��������һ����50�����������ȺǨ�Ƶ�һ����100�����������Ⱥ�У���fraction����Ϊ0.1������Ǩ�Ƶĸ�������0.1 * 50 = 5��
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    % ---- ����MigrationFraction
        MigrationFraction = 0.2;
    % ---- ����MigrationFraction
        options = gaoptimset(options, 'MigrationFraction', MigrationFraction);
%% ---- ����ֹͣ����
    % ---- ����������Generations
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                Generations����ָ���㷨����ظ�ִ�д���
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        Generations = 10;
    % ---- ����FitnessLimit
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                Fitness limit����Ӧ���ޣ��� ( FitnessLimit)���������Ӧ��ֵС�ڻ���ڡ���Ӧ���ޣ�Fitness limit�������㷨��ֹ��
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        FitnessLimit = -100;
    % ---- ����ֹͣ����
        options = gaoptimset(options, 'Generations', Generations, 'FitnessLimit', FitnessLimit);
%% ---- ������Ӧ�ȱ�������FitnessScalingFcn
    % ---- ������Ӧ�ȱ�������
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                Rank�����У���Rank�������ݸ�����Ӧ��ֵ������˳������Ǹ��ݸ�����Ӧ��ֵ�Ĵ�С��������������ӡ�
                ����������ǰ�������Ӧ��ֵ������λ�á����ʺϸ��������Ϊ1�������ʺϸ��������Ϊ2���������ơ�
                Rank��������Ӧ�ȱ����������򣬴Ӷ�������ԭʼ��Ӧ��ֵ��Ӱ�졣
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        FitnessScalingFcn = @fitscalingrank;
    % ---- ������Ӧ�ȱ�������FitnessScalingFcn
        options = gaoptimset(options, 'FitnessScalingFcn', FitnessScalingFcn);
%% ---- ����ѡ�����SelectionFcn
    % ---- ����SelectionFcn����
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                Stochastic uniform��������ȷֲ��� (@selectionstochunif)����������һ�����ϣ�ÿһ����������̶�ֵ�����ʶ�Ӧ���ϵ�һ���֡�
                �㷨����ͬ��С�Ĳ��������ƶ�����ÿһ�����㷨���ݽ����λ��ȷ��һ��������һ����һС�ڲ����ľ������ֵ��
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        SelectionFcn = @selectionstochunif;
    % ---- ����ѡ�����SelectionFcn
        options = gaoptimset(options, 'SelectionFcn', SelectionFcn);
%% ---- ���ý������CrossoverFcn
    % ---- ���彻�溯��
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                Scattered����ɢ��(@crossoverscattered)��������һ���������������������ĳλ��1�����������ӵ�һ��������������Ϊ0��ӵڶ������������������Щ������γ�һ�Ӹ��塣���磺P1��P2�Ǹ�����
                    p1 = [a b c d e f g h] 
                    p2 = [1 2 3 4 5 6 7 8] 
                    ���������������[1 1 0 0 1 0 0 0]���������������ӱ����壺
                    child1 = [a b 3 4 e 6 7 8]
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        CrossoverFcn = @crossoverscattered;
    % ---- ���ý������CrossoverFcn
        options = gaoptimset(options, 'CrossoverFcn', CrossoverFcn);
%% ---- ���ñ������MutationFcn
    % ---- ����MutationFcn����
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                Gaussian����˹������(mutationgaussian)��������ȱʡ�ı��캯����Gaussian������һ��˹�ֲ������о�ֵ0��������ӵ���������ÿһ�
                    ����ֲ��ı仯�ɲ�����Scale�� �͡�Shrink��ѹ������ ���������ѡ��Gaussian�����ǽ���ʾ���������ڡ�Population�� �����а��ա�Initial range���������á�
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        MutationFcn = @mutationgaussian;
    % ---- ���ñ������MutationFcn
        options = gaoptimset(options, 'MutationFcn', MutationFcn);
%% ---- ������ʾ������ڲ���Display
    % ---- ����Display
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                Iterative ('iter')������ʾÿһ�ε������й���Ϣ��
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        Display = 'iter';
    % ---- ������ʾ������ڲ���Display
        options = gaoptimset(options, 'Display', Display);
%% ---- ����ͼ�β���PlotFcns
    % ---- ����Best fitness
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                ������Ѻ���ֵ������ԡ�
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        PlotFcnsOfBestFitness = @gaplotbestf;
    % ---- ����Score diversity��������ֵ��������ÿһ���ĵ÷�ֱ��ͼ��
        PlotFcnsScoreDiversity = @gaplotscorediversity;
    % ---- ����Scores������ÿһ���и���ĵ÷֡�
        PlotFcnsScores = @gaplotscores;
    % ---- ����Range������ÿһ���������С��ƽ����Ӧ����ֵ��
        PlotFcnsRange = @gaplotrange;
    % ---- ����ͼ�β���PlotFcns
        options = gaoptimset(options, 'PlotFcns', {PlotFcnsOfBestFitness, PlotFcnsScoreDiversity, PlotFcnsScores, PlotFcnsRange});