function Squares()
%   ������ �׸��� �Լ�
iterations=50;
%   50�� �ݺ���
angleIncrement=pi/100;
%   �ѹ� �ݺ��� �� pi/100���� ȸ����
lengthDecrement=1/100;
%   �簢���� �� ���� ���̰� ���� ������ 1/100�پ��
figure(1); clf
drawSquares(1,0,angleIncrement,lengthDecrement,iterations)
%   ����Լ�, �ʱ� ���簢���� �� ���� ũ�Ⱑ 1, ������ 0, �� ����, ��������, �ݺ�Ƚ��

end