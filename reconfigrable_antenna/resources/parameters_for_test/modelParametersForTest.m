%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- ���ű����ڴ�����ع����ߵ�������֪���� ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- ��λ��mm


%% ---- �����еı�������Ϊȫ�ֱ�����global
    global patchLength centreDistance switchLength switchWidth portDiameter inputDiameter portX portY height substrateLength maxWavelength;
    % ---- ���ڴ˴�����ȫ�ֱ���û��̫������壬���Է�������ȫ�ֱ�������Ϊ��ͨ��������
    
    
%% ---- ���в���
% ---- �����ν�����Ƭ�ı߳�(patchLength)   9.398
    patchLength = 9.398;
% ---- ���ڽ�����Ƭ���ľ�(centreDistence)	14.986
    centreDistance = 14.986;


% ---- RF MEMS���صĳ���(switchLength)	centreDistence - patchLength
    % ---- Ϊ�޸�֮ǰ�ĳ���
    % ---- switchLength = 2.159;
    
    % ---- �޸�˵�� ---- %
    % ---- Ϊ�˽�ģ���㣬���صĳ��ȵ���һ����Ƭ��һ�ߵ���һ����Ƭ����һ�ߵľ���
    % ---- Ҳ���ǣ�centreDistence - patchLength
    switchLength = centreDistance - patchLength;
% ---- RF MEMS���صĿ��(switchWidth)	1.27
    switchWidth = 1.27;


% ---- ������ֱ��(portDiameter)	1.2
    portDiameter = 1.2;
% ---- ����˿�ֱ��(inputDiameter)	3
    inputDiameter = 3;
% ---- �����X������(portX)	3
    portX = 3;
% ---- �����Y������(portY)	3
    portY = 3;


% ---- �����λ��׵ĺ��(height)	3.175
    height = 3.175;
% ---- �����λ��׵ı߳�(substrateLength)	52.5272
    % ---- Ϊ�޸�֮ǰ�ĳ���
    % substrateLength = 52.5272;
    
    % ---- �޸�˵�� ---- %
    % ---- Ϊ�˻�ȡ���õ����ܣ����̻��׵ĳ���
    % ---- ����Ϊ��2*( centreDistance+0.8* patchLength)
    substrateLength = 2 * (centreDistance + 0.8 * patchLength);
    
    
% ---- maxWavelength
    maxWavelength = 30;