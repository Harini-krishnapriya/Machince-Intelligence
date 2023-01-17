%clear all
data = [ 1 2; 3 5;1 1; 5 4 ; 6 2 ; 2.5 4 ; 3 4.5; 7 5; 6 5; 7 3; 6 1; 3 1; 6 6]; % data points
centriod1 = [2 3];  % Initial Random Centriods
centriod2 = [4 2];
centriod3 = [1 1];
previous_centriod1=0; previous_centriod2=0;
while( previous_centriod1(1,1) ~= centriod1(1,1) || previous_centriod2(1,1) ~= centriod2(1,1))
       previous_centriod1=centriod1;
       previous_centriod2=centriod2;
    for i= 1:length(data)
        difference_square1=((data(i,:)-centriod1).^2); 
        difference_square2=((data(i,:)-centriod2).^2);
        difference_square3=((data(i,:)-centriod3).^2);
        distance1(i)=(difference_square1(1,1)+difference_square1(1,2))^0.5;  
        distance2(i)=(difference_square2(1,1)+difference_square2(1,2))^0.5;
        distance3(i)=(difference_square3(1,1)+difference_square3(1,2))^0.5;  
    end
    distance= [distance1; distance2; distance3];
    distance=distance';
    k1=1; k2=1; k3=1; % For Incrementing index for every iteration 
    for i=1:length(data)
        if (distance(i,1) < distance(i,2) && distance(i,1) < distance(i,3))
            cluster1(k1,:)=data(i,:);
            k1=k1+1;
        elseif (distance(i,2) < distance(i,1) && distance(i,2) < distance(i,3))
            cluster2(k2,:) = data(i,:);
            k2=k2+1;
        else
            cluster3(k3,:) = data(i,:);
            k3=k3+1;
        end
    end
    centriod1 = mean(cluster1);
    centriod2 = mean(cluster2);
    centriod3 = mean(cluster3);
end 
% Ploting Clusters
scatter(cluster1(:,1),cluster1(:,2),'o'); hold on
scatter(centriod1(1,1),centriod1(1,2),'*');
scatter(cluster2(:,1),cluster2(:,2),'square'); hold on
scatter(centriod2(1,1),centriod2(1,2),'*');
scatter(cluster3(:,1),cluster3(:,2),'^'); hold on
scatter(centriod3(1,1),centriod3(1,2),'*'); 
th1 = 0:pi/50:2*pi;
th2 = 0:pi/50:2*pi;
th3 = 0:pi/50:2*pi;
for i= 1:length(cluster1) % Finding Distance of all cluster1 data points from Its centriod
     d11=((cluster1(i,:)-centriod1).^2);
     r11(i)=(d11(1,1)+d11(1,2))^0.5;
end
d11 =sort(r11);
for i= 1:length(cluster2) % Finding Distance of all cluster2 data points from Its centriod
     d22=((cluster2(i,:)-centriod2).^2);
     r22(i)=(d22(1,1)+d22(1,2))^0.5;
end
d22= sort(r22);  
for i= 1:length(cluster3) % Finding Distance of all cluster3 data points from Its centriod
     d33=((cluster3(i,:)-centriod3).^2);
     r33(i)=(d33(1,1)+d33(1,2))^0.5;
end
d33= sort(r33);  
x1 = (d11(length(cluster1))+.1) * cos(th1) + centriod1(1,1);  % circle for cluster1
y1 =(d11(length(cluster1))+0.1)* sin(th1) + centriod1(1,2);
plot(x1, y1,'r');hold on
x2 = (d22(length(cluster2))+.1) * cos(th2) + centriod2(1,1);  % circle for cluster2
y2 =(d22(length(cluster2))+0.1)* sin(th2) + centriod2(1,2);
plot(x2, y2,'r'); hold on;
x3 = (d33(length(cluster3))+.1) * cos(th3) + centriod3(1,1);  % circle for cluster3
y3 =(d33(length(cluster3))+0.1)* sin(th3) + centriod3(1,2);
plot(x3, y3,'r');

    
