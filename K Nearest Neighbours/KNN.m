clc;
clear all;
k= input("Enter the value of k: ");
class1 = [ 1 2; 3 5;1 1; 5 4 ; 6 2 ; 2.5 3 ; 3 4.5]; % data points of claas1
class2 = [ 7 5; 6 5; 7 3; 6 1; 3 1; 6 6];            % data points of claas2
test_input = input("Enter the value of test_data: ");
 for i= 1:length(class1)
    Square_difference=((class1(i,:)-test_input).^2); 
    Distance(i)=(Square_difference(1,1)+Square_difference(1,2))^0.5;   % distance from test_input
 end
j=i;
for i= 1:length(class2)
    Square_difference=((class2(i,:)-test_input).^2);
    Distance(i+j)=(Square_difference(1,1)+Square_difference(1,2))^0.5;
end
 n= sort(Distance);  % Sorting Distance array
 count_class1=0;
 count_class2=0;
 for i=1:k
     for j=1:length(Distance)
        if(n(i)==Distance(j))
            if(j>length(class1))
               count_class2=count_class2+1;
            else 
               count_class1=count_class1+1;
            end
        end
     end
 end
if(count_class1>count_class2)
    disp("Test Input belongs to class1");
else
    disp("Test Input belongs to class2");
end
figure,     %Ploting Results
u=scatter(class1(:,1),class1(:,2),'o'); hold on
v=scatter(class2(:,1),class2(:,2),'square'); hold on;
th = 0:pi/50:2*pi;
xunit = (n(k)+.1) * cos(th) + test_input(1,1);  % circle for k
yunit =(n(k)+0.1)* sin(th) + test_input(1,2);
plot(xunit, yunit,'r');hold on;
g=scatter(test_input(1,1),test_input(1,2),'*');
legend([u,v,g],'class1','class2','test input');hold off;
