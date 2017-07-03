%�Ŵ��㷨������
function My_GA
global Cmax;
Cmax=10^6;
popsize=50; %Ⱥ���С
Gene=20;
chromlength=36; %�����ַ������ȣ��������峤�ȣ�
Xmax=70;
Xmin=60;
f1=2;
f2=3;
df=0.01;
pc=0.8; %�������
pm=0.01; %�������
pop=initpop(popsize,chromlength); %���������ʼȺ��
for i=1:Gene %��������
    [objvalue]=calobjvalue(pop); %����Ŀ�꺯��
    fitvalue=calfitvalue(objvalue) ;%����Ⱥ����ÿ���������Ӧ��
    [newpop]=selection(pop,fitvalue); %����
    [newpop]=crossover(newpop,pc); %����
    [newpop]=mutation(newpop,pm); %����
    [bestindividual,bestfit]=best(pop,fitvalue); %���Ⱥ������Ӧֵ��С�ĸ��弰����Ӧֵ
    Lx(i)=decodechrom(bestindividual,1,18)*(Xmax-Xmin)/(2^18-1); %��Ѹ������
    Wy(i)=decodechrom(bestindividual,19,18)*(Xmax-Xmin)/(2^18-1); %��Ѹ������
    
    s11(i)=Cmax-bestfit; %��Ѹ�����Ӧ��
    n(i)=i;                     %��¼���Ŵ�λ��
    s11_mean(i)=mean(Cmax-fitvalue); %��i��ƽ����Ӧ��
    pop=newpop;
end
%%��ͼ
%%��ͼ
figure(1)%���ŵ�仯����ͼ
i=1:Gene;
plot(s11(i),'-b*')
xlabel('��������');
ylabel('���Ÿ�����Ӧֵ');
title('���ŵ�仯����');
legend('���ŵ�');
grid on
[z index]=min(s11); %������Сֵ����λ��
% [z index]=max(y); %������Сֵ����λ�� 
% PO=n(index)  %���Ÿ����λ��
figure;
f=f1:df:f2
plot(f/1e9, 20*log10(abs(S)),'b');
xlabel('Frequency(GHz)');
ylabel('S_{11} (dB)');
fprintf('�����ߵ�S11����Frequency�仯��ͼ��---->���\n\n');
X=Lx(index)  
Y=Ly(index)          
F=z



