%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���������ڸ��ݹ���Ƶ�ʺ�S11������Ӧ��ֵ ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ע�� ---- %
        % ---- ����������Ҫ�����ǣ�
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % ---- 1.���ݹ���Ƶ�ʺ�S11������Ӧ��ֵ
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                       
function scores = getScoresByFreqAndS11_V3(freq, s11)
%% ---- ����ȫ�ֱ���
    global objFreq
%% ---- �õ���ʼ����Ӧ��ֵ
    scores = abs(objFreq - freq);
%% ---- �����㷨�޸���Ӧ��ֵ
    %{ 
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
            �˴����㷨�ǣ�
                ���-10 < s11������ζ�Ŵ˴���freq����ֻ��һ��г��㣬���ܲ��ã�
                    ���Լ�ʹ���freq�ﵽ���Ҫ��ҲҪ��ȥ��Ҳ��������������Ӧ��ֵ��
                        ʹ�õķ����ǣ�
                            scores = scores + 0.05;
                ���-15 < s11 <= -10����ʱ��freq���������ߵ�г��㣬Ҳ���ܲ���
                    �������freq�����ܲ��ã�����ҲҪ����������Ӧ��ֵ
                        ʹ�õķ����ǣ�
                            scores = scores + 0.025;
                ���-20 < s11 <= -15����ʱ��freq���������ߵ�г��㣬Ҳ���ܲ���
                    �������freq������һ�㣬����ҲҪ�ʵ�����������Ӧ��ֵ
                        ʹ�õķ����ǣ�
                            scores = scores + 0.015;
                        ����Ҫʹ��0.005��Ҳ����ζ��objFreq������г��Ƶ�ʶ���������ֹ��������Ϊ������0.02
                ���-30 < s11 <= -25����ʱ��freq���������ߵ�г��㣬Ҳ���ܲ���
                    �������freq�����ܲ���������ҲҪ�ʵ���С������Ӧ��ֵ
                        ʹ�õķ����ǣ�
                            scores = scores - 0.005;
                        ����Ҫʹ��0.005��Ҳ����ζ��objFreq - 0.02��objFreq - 0.01��objFreq��objFreq + 0.01��objFreq + 0.02������г��Ƶ�ʶ���������ֹ��������Ϊ������0.02
                ���s11 <= -30����ʱ�������freq�����ܷǳ��ã�����Ҫ�ʵ���С������Ӧ��ֵ
                        ʹ�õķ����ǣ�
                            scores = scores - 0.015;
                        ����Ҫʹ��0.015��Ҳ����ζ��objFreq - 0.03��objFreq - 0.02��objFreq - 0.01��objFreq��objFreq + 0.01��objFreq + 0.02��objFreq + 0.03������г��Ƶ�ʶ���������ֹ��������Ϊ������0.02
        ---- ע�� ----
        ---- ע�� ----
        ---- ע�� ----
    %}
    if s11 > -10
        scores = scores + 0.05;
    elseif s11 > -15 && s11 <= -10
        scores = scores + 0.025;
    elseif s11 > -20 && s11 <= -15
        scores = scores + 0.015;
    elseif s11 > -30 && s11 <= -25
        scores = scores - 0.005;
    elseif s11 <= -30
        scores = scores - 0.015;
    end
end
