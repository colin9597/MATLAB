clear; clc; %기존 메모리 삭제
private_key=[317 851]; %개인키

fid = fopen("test_code.txt", 'r'); %암호문 읽기
tic;
while ~feof(fid)
    pw=str2num(fgetl(fid)); %암호문을 숫자 벡터로 전환
    pw=Solve1(pw, private_key); %각 암호에 대한 해독
    fprintf('%s\n',char(pw)); %해독문 출력
end
fprintf('%s', "수학 이론 미적용 시 ");
toc; %수학 이론 미적용 시 해독시간 측정
fclose(fid);

fid = fopen("test_code.txt", 'r'); %암호문 읽기
Factors=factor(private_key(2)); %N을 두 개의 소수 p, q로 나누어 이를 벡터로 저장
                                %일반적인 rsa의 경우 N이 크기때문에 연산시간 증가 등의 문제가 발생
tic;                                
inver=Inverse(Factors); %Z_p에서 q의 역원과 Z_q에서 p의 역원을 각각 구함
while ~feof(fid)
    pw=str2num(fgetl(fid)); %암호문을 숫자 벡터로 전환
    pw=Solve2(pw, private_key, Factors, inver); %각 암호에 대한 해독
    fprintf('%s\n',char(pw)); %해독문 출력
end
fprintf('%s', "수학 이론 적용 시 ");
toc; %수학 이론 적용 시 해독시간 측정
fclose(fid);