%%6.1
plotcos                            % script

%%6.2
%가 주석처리
help plotcos                        % script 설명

%%6.3
S=[1 ...                            % 다음 줄에서 작업시 ...하고 다음 줄 작업
    2; 3 .... 
    4];

%%6.4
mycubic(1,2)                        % scalar값은 그대로 출력 가능
[c,s] = trigfunction(0);             % array는 variable에 저장하고 출력

%%6.5 
%6.5.1 for statement
% 1)
V=1:10;
S1=0;
for i=1:10                          % 반복문
    S1 = S1 + V(i); 
end

S2 = sum(V);                         % 반복문보다 더 효과적(시간적으로)

% 2)
total = 0;                           % 반복문 안에 또 반복문이 들어올 수 있다.
for i = 1:2:10  
    SS(i) = 0;
    for j = 1:3:16 
        SS(i) = SS(i) + j;
    end
    total = total + SS(i); 
end

%6.5.2 while statement
n=200;
while n > 100                       % 조건이 참일 때, 무한반복
    n=n-50;
end

%6.5.3 if statement
A=[1 2 3; 4 5 -6; 7 -8 9];
for i = 1 : 3
    for j = 1 : 3
        if abs(A(i,j)) <  4         % if 조건문
            A(i,j) = 0; 
        else A(i,j) = sign(A(i,j));  % sign함수는 부호를 반환
        end
    end
end

%6.5.4 Further help
help if
help break


%% 함수생성은 뒷줄에!

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