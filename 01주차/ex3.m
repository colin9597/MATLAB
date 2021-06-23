%%3.1
A=[1 2; 3 5]        % matrix 생성
B=[4 5; 6 7]
C=A+B               % matrix addition
D=A*B               % matrix multiplication
E=A'                % matrix transpose
F=A*A'
Y=[1; -1]           % 2X1 matrix
X=A\Y               % A\Y <=> A^-1XY

%%3.2
U=0:pi/20:2*pi;      % sin 그래프
W=sin(U);
plot(U, W)