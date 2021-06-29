function inver=Inverse(Factors)
    s(1) = 1; s(2) = 0;
    t(1) = 0; t(2) = 1;
    r(1) = Factors(1); r(2) = Factors(2);
    q(1) = 0; q(2) = fix(r(1)/r(2));
    ind = 3;
    while true
        r(ind) = mod(r(ind-2), r(ind-1));
        if r(ind) == 0 %r(ind-1)이 gcd(a,b)를 만족하는 경우 반복작업을 중지한다.
            break;
        end
        q(ind) = fix(r(ind-1)/r(ind));
        s(ind) = s(ind-2) - s(ind-1)*q(ind-1); %확장된 유클리드 호제법을 반복 적용하여 s를 구한다
        t(ind) = t(ind-2) - t(ind-1)*q(ind-1); %확장된 유클리드 호제법을 반복 적용하여 t를 구한다
        ind = ind + 1;
    end
    inver = [s(ind-1) t(ind-1)]; %s는 p에 대한 Z_q에서의 역원, t는 q에 대한 Z_p에서의 역원이 된다.
end