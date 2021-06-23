%%8.1
help polar              % ����ǥ �׷���
help loglog             % x, y �Ѵ� �������� �ٲ��� 1000=>10^3
help semilogx           % x�� ���� ���� �ٲ��� 1000=>10^3
help semilogy           % y�� ���� ���� �ٲ��� 1000=>10^3
help bar                % ���� �׷���

%point plot : {. + * o x}
%line plot : {- -- : -.}
plot(U,W,'+')                  % �� ��� symbol(+)�� ǥ��
plot(U,W,'+',U,W)              % ���� symbol(+) ���� ǥ��

%%8.2 Labelling plots
U = 0:pi/20:2*pi;
W = sin(U);
plot(U,W)                       % produces basic plot
title('Sine Function')          % places title at top
xlabel('angle in radians')      % labels x-axis
ylabel('sine')                  % labels y-axis
grid                            % adds grid marking
gtext('text')                   % �׷��� Ŭ���� ���� text ǥ��

%%8.3 Handle Graphics
help gcf                        % ���� �׷����� �ڵ��� ��ȯ
help set                        % Set object properties
help get                        % Get object properties
help gca                        % Get handle to current axis. 
help axes                       % Create axes graphics object
help axis                       % Control axis scaling and appearance

%%8.4 Hardcopy plots
%print                          % �׷��� ���
print myplot -dps               % myplot �̸����� �۾������� ps���� ����
print myplot -dpdf              % myplot �̸����� �۾������� pdf���� ����
print mycplot -dpsc             % Į�� PostScript file(ps) ����
print mycplot -deps             % ���� PostScript file(ps) ����

%%8.5 Three-dimensional plotting

%8.5.1 Three-dimensional grids
U = 0:pi/20:2*pi;
X = ones(size(U'))*U;
Y = U'*ones(size(U));
W2 = sin(X) + sin(Y);
mesh(W2)                          % �޽� ��� �÷� �����ڸ��� �ܻ�, �� ���� ���� 3���� ����� �޽� �÷��� ����ϴ�
title('Mesh plot: sin(X) + sin(Y)')
surf(W2)                            % ��� �÷� �����ڸ��� ���� �ܻ����� ǥ�õǴ� 3���� ����� 3���� ��� �÷��� ����
title('Surface plot: sin(X) + sin(Y)')
fill3(X, Y, W2, U)                  % ä���� 3���� �ٰ���(Filled 3-D Polygon)�� ä��
title('3-D polygon plot: sin(X) + sin(Y)')

%8.5.2 Contour plots
contour(W2)                         % ����� ���(Contour) �÷�
title('Contour plot: sin(X) + sin(Y)')

%%8.6 Multiple plots

%8.6.1 Multiple functions in a plot
U = 0:pi/20:2*pi;
W = sin(U);
Z = cos(U);
plot(U,W,U,Z)                       % sine�׷����� cos�׷����� �Բ� ǥ��

hold on                             % ���� �׷����� ��� ����
hold off                            % ���� �׷����� �����

%8.6.2 Multiple plots in a window
subplot(3,1,1), mesh(W2)            % �ٵ��ǽ� �迭 ��ġ�� ��ǥ�� ����
subplot(3,1,2), contour(W2)         % subplot(a, b, n) : ����(a):����(b) ������ n��° ��ġ
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
help figure                     % Figure â ����

%%8.7
help image
help colormap
help ColorSpec