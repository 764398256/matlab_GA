%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����ڲ����Ŵ��㷨��optionsѡ��������� ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ע�� ---- %
        % ---- ���ű�����Ҫ�����ǣ�
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % ---- 1.�����Ŵ��㷨��optionsѡ��
            % ---- 2.���Ŵ��㷨��optionsѡ���������
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            
    %{
        �Ŵ��㷨�Ĳ���ѡ��Լ�Ĭ��ѡ�{}����Ĭ��ѡ���
            PopulationType: [ 'bitstring'      | 'custom'    | {'doubleVector'} ]
                    Population type��PopulationType)ָ����Ӧ�Ⱥ����������������ͣ����������õ�Population typeΪ����ֵ֮һ��
                    (1)	Double Vector��˫��������) ('doubleVector')�������Ⱥ�еĸ�����˫��������ʱʹ�ã�����ȱʡֵ��
                    (2)	Bit string��λ��) ('bitstring')�������Ⱥ�еĸ�����λ������ʱʹ�á�
                    (3)	Custom���Զ��壩('custom')�������Ⱥ�еĸ��岻��ǰ����������ʱʹ�á�
                    (4)	���ʹ��Custom ('custom')���ͣ������Լ���д����������ͽ��溯������������������Ⱥ���룬���ֱ�����������ָ����Щ������
                    ?	����������Creation function ) (CreationFcn)��
                    ?	���캯����Mutation function) (MutationFcn)��
                    ?	���溯����Crossover function) (CrossoverFcn)��
            PopInitRange: [ matrix           | {[-10;10]} ]
                    Initial range  (PopInitRange)��ָ���������������ɵĳ�ʼ��Ⱥ������Χ����ʹ��һ��������Number of variables�о�������Initial range��
                    ÿһ�о���[lb; ub]��ʽ������lb�������Ŀ���½磬��ub���Ͻ硣���ָ��Initial range��2��1��������ÿ����Ŀ������չ���г��Ȳ��䣬���г���ΪNumber of variables��
            PopulationSize: [ positive scalar ]
                    Population size (PopulationSize)ָ����ÿһ�����ж��ٸ����壬ʹ�ô����Ⱥ�߶ȣ��Ŵ��㷨������ռ��ܸ��ӳ��ף�
                    ͬʱ���ٷ��ؾֲ���Сֵ������ȫ����Сֵ�Ļ��ᣬȻ��ʹ�ô����Ⱥ�߶ȣ���ʹ�Ŵ��㷨���и�����
            
            EliteCount: [ positive scalar  | {0.05*PopulationSize} ]
                    Elite count  (EliteCount)����ָ�������浽��һ���ĸ�����������Elite countΪһ��С�ڻ������Ⱥ�߶ȵ�����������ȱʡֵ��0.05*PopulationSize��
            CrossoverFraction: [ positive scalar  | {0.8} ]
                    Crossover fraction  (CrossoverFraction)����ָ����һ���в�ͬ��ԭ��Ⱥ�Ĳ��֣������ɽ��������
                    Crossover fraction��һ��0��1֮���С������Ϊ�������ı����е�С�����ڻ����ƶ���С������ȱʡֵ��0.8��

            ParetoFraction: [ positive scalar  | {0.35} ]
                    

            MigrationDirection: [ 'both'           | {'forward'} ]
                    (1)	��Direction�����򣩡� (MigrationDirection)����Ǩ�Ʒ�����һ������������
                    ������á�Direction��ΪForward ( 'forward')����Ǩ�Ʒ�������һ����Ⱥ��Ҳ���ǵ�N������ȺǨ�Ƶ���N+1������Ⱥ��
                    ������á�Direction��ΪBoth ('both')�����N������ȺǨ�Ƶ���N-1������Ⱥ��N��1������Ⱥ��
                    Ǩ�������һ������Ⱥ�������ƻ����������һ������ȺǨ�Ƶ���һ������Ⱥ����һ��Ǩ����Ǩ�Ƶ����һ������Ⱥ��
                    Ϊ�˷�ֹ���ƣ���ȷ������Ⱥ�߶��£�����Ⱥ�߶�������������һ0�ָʾһ��СΪ0������Ⱥ��
            MigrationInterval: [ positive scalar  | {20} ]
                    ��Interval��������� (MigrationInterval)����ָ��������Ǩ�Ƽ�Ҫ�������ٴ�����������IntervalΪ20����ÿ��20���ͷ���Ǩ�ơ�
            MigrationFraction: [ positive scalar  | {0.2} ]
                    ��Fraction���ٷֱȣ��� (MigrationFraction)����ָ������������Ⱥ���ж��ٸ�����Ǩ�ơ����ٷֱȡ�ָ������Ǩ������Ⱥ�н�С����Ⱥ�ĸ���Ǩ�ưٷֱȡ�
                    ���磺��������һ����50�����������ȺǨ�Ƶ�һ����100�����������Ⱥ�У���fraction����Ϊ0.1������Ǩ�Ƶĸ�������0.1 * 50 = 5��

            Generations: [ positive scalar ]
                    ��Generations������ָ���㷨����ظ�ִ�д�����ȱʡֵ��100��
            TimeLimit: [ positive scalar  | {Inf} ]
            FitnessLimit: [ scalar           | {-Inf} ]
                    Fitness limit����Ӧ���ޣ��� ( FitnessLimit)���������Ӧ��ֵС�ڻ���ڡ���Ӧ���ޣ�Fitness limit�������㷨��ֹ��
            StallGenLimit: [ positive scalar ]
            StallTest: [ 'geometricWeighted' | {'averageChange'} ]
            StallTimeLimit: [ positive scalar  | {Inf} ]
            TolFun: [ positive scalar ]
            TolCon: [ positive scalar  | {1e-6} ]

            InitialPopulation: [ matrix           | {[]} ]
            InitialScores: [ column vector    | {[]} ]

            NonlinConAlgorithm: [ 'penalty' | {'auglag'} ]
            InitialPenalty: [ positive scalar | {10} ]
            PenaltyFactor: [ positive scalar | {100} ]

            CreationFcn: [ function_handle  | @gacreationuniform | @gacreationlinearfeasible ]
            FitnessScalingFcn: [ function_handle  | @fitscalingshiftlinear  | @fitscalingprop  | 
                            @fitscalingtop   | {@fitscalingrank} ]
                    1.Rank�����У�(@fitscalingrank)����ȱʡ����Ӧ�ȱ���������Rank�������ݸ�����Ӧ��ֵ������˳������Ǹ��ݸ�����Ӧ��ֵ�Ĵ�С��������������ӡ�
                      ����������ǰ�������Ӧ��ֵ������λ�á����ʺϸ��������Ϊ1�������ʺϸ��������Ϊ2���������ơ�Rank��������Ӧ�ȱ����������򣬴Ӷ�������ԭʼ��Ӧ��ֵ��Ӱ�졣
                    2.Proportional�����ʣ�(@fitscalingprop)�������ʵļ���ʹ�������Ӧ�ȱ�����С��������Ӧ��ֵ�ɱ�����

            SelectionFcn: [ function_handle  | @selectionremainder    | @selectionuniform | 
                            @selectionroulette | @selectiontournament   | @selectionstochunif ]
                    Stochastic uniform��������ȷֲ��� (@selectionstochunif)����ȱʡ��ѡ����ΪStochastic uniform������������һ�����ϣ�ÿһ����������̶�ֵ�����ʶ�Ӧ���ϵ�һ���֡�
                    �㷨����ͬ��С�Ĳ��������ƶ�����ÿһ�����㷨���ݽ����λ��ȷ��һ��������һ����һС�ڲ����ľ������ֵ��
                    
            CrossoverFcn: [ function_handle  | @crossoverheuristic  | @crossoverintermediate | 
                            @crossoversinglepoint | @crossovertwopoint | @crossoverarithmetic | 
                            @crossoverscattered ]
                    Scattered����ɢ��(@crossoverscattered)������һ��ȱʡ�Ľ��溯����������һ���������������������ĳλ��1�����������ӵ�һ��������������Ϊ0��ӵڶ������������������Щ������γ�һ�Ӹ��塣���磺P1��P2�Ǹ�����
                        p1 = [a b c d e f g h] 
                        p2 = [1 2 3 4 5 6 7 8] 
                        ���������������[1 1 0 0 1 0 0 0]���������������ӱ����壺
                        child1 = [a b 3 4 e 6 7 8]

            MutationFcn: [ function_handle  | @mutationuniform | @mutationadaptfeasible | 
                            @mutationgaussian ]
                    Gaussian����˹������(mutationgaussian)��������ȱʡ�ı��캯����Gaussian������һ��˹�ֲ������о�ֵ0��������ӵ���������ÿһ�
                    ����ֲ��ı仯�ɲ�����Scale�� �͡�Shrink��ѹ������ ���������ѡ��Gaussian�����ǽ���ʾ���������ڡ�Population�� �����а��ա�Initial range���������á�
            
            DistanceMeasureFcn: [ function_handle  | {@distancecrowding} ]
            HybridFcn: [ @fminsearch | @patternsearch | @fminunc | @fmincon | {[]} ]

            Display: [ 'off' | 'iter' | 'diagnose' | {'final'} ]
                    
            OutputFcns: [ function_handle  | {[]} ]
            
            PlotFcns: [ function_handle  | @gaplotbestf | @gaplotbestindiv | @gaplotdistance | 
                            @gaplotexpectation | @gaplotgenealogy | @gaplotselection | @gaplotrange | 
                            @gaplotscorediversity  | @gaplotscores | @gaplotstopping  | 
                            @gaplotmaxconstr | @gaplotrankhist | @gaplotpareto | @gaplotspread | 
                            @gaplotparetodistance |{[]} ]
                    Best fitness (@gaplotbestf) ������Ѻ���ֵ������ԡ�
                    Expectation������ֵ��(@gaplotexpectation)������ÿһ��ԭʼ�÷ֶ�Ӧ���������Ӵ�����
                    Score diversity��������ֵ��(@gaplotscorediversity)����ÿһ���ĵ÷�ֱ��ͼ��
                    Stopping��ֹͣ��(@plotstopping)����ֹͣ����ˮƽ��
                    Best individual(@gaplotbestindiv)����ÿ���������Ӧ�Ⱥ������������ֵ��
                    Genealogy����ϵ��(@gaplotgenealogy)�����������ϵ����һ������һ��������ɫ�������£�����ָ������ӱ������߱�ʾ������ӱ������߱�ʾԭʼ�ĸ��塣
                    Scores(@gaplotscores) ����ÿһ���и���ĵ÷֡�
                    Distance(@gaplotdistance) ����ÿһ���и�����ƽ�����롣
                    Range(@gaplotrange) ����ÿһ���������С��ƽ����Ӧ����ֵ��
                    Selection(@gaplotselection) ����˫�׵�ֱ��ͼ��

            PlotInterval: [ positive scalar  | {1} ]

            Vectorized: [ 'on'  | {'off'} ]

            UseParallel: [ logical scalar | true | {false} ]
    %}

            
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
%% ---- ����load����mat�ļ�
    load('test.mat');
%% ---- ��Ը��ǰ�ķ���������Ա�õ���ǰ�ķ�����
    stream = RandStream.getGlobalStream;
    stream.State = output.rngstate.state;
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
    PopulationType = 'doubleVector';
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
        PopulationSize = 40;
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
    options = gaoptimset(options, 'EliteCount', 0.05*PopulationSize);
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
        Generations = 100;
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
        FitnessLimit = 0;
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
    % ---- ����Expectation������ֵ����������ÿһ��ԭʼ�÷ֶ�Ӧ���������Ӵ�����
        PlotFcnsExpectation = @gaplotexpectation;
    % ---- ����Score diversity��������ֵ��������ÿһ���ĵ÷�ֱ��ͼ��
        PlotFcnsScoreDiversity = @gaplotscorediversity;
    % ---- ����Best individual������ÿ���������Ӧ�Ⱥ������������ֵ��
        PlotFcnsBestIndividual = @gaplotbestindiv;
    % ---- ����Genealogy����ϵ���������������ϵ����һ������һ��������ɫ�������£�����ָ������ӱ������߱�ʾ������ӱ������߱�ʾԭʼ�ĸ��塣
        PlotFcnsGenealogy = @gaplotgenealogy;
    % ---- ����Scores������ÿһ���и���ĵ÷֡�
        PlotFcnsScores = @gaplotscores;
    % ---- ����Distance������ÿһ���и�����ƽ�����롣
        PlotFcnsDistance = @gaplotdistance;
    % ---- ����Range������ÿһ���������С��ƽ����Ӧ����ֵ��
        PlotFcnsRange = @gaplotrange;
    % ---- ����Selection������˫�׵�ֱ��ͼ��
        PlotFcnsSelection = @gaplotselection;
    % ---- ����ͼ�β���PlotFcns
        options = gaoptimset(options, 'PlotFcns', {PlotFcnsOfBestFitness, PlotFcnsScoreDiversity, PlotFcnsScores, PlotFcnsRange});
%% ---- ����Ŀ�꺯��
    FitnessFcn = @rastriginsfcn;
%% ---- ��������ĸ�����Ҳ���ǻ���ĸ������ڿ��ع�������������صĸ���
    GenomeLength = 2;
%% ---- ����ga
    [pop, fival, exitflag, output] = ga(FitnessFcn, GenomeLength, options);
% %% ---- ���optionsѡ��
%     disp(options);
%% ---- ������
    fprintf('%.0f ', pop);
    fprintf('\n%.0f ', fival);
    fprintf('\n%.0f\n', exitflag);
    disp(output);
%% ---- ���������
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            ����ķ���������ͨ������ķ�ʽ���ã��Ա�õ�ͬ���ķ�������
                %% ---- ����load����mat�ļ�
                    load('test.mat');
                %% ---- ��Ը��ǰ�ķ���������Ա�õ���ǰ�ķ�����
                    stream = RandStream.getGlobalStream;
                    stream.State = output.rngstate.state;
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    save('..\graduation_projects\data_file\test\test.mat');