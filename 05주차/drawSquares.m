    function drawSquares(len,angle,angInc,lengthDecrement,iterations)
        %   �簢���� �׸��� �Լ�
        pt1=len*[cos(angle); sin(angle)];
        %   ���簢���� �� �������� ��ǥ
        rot=[cos(pi/2) -sin(pi/2); sin(pi/2) cos(pi/2)];
        %   90�� ȸ�� ���
        pt2=rot*pt1;
        %   ù ��° �������� ������ �߽����� 90�� ȸ��
        pt3=rot*pt2;
        %   �� ��° �������� ������ �߽����� 90�� ȸ��
        pt4=rot*pt3;
        %   �� ��° �������� ������ �߽����� 90�� ȸ��
        plot([pt1(1),pt2(1),pt3(1),pt4(1),pt1(1)],[pt1(2),pt2(2),pt3(2),pt4(2),pt1(2)],'B');
        %   �簢���� �÷���
        axis image;
        axis([-1.1 1.1 -1.1 1.1]); grid on
        hold on
        pause(0.01)
        if iterations-1>0
            %   ���࿡ �ݺ�Ƚ���� ���� �ִٸ�
            drawSquares(len-len*lengthDecrement, angle+angInc, angInc,lengthDecrement,iterations-1);
            %   ����Լ��� ȣ��, ���� ���̸� 1/100���̰�, ȸ������ ���� ������ �� ������ ���ϰ� �� ����,
            %   ���̰���, �ݺ� Ƚ�� �ϳ� ����
        end
    end