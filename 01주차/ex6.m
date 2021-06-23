%%6.1
plotcos                            % script

%%6.2
%�� �ּ�ó��
help plotcos                        % script ����

%%6.3
S=[1 ...                            % ���� �ٿ��� �۾��� ...�ϰ� ���� �� �۾�
    2; 3 .... 
    4];

%%6.4
mycubic(1,2)                        % scalar���� �״�� ��� ����
[c,s] = trigfunction(0);             % array�� variable�� �����ϰ� ���

%%6.5 
%6.5.1 for statement
% 1)
V=1:10;
S1=0;
for i=1:10                          % �ݺ���
    S1 = S1 + V(i); 
end

S2 = sum(V);                         % �ݺ������� �� ȿ����(�ð�������)

% 2)
total = 0;                           % �ݺ��� �ȿ� �� �ݺ����� ���� �� �ִ�.
for i = 1:2:10  
    SS(i) = 0;
    for j = 1:3:16 
        SS(i) = SS(i) + j;
    end
    total = total + SS(i); 
end

%6.5.2 while statement
n=200;
while n > 100                       % ������ ���� ��, ���ѹݺ�
    n=n-50;
end

%6.5.3 if statement
A=[1 2 3; 4 5 -6; 7 -8 9];
for i = 1 : 3
    for j = 1 : 3
        if abs(A(i,j)) <  4         % if ���ǹ�
            A(i,j) = 0; 
        else A(i,j) = sign(A(i,j));  % sign�Լ��� ��ȣ�� ��ȯ
        end
    end
end

%6.5.4 Further help
help if
help break


%% �Լ������� ���ٿ�!

% This is a sample MATLAB function 
% that evaluates a cubic polynomial 
% at the larger of the two arguments x1 and x2.
function y = mycubic(x1,x2) 
x = max(x1,x2); 
y = x^3 + 2*x^2 + 1;    % This statement determines 
end                     % the function value

% This is a sample MATLAB function 
% to evaluate the sine and cosine 
% of the input angle.
function [costheta,sintheta] = trigfunction(theta) 
costheta = cos(theta);
sintheta = sin(theta);
end