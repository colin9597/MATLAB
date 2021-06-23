    function drawSquares(len,angle,angInc,lengthDecrement,iterations)
        %   사각형을 그리는 함수
        pt1=len*[cos(angle); sin(angle)];
        %   정사각형의 한 꼭짓점의 좌표
        rot=[cos(pi/2) -sin(pi/2); sin(pi/2) cos(pi/2)];
        %   90도 회전 행렬
        pt2=rot*pt1;
        %   첫 번째 꼭짓점을 원점을 중심으로 90도 회전
        pt3=rot*pt2;
        %   두 번째 꼭짓점을 원점을 중심으로 90도 회전
        pt4=rot*pt3;
        %   세 번째 꼭짓점을 원점을 중심으로 90도 회전
        plot([pt1(1),pt2(1),pt3(1),pt4(1),pt1(1)],[pt1(2),pt2(2),pt3(2),pt4(2),pt1(2)],'B');
        %   사각형을 플롯함
        axis image;
        axis([-1.1 1.1 -1.1 1.1]); grid on
        hold on
        pause(0.01)
        if iterations-1>0
            %   만약에 반복횟수가 남아 있다면
            drawSquares(len-len*lengthDecrement, angle+angInc, angInc,lengthDecrement,iterations-1);
            %   재귀함수를 호출, 현재 길이를 1/100줄이고, 회전각은 현재 각도에 각 증분을 더하고 각 증분,
            %   길이감소, 반복 횟수 하나 줄임
        end
    end