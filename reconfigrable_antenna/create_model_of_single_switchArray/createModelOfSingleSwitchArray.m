%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����ڵõ�ָ��������ϵ���Ϣ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ע�� ---- %
        % ---- ���ű�����Ҫ�����ǣ�
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % ---- ���Եõ�ָ��������ϵ���Ϣ
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            
%% ---- clear and close
    clc;
    clear;
    close all;
%% ---- ���ؿ�����Ͻű�
%{
%     %{
%         ---- ע�� ----
%         ---- ע�� ----
%         ---- ע�� ----
%             % ---- ���ű�ֻ�����ڲ���һ������testSwtichArray
%             % ---- �������testSwtichArrayֻ��0��1����Ԫ��
%                 % ---- 0�������ضϿ�
%                 % ---- 1�������رպ�
% 
% 
%             % ---- ����Ԫ�صĸ���Ϊ12�����ֱ��Ӧ12������
%                 % ---- ����(1)����Switch11
%                 % ---- ����(2)����Switch12
% 
%                 % ---- ����(3)����Switch21
%                 % ---- ����(4)����Switch22
%                 % ---- ����(5)����Switch23
% 
%                 % ---- ����(6)����Switch31
%                 % ---- ����(7)����Switch32
% 
%                 % ---- ����(8)����Switch41
%                 % ---- ����(9)����Switch42
%                 % ---- ����(10)����Switch43
% 
%                 % ---- ����(11)����Switch51
%                 % ---- ����(12)����Switch52
%         ---- ע�� ----
%         ---- ע�� ----
%         ---- ע�� ----
%     %}
%     switchArray;
%     %{
%         ---- ע�� ----
%         ---- ע�� ----
%         ---- ע�� ----
%             �˴�֮���Զ���tmpSwtichArray���������ŵ㣺
%                 1.Ϊ���޸ķ��㡣ʹ������������Ͻű�ʱ��ֻ��Ҫ����Ӧ�����鸳ֵ��tmpSwtichArray��
%                   ���ɣ��������Ĳ���������ؽ����˲����ķ����ԡ�
%                 2.�����˷�װ��˼�룬ʹԭ����Ժ���Ĳ������ɼ���������ԭ����İ�ȫ��
%         ---- ע�� ----
%         ---- ע�� ----
%         ---- ע�� ----
%     %}
%     tmpSwtichArray = testSwtichArray;
    %}
    tmpSwtichArray = [0 0 0 0 0 0 0 0 0 0 0 0];
%% ---- �ڿ���̨�����ǰ�������
    fprintf('���ڴ���������ϣ�');
    fprintf('%.0f ', tmpSwtichArray);
    fprintf('��ģ��\n');
%% ---- ����ģ��ִ�нű�
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            �˽ű��������ǣ�
                %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                % ---- 1.ִ�н�ģ�ű�            
                %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    exeModelForCreateModelOfSinlgeSwitchArray;