%% 1)a)
tic
x=1.0;
sum=0;
for i=1:10
    sum=sum+0.1;
end 
fprintf('value after adding 0.1, 10 times is %0.30f\n',sum);
toc
diff5=x-sum;
fprintf('diff %0.30f\n',diff5);

%% 1)b)
tic 
y = [0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 ]
%z=0.1*ones(1,10);
%sum1=0.1+sum(y);

sumvec = sum(y);
toc
fprintf('On subtracting 1 from variable %0.10f\n',sumvec);
diff=sumvec-1.0;
fprintf('On subtracting 1 from variable %0.30f\n',diff);

%% 1) c)
% the 2nd argument in the function call myCOSINE is the no. of terms in
% taylor series that needs to be taken into account, in our case we take it
% to be 6, for the range [0,pi/2,pi,3*pi/2,2*pi], 8 terms from taylor
% series give almost correct results that is equal to cos(x)

g=input('enter the degree(x) to calculate cosine value\n');
h=myCOSINE(g);
fprintf('COSINE value %f\n',h);



%% 1) d) graph plot of cos(x) and cosine(x)
% Given x value ranges :
%x=[0,pi/2,pi,3*pi/2,2*pi];
x=-2*pi:0.01:2*pi;
   plot(x,cos(x),'-r');hold on;
   plot(x,myCOSINE(x),'-b');
   legend('cos(x)','myCOSINE(x)');
   
   
%% 1) d) second plot of graph difference
 plot(x,cos(x)-myCOSINE(x));
legend('cos(x)-myCOSINE(x)');


%% 1) e)
% part one
y = diceprob(1,6);
fprintf('Probability :%f\n',y);
% part second
y2 = diceprob(2,12);
fprintf('Probability :%f\n',y2);
% part three
y3 = diceprob(3,18);
fprintf('Probability :%f\n',y3);
