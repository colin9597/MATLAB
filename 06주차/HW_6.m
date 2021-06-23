% %%팩토리얼
% facotr_func(5)                      % 5!
% 
% function [fout]=facotr_func(n)
% % factorial 계산하는 for 구문 함수
% % ex_3_5(n)으로 입력하시오. n은 n!
% 
% x=1;
% 
% for i=1:n
%     x=x*i;
% end
% 
% fout = x;
% end
% 
% 
% %%숙제1
% clear; clf;
% 
% x(1)=1;y(1)=0; beta = pi/100000;                   % 원을 그림
% for ii=1:200000
%     x(ii+1)= cos(beta)*x(ii)-sin(beta)*y(ii);
%     y(ii+1)= sin(beta)*x(ii)+cos(beta)*y(ii);
% end
% plot(x,y,'linewidth',1);axis image;
% hold on;
% 
% r=1; alpha=pi/3; theta = pi/3;                     % 초기값 설정 
% xp(1)=r*cos(alpha);yp(1)=r*sin(alpha);             % P좌표 설정
% xp(2)= cos(theta)*xp(1)-sin(theta)*yp(1);          % P` 좌표 설정 : P좌표를 pi/3 만큼 회전변환
% yp(2)= sin(theta)*xp(1)+cos(theta)*yp(1);
% 
% plot(xp,yp, 'o','markersize',7);axis image;        % P좌표 P`좌표 표시
% 
% %%숙제2
% function Hexas()
% iterations = 20;        % 20번 반복
% angleIncrement=pi/100;  % 한번 반복할 때 마다 pi/100 라디안 회전
% lengthDecrement=1/50;   % 육각형의 한번의 길이가 이전 길이의 1/50 줄어듦
% 
% % 초기 정육각형의 한 변의 크기가 1, 각도가 0으로 해서 코드를 작성해주세요.
% figure(1); clf
% drawHexas(1,0,angleIncrement,lengthDecrement,iterations)
% 
% end
% 
% function drawHexas(len,angle,angInc,lengthDecrement,iterations)
%     %   육각형을 그리는 함수
%     pt1=len*[cos(angle); sin(angle)];
%     %   정육각형의 한 꼭짓점의 좌표
%     rot=[cos(pi/3) -sin(pi/3); sin(pi/3) cos(pi/3)];
%     %   60도 회전 행렬
%     pt2=rot*pt1;
%     %   첫 번째 꼭짓점을 원점을 중심으로 60도 회전
%     pt3=rot*pt2;
%     %   두 번째 꼭짓점을 원점을 중심으로 60도 회전
%     pt4=rot*pt3;
%     %   세 번째 꼭짓점을 원점을 중심으로 60도 회전
%     pt5=rot*pt4;
%     %   네 번째 꼭짓점을 원점을 중심으로 60도 회전
%     pt6=rot*pt5;
%     %   다섯 번째 꼭짓점을 원점을 중심으로 60도 회전
%     plot([pt1(1),pt2(1),pt3(1),pt4(1),pt5(1),pt6(1),pt1(1)],[pt1(2),pt2(2),pt3(2),pt4(2),pt5(2),pt6(2),pt1(2)],'k');
%     axis image;
%     axis([-1.1 1.1 -1.1 1.1]); grid on; hold on; pause(0.01)
%     if iterations-1>0
%         %   만약에 반복횟수가 남아 있다면
%         drawHexas(len-len*lengthDecrement, angle+angInc, angInc,lengthDecrement,iterations-1);
%         %   재귀함수를 호출, 현재 길이를 1/50줄이고, 회전각은 현재 각도에 각 증분을 더하고 각 증분,
%         %   길이감소, 반복 횟수 하나 줄임
%     end
% end
% 
%%RT_example1
clear;clf;hold on
% 메모리 및 그림 초기화, 그림 잡아두기
RT=inline('[cos(t) -sin(t);sin(t) cos(t)]','t');
% 회전 행렬 생성
Box=[-1 1 1 -1 -1; -1 -1 1 1 -1];
% 한 변의 길이가 4인 정사갓형의 각 꼭짓점의 x좌표와 y좌표 정의
fill(Box(1,:),Box(2,:),'g');
% 초록색으로 정사각형 그리기
RTBox=RT(pi/4)*Box;
% 초록색 정사각형을 45도로 회전
fill(RTBox(1,:),RTBox(2,:),'b');
% 회전한 정사각형을 파란색으로 그리기
% 
%%RT_example2
clear; clf; hold on
% 메모리 및 그림 초기화, 그림 잡아두기
RT=inline('[cos(t) -sin(t); sin(t) cos(t)]', 't');
% 회전 행렬 생성
Box=[0 1 1 0 0; 0 0 1 1 0];
% 정사각형의 각 꼭짓점의 x좌표와 y좌표
fill(Box(1, :), Box(2, :), 'g');
% 초록색으로 정사각형 그리기
RTBox=RT(pi/6)*Box;
% 초록색 정사각형을 30도로 회전
fill(RTBox(1, :), RTBox(2, :), 'b');
% 회전한 정사각형을 파란색으로 그리기
% 
% %%숙제3
% function FractalTree()      % FractalTree 그리는 함수
% totalIter = 9;              % 9번 반복함
% angle = pi/6;               % 한번 반복할 때 pi/6만큼 회전함
% len1 = 3*1.2^totalIter;     % 나무 기둥의 길이
% w=totalIter;                % 나무 기둥의 두께 설정
% figure(1); clf;
% plot([0 0], [-len1, 0], 'LineWidth', w, 'Color', [0, 0, 0])
% %나무 기둥을 검정색으로 그리기, [R, G, B] 색 농도 지정
% hold on
% drawBranches(pi/2, [0,0], totalIter-1, angle, totalIter);
% %재귀함수, 기준각도 pi/2, 초기 기준점, 반복횟수, 회전각도, 총 반복횟수
% function drawBranches(initAngle, pt, Iter, angle, totalIter)    %나뭇가지 그리는 함수
%     len=1.2^Iter;           % 나뭇가지의 길이
%     x1=pt(1);               % 기준점의 x좌표
%     y1=pt(2);               % 기준점의 y좌표
%     ang1=initAngle+angle;   % 초기각도에서 시계 반대방향으로 회전각도
%     ang2=initAngle-angle;   % 초기각도에서 시계 방향으로 회전각도
%     x2=len*cos(ang1)+x1;    % 시계 반대 방향으로 회전한 나뭇가지 x좌표
%     y2=len*sin(ang1)+y1;    % 시계 반대 방향으로 회전한 나뭇가지 y좌표
%     x3=len*cos(ang2)+x1;    % 시계 방향으로 회전한 나뭇가지의 x좌표
%     y3=len*sin(ang2)+y1;    % 시계 방향으로 회전한 나뭇가지의 y좌표
%     w=Iter;                 % 나뭇가지의 두께 설정
%     c2=[1-Iter/totalIter 0 1-Iter/totalIter];
%     %나뭇가지의 색 설정
%     p1=plot([x1, x2], [y1, y2], 'LineWidth', w, 'Color', c2);
%     p2=plot([x1, x3], [y1, y3], 'LineWidth', w, 'Color', c2);
%     %회전한 나뭇가지 플롯
%     pause(0.01)
%     if Iter-1>0             % 만약 반복횟수가 남아 있다면
%         drawBranches(ang1, [x2, y2], Iter-1, angle, totalIter);
%         % 재귀함수 호출, 기준각도는 전 기준각도의 회전각도를 더한 값, 회전한 기준점 좌표
%         % 반복횟수 하나 줄임, 회전각도, 총 반복횟수
%         drawBranches(ang2, [x3, y3], Iter-1, angle, totalIter);
%     end
% end
% axis image;axis on;grid on;
% end