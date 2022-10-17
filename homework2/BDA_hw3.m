%% 1
% this creates 1000 uniformly-distributed samples (numbers between zero and one)
T=rand(1,1000);
% plotting them on histogram
h = histogram(T);
% displaying the histogram
disp(h);

%% 2
% this creates 100 uniformly-distributed samples between 0.3 and 0.5
S = 0.3 + 0.2 * rand(100, 1);
% plotting them on histogram
hs = histogram(S);
% displaying the histogram
disp(hs);

%% 3
% given standard deviation of one
sd=1;
% given mean is 0
mean=0;
% generating the 1000 normally distributed samples with above attributes
x=sd*randn(1000,1)+mean;
% plotting them on histogram
g=histogram(x);
% displaying the histogram

%% 4
% given standard deviation of one
sd=1;
% given mean is 0
mean=0;
% generating the 1000 normally distributed samples with above attributes
A = randn(1000,1)*sd + mean; 
%plot histogram after normalization
histogram(A,'Normalization','pdf'); hold on;

%range of x to evaluate through gaussian formula
x = -4:0.1:4; 
% Gaussian curve equation
gaussian = 1/sqrt(2*pi*sd^2)*exp(-1*(x-mean).^2./2*sd^2);
% plot of the gaussian curve 
plot(x,gaussian,'r'); 
% labels of the plot
legend('histogram','gaussian formula')

%% 5 
% part a)
% given p(x) function is as follows
px = @(x) [(x>=0 & x<1) (x>=1 & x<2) (x>=2 & x<3) (x>=3 & x<4)]*[1; 2; 3; 4];
% plot, a rectangle going from x = 0 to x= 4 on the x-axis and from y = 0 to y = 4 on the y-axis
fplot(px,[0,4]); hold on;

% part b)
% sample 1000 points uniformly distributed interval (0,4)
x1 = 0 + 4 * rand(1, 1000) ;
% same for y axis
y1 = 0 + 4 * rand(1, 1000) ;

% plotting
plot(x1, y1, '.')

xlim([0 4]);
ylim([0 4]);

