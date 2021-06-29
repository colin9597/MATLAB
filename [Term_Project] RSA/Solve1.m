function c=Solve1(A, private_key) %암호 행렬과 개인키를 받아 해독문을 반환하는 함수
    c=A;
    for n=1:length(A)
        for i=1:private_key(1)-1
            c(n)=mod(c(n)*A(n),private_key(2));
        end
    end
end