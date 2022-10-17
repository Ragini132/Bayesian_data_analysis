
%%%% FUNCTION HEADER  %%%%
%
% Usage:
%           function y = diceprob(a,b)
%           
% Where:
%           a  = no. of sixes
%           b = no. of six-sided dice being rolled
%
% Output: gives us the probability of getting atleast (a) on rolling
% (b)six-sided dice.
%
% Created By: 
%           RAGINI RANI
%           09/20/2022
%

function y = diceprob(a,b)
% initial variable y
y=0;
% initial variable sum
sum=0;
% while loop to calculate the probability
% a is the loop variable
while a<=b
    n=b-a;
    % adding terms to sum 
    sum=sum+(factorial(b)/(factorial(n)*factorial(a)))*5^(n);
    % increment the value of a in each loop
    a=a+1;
end
% possible total 6 that one could get
total_outcomes=6^(b);
% probability 
y=sum/total_outcomes;
end