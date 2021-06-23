function drawTriangles(len,angle,angInc,lengthDecrement,iterations) 
                                                             % �ﰢ���� �׸��� �Լ�
pt1=len*[cos(angle); sin(angle)];                            % ���ﰢ���� �� �������� ��ǥ
rot=[cos(2*pi/3) -sin(2*pi/3); sin(2*pi/3) cos(2*pi/3)];     % 120�� ȸ�� ��� ����
pt2=rot*pt1;                                                 % ù ��° �������� ������ �߽����� 120�� ȸ��
pt3=rot*pt2;                                                 % �� ��° �������� ������ �߽����� 120�� ȸ��

plot([pt1(1),pt2(1),pt3(1),pt1(1)],[pt1(2),pt2(2),pt3(2),pt1(2)],'k','linewidth',1);  % �ﰢ���� �÷���
axis image;
axis([-0.9 1.1 -1 1]); grid on; hold on; pause(0.01)

if iterations-1>0
    % ���࿡ �ݺ�Ƚ���� �����ִٸ�
    drawTriangles(len-len*lengthDecrement, angle+angInc, angInc,lengthDecrement,iterations-1);
    % ����Լ��� ȣ��, ���� ���̸� 1/100���̰�, ȸ������ ���� ������ �� ������ ���ϰ� �� ����, ���̰���, �ݺ�Ƚ�� �ϳ� ����
end

end