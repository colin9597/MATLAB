%%����1
clear;                  % �޸� �ʱ�ȭ
number=18941616141163;  % �Ǻ��Ǿ�� �� �Է� ����

if number==2
    prime_checker=1;
    % �Ҽ����� �ռ������� Ȯ���� �� �ִ� ����
    % 1 : �Ҽ�
    % 0 : �ռ���
else
    if mod(number,2)==0
        prime_checker=0;
        % number�� 2�� ����̸� prime_checker�� �ռ����� ����
    else
        prime_checker=1;
        % number�� �Ҽ���� �����ϰ� �Ʒ� ��ɾ�� �ռ��� �Ǹ�Ǹ� �ռ��� ����
        for i=3:2:sqrt(number)
            % ���� i�� 3���� 2�� �����Ͽ� sqrt(n)���� �ݺ� ����
            if mod(number,i)==0
                % ���� number�� i�� ������ �������� 0�̸� ���� ��ɾ ���� �ռ����� ����
                prime_checker=0;
                break;
            end
        end
    end
end

if prime_checker==0
    % ���� prime_checker�� 0�̶�� �Ʒ� ��ɾ� ����
    fprintf("%d is a composite number \n", number);
else
    % ���� prime)checker�� 1�̶�� �Ʒ� ��ɾ� ����
    fprintf("%d is a prime number \n",number);
end