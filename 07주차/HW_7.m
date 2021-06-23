function M = Pythagor_tree(m,n,Colormap)
%% Check inputs
narg = nargin;
if narg <= 2
    % Colormap = 'jet';
    Colormap = 'summer';
    if narg <= 1
        n = 8; % Recursion level    
        if nargin == 0
            m = 0.8;
        end
    end
end
if m <= 0
   error([mfilename ':e0'],'Length of m has to be greater than zero');
end
if rem(n,1)~=0
   error([mfilename ':e0'],'The number of level has to be integer');
end
%% Compute constants
d      = sqrt(1+m^2);                  % 
c1     = 1/d;                          % Normalized length 1
c2     = m/d;                          % Normalized length 2
T      = [0 1/(1+m^2);1 1+m/(1+m^2)];  % Translation pattern  
alpha1 = atan2(m,1);                   % Defines the first rotation angle
alpha2 = alpha1-pi/2;                  % Defines the second rotation angle
pi2    = 2*pi;                         % Defines pi2
nEle   = 2^(n+1)-1;                    % Number of elements (square)
M      = zeros(nEle,5);                % Matrice containing the tree
M(1,:) = [0 -1 0 1 1];                 % Initialization of the tree


%% Compute the level of each square contained in the resulting matrix
Offset = 0;
for i = 0:n
    tmp = 2^i;
    M(Offset+(1:tmp),5) = i;
    Offset = Offset + tmp;
end
%% Compute the position and size of each square wrt its parent
for i = 2:2:(nEle-1)
    j          = i/2;
    mT         = M(j,4) * mat_rot(M(j,3)) * T;
    Tx         = mT(1,:) + M(j,1);
    Ty         = mT(2,:) + M(j,2);    
    theta1     = rem(M(j,3)+alpha1,pi2);
    theta2     = rem(M(j,3)+alpha2,pi2);
    M(i  ,1:4) = [Tx(1) Ty(1) theta1 M(j,4)*c1];
    M(i+1,1:4) = [Tx(2) Ty(2) theta2 M(j,4)*c2];
end


%% Display the tree
Pythagor_tree_plot(M,n);
end

function M = mat_rot(x)
c = cos(x);
s = sin(x);
M=[c -s; s c];
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function H = Pythagor_tree_plot(D,ColorM)
if numel(ColorM) == 1
    ColorM = flipud(summer(ColorM+1));
end
H = figure('color','w');
hold on
axis equal
axis off
for i=1:size(D,1)
    cx    = D(i,1);
    cy    = D(i,2);
    theta = D(i,3);
    si    = D(i,4);    
    M     = mat_rot(theta);
    x     = si*[0 1 1 0 0];
    y     = si*[0 0 1 1 0];
    pts   = M*[x;y];
    fill(cx+pts(1,:),cy+pts(2,:),ColorM(D(i,5)+1,:));
    % plot(cx+pts(1,1:2),cy+pts(2,1:2),'r');
end
end