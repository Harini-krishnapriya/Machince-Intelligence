% Principal component analysis
data_points=randn(70,2);
data_points=data_points';
data_mean=[mean(data_points(1,:)); mean(data_points(2,:))];
uncorrelated_data=data_points-data_mean;
covariance=[0 0; 0 0];
for j=1:10
        covariance=covariance+(uncorrelated_data(:,j))*(uncorrelated_data(:,j))';
end
covariance=covariance/length(data_points)-1;
[eigen_vector eigen_values]= eig(covariance);
c=scatter(uncorrelated_data(1,:),uncorrelated_data(2,:),'filled');hold on
x1=linspace(0,2,5);
y1=(eigen_vector(2,2)/eigen_vector(2,1))*x1;
x2=linspace(-1,0,2);
y2=eigen_vector(1,2)/eigen_vector(1,1)*x2;
a=plot(x1,y1); hold on;
b=plot(x2,y2);hold off
legend([a,b,c],'Principal Component1','Principal Component2', 'Datapoints');
