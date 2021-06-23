%%숙제1
clear;                  % 메모리 초기화
number=18941616141163;  % 판별되어야 할 입력 숫자

if number==2
    prime_checker=1;
    % 소수인지 합성수인지 확인할 수 있는 변수
    % 1 : 소수
    % 0 : 합성수
else
    if mod(number,2)==0
        prime_checker=0;
        % number가 2의 배수이면 prime_checker를 합성수로 세팅
    else
        prime_checker=1;
        % number가 소수라고 가정하고 아래 명령어에서 합성수 판명되면 합성수 셋팅
        for i=3:2:sqrt(number)
            % 제수 i를 3부터 2씩 증가하여 sqrt(n)까지 반복 수행
            if mod(number,i)==0
                % 만약 number를 i로 나누어 나머지가 0이면 다음 명령어를 통해 합성수로 셋팅
                prime_checker=0;
                break;
            end
        end
    end
end

if prime_checker==0
    % 만약 prime_checker가 0이라면 아래 명령어 수행
    fprintf("%d is a composite number \n", number);
else
    % 만약 prime)checker가 1이라면 아래 명령어 수행
    fprintf("%d is a prime number \n",number);
end