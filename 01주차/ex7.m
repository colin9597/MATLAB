%%7.1
ls                          % ��Ʈ�������� ���н� ��ɾ� ����
%vi myprog.f
%f77 -O -o myprog myprog.f
%myprog > myoutput

%%7.2
diary mylogfile             % diary mylogfile ~ off
diary off                   % ���� ����(~)�� �۾������� �ؽ�Ʈ ���Ϸ� ����

%%7.3
M = [1:1:3; 10:2:14; 31:3:37; 5:5:15];
S = [1:1:3; 10:2:14; 31:3:37; 5:5:15];
save mydatafile M S                % �۾� ������ ���� M�� S�� ����
save mydatafile M -ascii           % -ascii�� ����� �ؽ�Ʈ���Ϸ� ����
