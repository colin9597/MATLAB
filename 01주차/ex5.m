%%5
help plot
ones(3,5)               % ones(r,c) : rxc matrix with every element equal to 1
eye(3)                  % eye(r) : rxr identity matrix

%%5.1
x = [0, 0.7854, 1.5708, 2.3562, 3.1416]
%x=0:0.00001:3.1416
y=sin(x)
p = polyfit(x,y,2)      % y의 데이터에 대한 최적의 피팅(최소제곱 관점에서)인 n차 다항식 p(x)의 계수를 반환
help polyfit
pvals = polyval(p,x)    % x의 각 점에서 다항식 p를 계산
help polyval
plot(x, pvals)

%%5.2
A = [2 1 0; 1 2 1; 0 1 2]
eig(A)
[X,D] = eig(A)