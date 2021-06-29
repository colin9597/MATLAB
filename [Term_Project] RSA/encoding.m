fileID = fopen('test_code.txt', 'w'); %암호문을 저장할 파일 생성
A=double('Our dream is to get A+ grades in mathematical algorithms'); %암호화 할 문장
public_key = [5 851]; %851=23*37

for i=1:length(A)
    x = A(i);
    for j=1:public_key(1)-1
        A(i) = mod(A(i)*x, public_key(2)); %a^e (mod N) 적용
    end
end

fwrite(fileID, num2str(A), 'char'); %숫자벡터를 char형식으로 저장
fclose(fileID); %파일 종료