%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���������ڸ���ͳ�Ʊ����õ���ǰȾɫ�����Ϣ ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ע�� ---- %
        % ---- ����������Ҫ�����ǣ�
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % ---- 1.����ͳ�Ʊ����õ���ǰȾɫ�����Ϣ
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % ---- Ⱦɫ�����Ϣ������
            % ---- 1.����generationsOfMyR_A
                % ---- Ҳ���ǵ�ǰȾɫ�����ڵڼ���
            % ---- 2.λ��generationsPositionOfMyR_A
                % ---- ��ǰȾɫ����generationsOfMyR_A���ĵڼ���Ⱦɫ��

function [generationsOfMyR_A, generationsPositionOfMyR_A] = getGenerationsMessageOfMyR_A()
%% ---- ����ȫ�ֱ���
    global count PopulationSize
%% ---- ����generationsOfMyR_A
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
                fix��������ȥ��С������
                �����Ҫ����1
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    generationsOfMyR_A = fix(count / PopulationSize);
%% ---- �õ�λ��generationsPositionOfMyR_A
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
                fix��������ȥ��С������
                �����Ҫ����1
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    generationsPositionOfMyR_A = rem(count, PopulationSize);
%% ---- �жϵ�ǰȾɫ���Ƿ��ǵ�ǰ�������һ������
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
                ������Ҫע��һ�㣺��ͳ�Ʊ�����PopulationSize����������ʱ��Ҳ���ǵ�ǰ�������һ�����壨��ʱgenerationsPositionOfMyR_A == 0��
                    ��ʱ����generationsOfMyR_AҪ��1����λ��Ҫ����ΪPopulationSize
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    if generationsPositionOfMyR_A == 0
        generationsOfMyR_A = generationsOfMyR_A - 1;
        generationsPositionOfMyR_A = PopulationSize;
    end
end

