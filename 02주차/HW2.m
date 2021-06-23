% %%HW02_1
% clear all;
% close all;
% clc;
% 
% t=[1:0.01:2*pi];
% 
% figure('Name', 'Graph');
% for f=5:0.1:10;
%     y=sin(f*t);
%     
%     plot(t,y); grid on;
%     xlabel('t');
%     ylabel(['sin(' num2str(f,'%3.1f') 't)']);
%     %pause(0.1)                                 % n�ʵ��� ��Ʈ�� ���� ����
% end

% % %%HW02_2
% % clear all;
% % close all;
% % clc;
% % 
% % sum=0;
% % for n=1:100
% %     sum=sum+n;
% % end
% % disp(sum);

% %%HW02_3
% clear all;
% close all;
% clc;
% 
% for n=2:9
%     for m=1:9
%         table(m,n)=n*m;
%     end
% end
% table(:,2:end)
% figure; mesh(table);

% %%HW02_4
% clear all;
% close all;
% clc;
% 
% n=1;
% sum=0;
% 
% while(n<=100)
%     sum=sum+n;
%     n=n+1;
% end
% disp(sum);

% %%HW02_5
% clear all;
% close all;
% clc;
% 
% Tmax=50;
% dT=0.01;
% t=0;
% 
% index=1;
% 
% while (t<=Tmax)
%     t_array(index)=t;
%     y(index)=sin(t/pi);
%     
%     index=index+1;
%     t=t+dT;
% end
% plot(t_array, y);

%%HW02_6
%1. 1���� n������ 3�� ������� ��
total=0;
n=1000;                     % 1���� 1000����
for i=1:n
    if mod(i,3)==0
        total=total+i;
    else total=total;
    end
end
total

%2. 1���� n���� �Ҽ��� ��� ã�� �˰��� ����
v=[];
n=1000;                     % 1���� 1000����
for i=2:n                   % n���� ���� ���� ��� �������� ��,
    if i==2                 % ������ �������� �ʴ� ���� �Ҽ�
        v=[v i];
    end
    for j=2:i
        if mod(i, j)==0
            break
        elseif j == i-1
            v=[v i];
        end
    end
end
v

primes(n)                   % Ȯ��