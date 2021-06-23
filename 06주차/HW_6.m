% %%���丮��
% facotr_func(5)                      % 5!
% 
% function [fout]=facotr_func(n)
% % factorial ����ϴ� for ���� �Լ�
% % ex_3_5(n)���� �Է��Ͻÿ�. n�� n!
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
% %%����1
% clear; clf;
% 
% x(1)=1;y(1)=0; beta = pi/100000;                   % ���� �׸�
% for ii=1:200000
%     x(ii+1)= cos(beta)*x(ii)-sin(beta)*y(ii);
%     y(ii+1)= sin(beta)*x(ii)+cos(beta)*y(ii);
% end
% plot(x,y,'linewidth',1);axis image;
% hold on;
% 
% r=1; alpha=pi/3; theta = pi/3;                     % �ʱⰪ ���� 
% xp(1)=r*cos(alpha);yp(1)=r*sin(alpha);             % P��ǥ ����
% xp(2)= cos(theta)*xp(1)-sin(theta)*yp(1);          % P` ��ǥ ���� : P��ǥ�� pi/3 ��ŭ ȸ����ȯ
% yp(2)= sin(theta)*xp(1)+cos(theta)*yp(1);
% 
% plot(xp,yp, 'o','markersize',7);axis image;        % P��ǥ P`��ǥ ǥ��
% 
% %%����2
% function Hexas()
% iterations = 20;        % 20�� �ݺ�
% angleIncrement=pi/100;  % �ѹ� �ݺ��� �� ���� pi/100 ���� ȸ��
% lengthDecrement=1/50;   % �������� �ѹ��� ���̰� ���� ������ 1/50 �پ��
% 
% % �ʱ� ���������� �� ���� ũ�Ⱑ 1, ������ 0���� �ؼ� �ڵ带 �ۼ����ּ���.
% figure(1); clf
% drawHexas(1,0,angleIncrement,lengthDecrement,iterations)
% 
% end
% 
% function drawHexas(len,angle,angInc,lengthDecrement,iterations)
%     %   �������� �׸��� �Լ�
%     pt1=len*[cos(angle); sin(angle)];
%     %   ���������� �� �������� ��ǥ
%     rot=[cos(pi/3) -sin(pi/3); sin(pi/3) cos(pi/3)];
%     %   60�� ȸ�� ���
%     pt2=rot*pt1;
%     %   ù ��° �������� ������ �߽����� 60�� ȸ��
%     pt3=rot*pt2;
%     %   �� ��° �������� ������ �߽����� 60�� ȸ��
%     pt4=rot*pt3;
%     %   �� ��° �������� ������ �߽����� 60�� ȸ��
%     pt5=rot*pt4;
%     %   �� ��° �������� ������ �߽����� 60�� ȸ��
%     pt6=rot*pt5;
%     %   �ټ� ��° �������� ������ �߽����� 60�� ȸ��
%     plot([pt1(1),pt2(1),pt3(1),pt4(1),pt5(1),pt6(1),pt1(1)],[pt1(2),pt2(2),pt3(2),pt4(2),pt5(2),pt6(2),pt1(2)],'k');
%     axis image;
%     axis([-1.1 1.1 -1.1 1.1]); grid on; hold on; pause(0.01)
%     if iterations-1>0
%         %   ���࿡ �ݺ�Ƚ���� ���� �ִٸ�
%         drawHexas(len-len*lengthDecrement, angle+angInc, angInc,lengthDecrement,iterations-1);
%         %   ����Լ��� ȣ��, ���� ���̸� 1/50���̰�, ȸ������ ���� ������ �� ������ ���ϰ� �� ����,
%         %   ���̰���, �ݺ� Ƚ�� �ϳ� ����
%     end
% end
% 
%%RT_example1
clear;clf;hold on
% �޸� �� �׸� �ʱ�ȭ, �׸� ��Ƶα�
RT=inline('[cos(t) -sin(t);sin(t) cos(t)]','t');
% ȸ�� ��� ����
Box=[-1 1 1 -1 -1; -1 -1 1 1 -1];
% �� ���� ���̰� 4�� ���簫���� �� �������� x��ǥ�� y��ǥ ����
fill(Box(1,:),Box(2,:),'g');
% �ʷϻ����� ���簢�� �׸���
RTBox=RT(pi/4)*Box;
% �ʷϻ� ���簢���� 45���� ȸ��
fill(RTBox(1,:),RTBox(2,:),'b');
% ȸ���� ���簢���� �Ķ������� �׸���
% 
%%RT_example2
clear; clf; hold on
% �޸� �� �׸� �ʱ�ȭ, �׸� ��Ƶα�
RT=inline('[cos(t) -sin(t); sin(t) cos(t)]', 't');
% ȸ�� ��� ����
Box=[0 1 1 0 0; 0 0 1 1 0];
% ���簢���� �� �������� x��ǥ�� y��ǥ
fill(Box(1, :), Box(2, :), 'g');
% �ʷϻ����� ���簢�� �׸���
RTBox=RT(pi/6)*Box;
% �ʷϻ� ���簢���� 30���� ȸ��
fill(RTBox(1, :), RTBox(2, :), 'b');
% ȸ���� ���簢���� �Ķ������� �׸���
% 
% %%����3
% function FractalTree()      % FractalTree �׸��� �Լ�
% totalIter = 9;              % 9�� �ݺ���
% angle = pi/6;               % �ѹ� �ݺ��� �� pi/6��ŭ ȸ����
% len1 = 3*1.2^totalIter;     % ���� ����� ����
% w=totalIter;                % ���� ����� �β� ����
% figure(1); clf;
% plot([0 0], [-len1, 0], 'LineWidth', w, 'Color', [0, 0, 0])
% %���� ����� ���������� �׸���, [R, G, B] �� �� ����
% hold on
% drawBranches(pi/2, [0,0], totalIter-1, angle, totalIter);
% %����Լ�, ���ذ��� pi/2, �ʱ� ������, �ݺ�Ƚ��, ȸ������, �� �ݺ�Ƚ��
% function drawBranches(initAngle, pt, Iter, angle, totalIter)    %�������� �׸��� �Լ�
%     len=1.2^Iter;           % ���������� ����
%     x1=pt(1);               % �������� x��ǥ
%     y1=pt(2);               % �������� y��ǥ
%     ang1=initAngle+angle;   % �ʱⰢ������ �ð� �ݴ�������� ȸ������
%     ang2=initAngle-angle;   % �ʱⰢ������ �ð� �������� ȸ������
%     x2=len*cos(ang1)+x1;    % �ð� �ݴ� �������� ȸ���� �������� x��ǥ
%     y2=len*sin(ang1)+y1;    % �ð� �ݴ� �������� ȸ���� �������� y��ǥ
%     x3=len*cos(ang2)+x1;    % �ð� �������� ȸ���� ���������� x��ǥ
%     y3=len*sin(ang2)+y1;    % �ð� �������� ȸ���� ���������� y��ǥ
%     w=Iter;                 % ���������� �β� ����
%     c2=[1-Iter/totalIter 0 1-Iter/totalIter];
%     %���������� �� ����
%     p1=plot([x1, x2], [y1, y2], 'LineWidth', w, 'Color', c2);
%     p2=plot([x1, x3], [y1, y3], 'LineWidth', w, 'Color', c2);
%     %ȸ���� �������� �÷�
%     pause(0.01)
%     if Iter-1>0             % ���� �ݺ�Ƚ���� ���� �ִٸ�
%         drawBranches(ang1, [x2, y2], Iter-1, angle, totalIter);
%         % ����Լ� ȣ��, ���ذ����� �� ���ذ����� ȸ�������� ���� ��, ȸ���� ������ ��ǥ
%         % �ݺ�Ƚ�� �ϳ� ����, ȸ������, �� �ݺ�Ƚ��
%         drawBranches(ang2, [x3, y3], Iter-1, angle, totalIter);
%     end
% end
% axis image;axis on;grid on;
% end