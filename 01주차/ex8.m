%%8.1
help polar              % 극좌표 그래프
help loglog             % x, y 둘다 보기좋게 바꿔줌 1000=>10^3
help semilogx           % x를 보기 좋게 바꿔줌 1000=>10^3
help semilogy           % y를 보기 좋게 바꿔줌 1000=>10^3
help bar                % 막대 그래프

%point plot : {. + * o x}
%line plot : {- -- : -.}
plot(U,W,'+')                  % 선 대신 symbol(+)로 표현
plot(U,W,'+',U,W)              % 선과 symbol(+) 같이 표현

%%8.2 Labelling plots
U = 0:pi/20:2*pi;
W = sin(U);
plot(U,W)                       % produces basic plot
title('Sine Function')          % places title at top
xlabel('angle in radians')      % labels x-axis
ylabel('sine')                  % labels y-axis
grid                            % adds grid marking
gtext('text')                   % 그래프 클릭한 곳에 text 표시

%%8.3 Handle Graphics
help gcf                        % 현재 그래프의 핸들을 반환
help set                        % Set object properties
help get                        % Get object properties
help gca                        % Get handle to current axis. 
help axes                       % Create axes graphics object
help axis                       % Control axis scaling and appearance

%%8.4 Hardcopy plots
%print                          % 그래프 출력
print myplot -dps               % myplot 이름으로 작업공간에 ps파일 저장
print myplot -dpdf              % myplot 이름으로 작업공간에 pdf파일 저장
print mycplot -dpsc             % 칼라 PostScript file(ps) 저장
print mycplot -deps             % 요약된 PostScript file(ps) 저장

%%8.5 Three-dimensional plotting

%8.5.1 Three-dimensional grids
U = 0:pi/20:2*pi;
X = ones(size(U'))*U;
Y = U'*ones(size(U));
W2 = sin(X) + sin(Y);
mesh(W2)                          % 메시 곡면 플롯 가장자리가 단색, 면 색은 없는 3차원 곡면인 메시 플롯을 만듭니다
title('Mesh plot: sin(X) + sin(Y)')
surf(W2)                            % 곡면 플롯 가장자리와 면이 단색으로 표시되는 3차원 곡면인 3차원 곡면 플롯을 생성
title('Surface plot: sin(X) + sin(Y)')
fill3(X, Y, W2, U)                  % 채워진 3차원 다각형(Filled 3-D Polygon)을 채움
title('3-D polygon plot: sin(X) + sin(Y)')

%8.5.2 Contour plots
contour(W2)                         % 행렬의 등고선(Contour) 플롯
title('Contour plot: sin(X) + sin(Y)')

%%8.6 Multiple plots

%8.6.1 Multiple functions in a plot
U = 0:pi/20:2*pi;
W = sin(U);
Z = cos(U);
plot(U,W,U,Z)                       % sine그래프와 cos그래프를 함께 표현

hold on                             % 전의 그래프가 계속 유지
hold off                            % 전의 그래프가 사라짐

%8.6.2 Multiple plots in a window
subplot(3,1,1), mesh(W2)            % 바둑판식 배열 위치로 좌표축 생성
subplot(3,1,2), contour(W2)         % subplot(a, b, n) : 가로(a):세로(b) 비율로 n번째 위치
subplot(3,1,3), surf(W2) 

[Sxx, Syy, Szz] = sphere(16);
subplot(2,2,1), mesh(Sxx, Syy, Szz)
title('Mesh plot: sphere(16)')
subplot(2,2,2), surfl(Sxx, Syy, Szz)
title('Shaded Surface plot: sphere(16)')
[Cxx, Cyy, Czz] = cylinder(2+Syy(8,:));
subplot(2,2,3), mesh(Cxx, Cyy, Czz)
title('Mesh plot: cylinder(2+Syy(8,:))')
subplot(2,2,4), surf(Cxx, Cyy, Czz)
title('Surface plot: cylinder(2+Syy(8,:))')

%8.6.3 Multiple figure windows
help figure                     % Figure 창 생성

%%8.7
help image
help colormap
help ColorSpec