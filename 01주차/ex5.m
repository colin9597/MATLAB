%%5
help plot
ones(3,5)               % ones(r,c) : rxc matrix with every element equal to 1
eye(3)                  % eye(r) : rxr identity matrix

%%5.1
x = [0, 0.7854, 1.5708, 2.3562, 3.1416]
%x=0:0.00001:3.1416
y=sin(x)
p = polyfit(x,y,2)      % y�� �����Ϳ� ���� ������ ����(�ּ����� ��������)�� n�� ���׽� p(x)�� ����� ��ȯ
help polyfit
pvals = polyval(p,x)    % x�� �� ������ ���׽� p�� ���
help polyval
plot(x, pvals)

%%5.2
A = [2 1 0; 1 2 1; 0 1 2]
eig(A)
[X,D] = eig(A)