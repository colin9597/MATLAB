%%Cardiod
clear; clf; hold on
n=201;
t=linspace(0,2*pi,n);
x=cos(t);
y=sin(t);
plot(x,y,'o');
axis image off
for i=1:(n-1)/2
    plot([x(2*i-1) x((n-1)/2+i)],[y(2*i-1) y((n-1)/2+i)],'linewidth',1.5)
    plot([x(n-2*(i-1)) x((n+1)/2-i+1)],[y(n-2*(i-1)) y((n+1)/2-i+1)], 'linewidth',1.5)
    pause(0.02)
end

%%Cube
clear; clf; hold on; n=31;
t=linspace(0,1,n);
x=[0 1 1 0 0 1 1 0];
y=[0 0 1 1 0 0 1 1];
z=[0 0 0 0 1 1 1 1];
plot3(x,y,z,'o','linewidth',3);
axis image off
view(120, 30)
pp=[1 2 3 4 5 1 4 8 1 5 6 2 3 4 8 7 2 3 7 6 6 7 8 5];
qq=[2 3 4 1 1 4 8 5 5 6 2 1 4 8 7 3 3 7 6 2 7 8 5 6];
rr=[3 4 1 2 4 8 5 1 6 2 1 5 8 7 3 4 7 6 2 3 8 5 6 7];
for k=1:24
    p=pp(k); q=qq(k); r=rr(k);
    x1=x(p)+(x(q)-x(p))*t; 
    y1=y(p)+(y(q)-y(p))*t; 
    z1=z(p)+(z(q)-z(p))*t; 
    x2=x(q)+(x(r)-x(q))*t; 
    y2=y(q)+(y(r)-y(q))*t; 
    z2=z(q)+(z(r)-z(q))*t;
    for i=1:n
        plot3([x1(i) x2(i)],[y1(i) y2(i)],[z1(i) z2(i)],'k','linewidth',1)
        pause(0.02)
    end
end

%%Flower
clear; clf; hold on; n=21; theta=pi/3;
t=linspace(0,1,n);
x(1)=0;y(1)=0;x(2)=1;y(2)=0;

for i=1:5
    x(i+2)=cos(theta)*x(i+1)-sin(theta)*y(i+1);
    y(i+2)=sin(theta)*x(i+1)+cos(theta)*y(i+1);
end
plot(x,y,'o','linewidth',3); axis image off
pp=[1 2 1 3 1 4 1 5 1 6 1 7];
qq=[2 3 3 4 4 5 5 6 6 7 7 2];
rr=[3 1 4 1 5 1 6 1 7 1 2 1];

for k=1:12
    p=pp(k); q=qq(k); r=rr(k);
    x1=x(p)+(x(q)-x(p))*t;
    y1=y(p)+(y(q)-y(p))*t;
    x2=x(q)+(x(r)-x(q))*t;
    y2=y(q)+(y(r)-y(q))*t;
    for i=1:n
        plot([x1(i) x2(i)],[y1(i) y2(i)],'linewidth',1)
        pause(0.02)
    end
end

%%Hyperboloid
clc; clear; clf; hold on
n=70;
t=linspace(0, 2*pi, n);
xa=cos(t); 
ya=sin(t);
za=zeros(1,n);
s=30;
xb=[xa(s:n) xa(1:s-1)];
yb=[ya(s:n) ya(1:s-1)];
zb=3*ones(1,n);
plot3(xa,ya,za,'o');
plot3(xb,yb,zb,'o');
axis image on
view(0, 10)

for i=1:n
    plot3([xa(i) xb(i)], [ya(i) yb(i)], [za(i) zb(i)],'linewidth',1)
    pause(0.02)
end

%%ThreeLine
clear; clf; hold on
theta=pi/3;
x(1)=1;
y(1)=0;
for i=1:3
    x(i+1)=cos(theta)*x(i)-sin(theta)*y(i);
    y(i+1)=sin(theta)*x(i)+cos(theta)*y(i);
end
plot(x,y); axis image off;
n=20;
xa=linspace(x(1),x(2), n); ya=linspace(y(1),y(2), n);
xb=linspace(x(3),x(4), n); yb=linspace(y(3),y(4), n);
plot(xa,ya,'o'); plot(xb,yb,'o');
for i=1:n
    plot([xa(i) xb(i)], [ya(i) yb(i)],'linewidth',1)
    pause(0.02)
end

%%Hexa
clear; clf; hold on
theta=pi/3;
x(1)=1;
y(1)=0;
for i=1:8
    x(i+1)=cos(theta)*x(i)-sin(theta)*y(i);
    y(i+1)=sin(theta)*x(i)+cos(theta)*y(i);
end
plot(x,y); axis image off;
n=20;
for k=1:6
    xa=linspace(x(k),x(k+1), n); 
    ya=linspace(y(k),y(k+1), n);
    xb=linspace(x(k+2),x(k+3), n); 
    yb=linspace(y(k+2),y(k+3), n);
    plot(xa,ya,'o'); plot(xb,yb,'o');
    for i=1:n
       plot([xa(i) xb(i)], [ya(i) yb(i)],'linewidth',2)
       pause(0.02) 
    end
end