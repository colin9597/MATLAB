function Triangles()      % 도형을 그리는 함수
                            
iterations=100;           % 100번 반복함
angleIncrement=pi/100;    % 한번 반복할 때 pi/100라디안 회전함
lengthDecrement=1/100;    % 삼각형의 한 변의 길이가 이전 길이의 1/100줄어듦

figure(1); clf
drawTriangles(1,0,angleIncrement,lengthDecrement,iterations)
% 재귀함수, 초기 정삼각형의 한 변의 크기가 1, 각도가 0, 각 증분, 길이증분, 반복횟수

end