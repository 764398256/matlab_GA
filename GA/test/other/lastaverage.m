function lastaverage
persistent a
choice = 'y';
while strcmpi(choice(1),'y')
    b=input('���������֣�');
    a=[b a];
    if length(a)<25
        disp(['���25�����ֵ�ƽ������' num2str(mean(a)) ])
    else
        disp(['���25�����ֵ�ƽ������' mean(a(1:25)) ])
    end
    choice = input('\n�Ƿ��������(Y)/��(N)','s');
end