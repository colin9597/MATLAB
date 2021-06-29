function c=Solve2(A, private_key, Factors, inver) %암호 행렬과 개인키를 받아 해독문을 반환하는 함수
    for n=1:length(A)
        m=[mod(A(n),Factors(1)) mod(A(n),Factors(2))]; %중국인의 나머지 정리를 사용하기 위해 p,q에 대한 연립합동식을 계산
        x=m; %큰 수의 경우 근삿값으로 계산하여 오차가 발생하는 오류를 잡기 위해 반복작업의 결과를 저장할 변수 생성
             %(ex) 183^605 (mod 19)의 계산을 12^11 (mod 19)로 수의 크기를 줄여도 여전히 값이 크다.
             %(cf) 위의 과정은 페르마의 소정리를 이용하여 수를 줄인 경우이다.
             %하지만 이 과정을 12 (mod 19)를 구하여 이를 11번 반복하는 형식으로 값의 크기를 줄여 근삿값에 의해
             %오류가 발생하는 것을 방지할 수 있다.
        for i=1:2
            for j=1:(mod(private_key(1), Factors(i)-1)-1)
                x(i)=mod(x(i)*m(i), Factors(i)); %위의 설명과 같이 반복작업 실행
            end
        end
        c(n)=mod(x(1)*Factors(2)*inver(2)+x(2)*Factors(1)*inver(1), private_key(2)); %구한 역원을 통해 유일해를 유추
    end
end