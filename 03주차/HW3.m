%%연습1
x=linspace(0, 10*pi);
y=sin(x);
z=cos(x);
figure(1);plot3(x,y,z,'r^--')
figure(2);plot3(x,y,z,'b^--')
view(-50,30)

%%연습2
for ii=3:10
ii
pause(0.5)      % 0.5초 일시정지

end

%%연습3
clear ; clf; hold on
nn=10;
xa=linspace(0,0,nn);
ya=linspace(0,1,nn);
xb=linspace(1,1,nn);
yb=linspace(1,0,nn);
plot(xa,ya,'ro')
plot(xb,yb,'bo')
axis image off
for ii=1:nn
    plot([xa(ii) xb(ii)],[ya(ii),yb(ii)],'linewidth',2)
    pause(0.1)
end

%%연습4
clear ; clf; hold on
nn=10;
xa=linspace(0,0,nn);ya=linspace(10,1,nn);
xb=linspace(1,10,nn);yb=linspace(0,0,nn);
plot(xa,ya,'ro')
plot(xb,yb,'bo')
axis image off
for ii=1:nn
    plot([xa(ii) xb(ii)],[ya(ii),yb(ii)],'linewidth',2)
    pause(1)
end

%%연습5
clear ; clf;
x(1)=1;y(1)=0; theta = pi/6;
for ii=1:11
    x(ii+1)= cos(theta)*x(ii)-sin(theta)*y(ii);
    y(ii+1)= sin(theta)*x(ii)+cos(theta)*y(ii);
end
plot(x,y, 'o','markersize',8);axis image;

%연습6
clear ; clf; hold on
nn=11; 
theta=-pi/6;                    % y축을 x축방향으로 30도 회전
xa=linspace(0,0,nn);
ya=linspace(0,1,nn);
xb= cos(theta)*xa-sin(theta)*ya;
yb= sin(theta)*xa+cos(theta)*ya;
plot(xa,ya,'ro')
plot(xb,yb,'bo')
axis image on

%%연습7
clear ; clf; hold on
nn=11; 
theta=-pi/6;
xa=linspace(0,0,nn);
ya=linspace(0,1,nn);
xb= cos(theta)*xa-sin(theta)*ya;
yb= sin(theta)*xa+cos(theta)*ya;
plot(xa,ya,'ro')
plot(xb,yb,'bo')
axis image on
for ii=1:nn
    plot([xa(ii) xb(nn+1-ii)],[ya(ii),yb(nn+1-ii)],'linewidth',2)
    pause(0.1)
end

%%스트링아트
clear ; clf; hold on
theta=2*pi/3;x(1)=1;y(1)=0;
for ii=1:5
    x(ii+1)=cos(theta)*x(ii)-sin(theta)*y(ii);
    y(ii+1)=sin(theta)*x(ii)+cos(theta)*y(ii);
end
plot(x,y); axis image on
nn=20;
for kk=1:3
xa=linspace(x(kk),x(kk+1),nn); ya=linspace(y(kk),y(kk+1),nn);
xb=linspace(x(kk+2),x(kk+3),nn); yb=linspace(y(kk+2),y(kk+3),nn);
plot(xa,ya,'ro');plot(xb,yb,'b*');
    for ii=1:nn
        plot([xa(ii) xb(ii)],[ya(ii),yb(ii)],'linewidth',2)
        pause(0.2)
    end
end