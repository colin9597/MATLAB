function Triangles()      % ������ �׸��� �Լ�
                            
iterations=100;           % 100�� �ݺ���
angleIncrement=pi/100;    % �ѹ� �ݺ��� �� pi/100���� ȸ����
lengthDecrement=1/100;    % �ﰢ���� �� ���� ���̰� ���� ������ 1/100�پ��

figure(1); clf
drawTriangles(1,0,angleIncrement,lengthDecrement,iterations)
% ����Լ�, �ʱ� ���ﰢ���� �� ���� ũ�Ⱑ 1, ������ 0, �� ����, ��������, �ݺ�Ƚ��

end