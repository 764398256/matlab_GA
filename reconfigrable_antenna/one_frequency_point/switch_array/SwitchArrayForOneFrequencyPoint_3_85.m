%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����ڴ��浥��Ƶ���Ӧ�����п���������� ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ע�� ---- %
        % ---- ���ű�ֻ�����ڲ���һ������SwitchArrayOfOneFrequencyPoint
        % ---- �������SwitchArrayOfOneFrequencyPointֻ��0��1����Ԫ��
            % ---- 0�����ضϿ�
            % ---- 1�����رպ�
            
            
        % ---- ����Ԫ�صĸ���Ϊ12�����ֱ��Ӧ12������
            % ---- ����(1)����Switch11
            % ---- ����(2)����Switch12
            
            % ---- ����(3)����Switch21
            % ---- ����(4)����Switch22
            % ---- ����(5)����Switch23
            
            % ---- ����(6)����Switch31
            % ---- ����(7)����Switch32
            
            % ---- ����(8)����Switch41
            % ---- ����(9)����Switch42
            % ---- ����(10)����Switch43
            
            % ---- ����(11)����Switch51
            % ---- ����(12)����Switch52
            
            
%% ---- �����������1��SwitchArray1
    % ---- ���������Ϣ��0 1 1 0 0 1 1 1 0 1 0 1 3.85 -22.77 1654
    SwitchArray1 = [0 1 1 0 0 1 1 1 0 1 0 1 3.85 -22.77 1654];
%% ---- �����������2��SwitchArray2
    % ---- ���������Ϣ��1 1 1 1 0 0 0 1 1 1 1 0 3.85 -21.24 3871
    SwitchArray2 = [1 1 1 1 0 0 0 1 1 1 1 0 3.85 -21.24 3871];
%% ---- �����������3��SwitchArray3
    % ---- ���������Ϣ��1 1 1 1 0 0 0 1 1 0 1 0 3.85 -20.04 3867
    SwitchArray3 = [1 1 1 1 0 0 0 1 1 0 1 0 3.85 -20.04 3867];
%% ---- �����������4��SwitchArray4
    % ---- ���������Ϣ��1 1 0 1 0 0 0 1 1 1 1 0 3.85 -11.82 3359
    SwitchArray4 = [1 1 0 1 0 0 0 1 1 1 1 0 3.85 -11.82 3359];
%% ---- �����п�����ϴ���һ��������
    % ---- ����SwitchArrayOfOneFrequencyPoint
        %{ 
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
                SwitchArrayOfOneFrequencyPoint(1, :)����SwitchArray1�������Դ�����
            ---- ע�� ----
            ---- ע�� ----
            ---- ע�� ----
        %}
        SwitchArrayOfOneFrequencyPoint = [SwitchArray1; SwitchArray2; SwitchArray3; SwitchArray4];
        % ---- �õ�����������������m����������n��������
        [m, n] = size(SwitchArrayOfOneFrequencyPoint);
% %% ---- ����
%             [m, n] = size(SwitchArrayOfOneFrequencyPoint);
%             disp(m)
%             disp(n)
%             for ii = 1:1:m
%                 fprintf('��ǰ�Ŀ�����ϣ�');
%                 fprintf('%.0f ', SwitchArrayOfOneFrequencyPoint(ii, :));
%                 fprintf('\n');
%             end