%%7.1
ls                          % 매트랩에서도 유닉스 명령어 가능
%vi myprog.f
%f77 -O -o myprog myprog.f
%myprog > myoutput

%%7.2
diary mylogfile             % diary mylogfile ~ off
diary off                   % 사이 내용(~)을 작업공간에 텍스트 파일로 저장

%%7.3
M = [1:1:3; 10:2:14; 31:3:37; 5:5:15];
S = [1:1:3; 10:2:14; 31:3:37; 5:5:15];
save mydatafile M S                % 작업 공간의 변수 M과 S를 저장
save mydatafile M -ascii           % -ascii로 실행시 텍스트파일로 저장
