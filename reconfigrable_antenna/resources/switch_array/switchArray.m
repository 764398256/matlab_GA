%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����ڲ���һ����ʱ������testSwtichArray�����ڲ���ģ�͵Ľ��� ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ע�� ---- %
        % ---- ���ű�ֻ�����ڲ���һ������testSwtichArray
        % ---- �������testSwtichArrayֻ��0��1����Ԫ��
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
            
            
        % ---- ���磺testSwtichArray = [0 1 0 1 0 1 0 1 0 1 0 1]
            % ---- ����
                % ---- Switch11���ضϿ�
                % ---- Switch12���رպ�

                % ---- Switch21���ضϿ�
                % ---- Switch22���رպ�
                % ---- Switch23���ضϿ�

                % ---- Switch31���رպ�
                % ---- Switch32���ضϿ�

                % ---- Switch41���رպ�
                % ---- Switch42���ضϿ�
                % ---- Switch43���رպ�

                % ---- Switch51���ضϿ�
                % ---- Switch52���رպ�
            
%% ---- ��������testSwtichArray
    % ---- ���忪��Switch11
        switch11 = 0;
    % ---- ���忪��switch12
        switch12 = 0;
    % ---- ���忪��switch21
        switch21 = 0;
    % ---- ���忪��switch22
        switch22 = 0;
    % ---- ���忪��switch23
        switch23 = 1;
    % ---- ���忪��switch31
        switch31 = 0;
    % ---- ���忪��switch32
        switch32 = 1;
    % ---- ���忪��switch41
        switch41 = 1;
    % ---- ���忪��switch42
        switch42 = 1;
    % ---- ���忪��switch43
        switch43 = 1;
    % ---- ���忪��switch51
        switch51 = 0;
    % ---- ���忪��switch52
        switch52 = 0;
        
    % ---- �����п��ر�����ӵ�testSwtichArray����
        testSwtichArray = [switch11, switch12, switch21, switch22, switch23, switch31, ...
            switch32, switch41, switch42, switch43, switch51, switch52];