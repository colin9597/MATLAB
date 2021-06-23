function drawTriangles(len,angle,angInc,lengthDecrement,iterations) 
                                                             % 삼각형을 그리는 함수
pt1=len*[cos(angle); sin(angle)];                            % 정삼각형의 한 꼭짓점의 좌표
rot=[cos(2*pi/3) -sin(2*pi/3); sin(2*pi/3) cos(2*pi/3)];     % 120도 회전 행렬 정의
pt2=rot*pt1;                                                 % 첫 번째 꼭짓점을 원점을 중심으로 120도 회전
pt3=rot*pt2;                                                 % 두 번째 꼭짓점을 원점을 중심으로 120도 회전

plot([pt1(1),pt2(1),pt3(1),pt1(1)],[pt1(2),pt2(2),pt3(2),pt1(2)],'k','linewidth',1);  % 삼각형을 플롯함
axis image;
axis([-0.9 1.1 -1 1]); grid on; hold on; pause(0.01)

if iterations-1>0
    % 만약에 반복횟수가 남아있다면
    drawTriangles(len-len*lengthDecrement, angle+angInc, angInc,lengthDecrement,iterations-1);
    % 재귀함수를 호출, 현재 길이를 1/100줄이고, 회전각은 현재 각도에 각 증분을 더하고 각 증분, 길이감소, 반복횟수 하나 줄임
end

end